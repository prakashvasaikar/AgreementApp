using AgreementApp_BL;
using AgreementApp_BL.Repository;
using AgreementApp_DL;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace AgreementApp.Controllers
{
    public class AgreementController : Controller
    {
        private readonly IAgreementRepository _IAgreementRepository;
        private AgreementAppDBContext _dbContext;
        public AgreementController(IAgreementRepository paramAgreementRepository, AgreementAppDBContext DBContext)
        {
            _IAgreementRepository = paramAgreementRepository;
            _dbContext = DBContext;
        }
        public IActionResult Index()
        {
            return View();
        }
        public async Task<ActionResult> LoadAgreementList()
        {
            try
            {
                ResponseModel<SP_AgreementListModel> _ResponseModel;
                _ResponseModel = await _IAgreementRepository.agreementList();
                var draw = Request.Form["draw"].FirstOrDefault();
                var start = Request.Form["start"].FirstOrDefault();
                var length = Request.Form["length"].FirstOrDefault();
                var sortColumn = Request.Form["columns[" + Request.Form["order[0][column]"].FirstOrDefault() +
                                              "][name]"].FirstOrDefault();
                var sortColumnDirection = Request.Form["order[0][dir]"].FirstOrDefault();
                var searchValue = Request.Form["search[value]"].FirstOrDefault();
                int pageSize = length != null ? Convert.ToInt32(length) : 0;
                int skip = start != null ? Convert.ToInt32(start) : 0;
                int recordsTotal = 0;
                var customerData = (from tempcustomer in _ResponseModel.ListResult select tempcustomer);
                if (!(string.IsNullOrEmpty(sortColumn) && string.IsNullOrEmpty(sortColumnDirection)))
                {
                    customerData = customerData.OrderBy(x => x.ProductGroupDescription.Contains(sortColumn + " " + sortColumnDirection));
                }
                if (!string.IsNullOrEmpty(searchValue))
                {
                    customerData = customerData.Where(m => m.ProductGroupDescription.ToLower().Contains(searchValue)
                                        || m.ProductDescription.ToLower().ToString().Contains(searchValue)
                                        || m.EffectiveDate.ToLower().Contains(searchValue)
                                        || m.ExpirationDate.ToLower().Contains(searchValue)
                                        );
                }
                if (sortColumn == "ProductGroupDescription")
                {
                    customerData = sortColumnDirection == "asc" ? customerData.OrderBy(c => c.ProductGroupDescription) : customerData.OrderByDescending(c => c.ProductGroupDescription);
                }
                else if (sortColumn == "ProductDescription")
                {
                    customerData = sortColumnDirection == "asc" ? customerData.OrderBy(c => c.ProductDescription) : customerData.OrderByDescending(c => c.ProductDescription);
                }
                else if (sortColumn == "EffectiveDate")
                {
                    customerData = sortColumnDirection == "asc" ? customerData.OrderBy(c => c.EffectiveDate) : customerData.OrderByDescending(c => c.EffectiveDate);
                }
                else if (sortColumn == "ExpirationDate")
                {
                    customerData = sortColumnDirection == "asc" ? customerData.OrderBy(c => c.ExpirationDate) : customerData.OrderByDescending(c => c.ExpirationDate);
                }
                recordsTotal = customerData.Count();
                var data = customerData.Skip(skip).Take(pageSize).ToList();
                var jsonData = new
                {
                    draw = draw,
                    recordsFiltered = recordsTotal,
                    recordsTotal = recordsTotal,
                    data = data
                };
                return Ok(jsonData);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public async Task<ActionResult> AddAgreement(int paramAgreementID)
        {
            ViewBag.vbProductGroup = _IAgreementRepository.getProductGroup();
            AgreementDetailModel _ObjAgreementDetailModel;
            if (paramAgreementID > 0)
            {
                _ObjAgreementDetailModel = await _IAgreementRepository.getInfoById(paramAgreementID);
            }
            else
            {
                _ObjAgreementDetailModel = new AgreementDetailModel();
                _ObjAgreementDetailModel.EffectiveDate = DateTime.Now;
                _ObjAgreementDetailModel.ExpirationDate = DateTime.Now;
            }
            return PartialView("_AgreementManagePartialView", _ObjAgreementDetailModel);
        }
        public JsonResult GetProductListByProductGroup(int paramProductGroupId)
        {
            var productList = _IAgreementRepository.getProductListByProductGroup(paramProductGroupId).Result;
            return Json(productList);
        }
        public JsonResult GetProductPriceByProduct(int paramProductId)
        {
            ProductMasterModel ObjProductMasterModel = _IAgreementRepository.getProductPriceByProduct(paramProductId).Result;
            return Json(new { productPrice= ObjProductMasterModel.Price });
        }
        [HttpPost]
        public async Task<ActionResult> SaveAgreement(AgreementDetailModel objAgreementDetailModel)
        {
            ResponseModel<AgreementDetailModel> _objResponseModel;
            try
            {
                if (ModelState.IsValid)
                {
                }
                objAgreementDetailModel.UserId = HttpContext.Session.GetString("UserId");
                _objResponseModel = await _IAgreementRepository.saveAgreement(objAgreementDetailModel);
                return Json(_objResponseModel);


            }
            catch (Exception ex)
            {
                _objResponseModel = new ResponseModel<AgreementDetailModel>();
                _objResponseModel.Message = ex.Message;
                _objResponseModel.Status = (int)HttpStatusCode.BadRequest;
                _objResponseModel.Result = HelperMessage.ResponceResult.ERROR;
                return Json(_objResponseModel);
            }
        }
        public async Task<ActionResult> DeleteAgreement(int paramId)
        {
            ResponseModel<AgreementDetailModel> _objResponseModel;
            _objResponseModel = await _IAgreementRepository.deleteInfoById(paramId);
            return Json(_objResponseModel);
        }

    }
}
