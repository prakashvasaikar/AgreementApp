using AgreementApp_DL;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace AgreementApp_BL.Repository
{
    public interface IAgreementRepository
    {
        Task<ResponseModel<SP_AgreementListModel>> agreementList();
        List<SelectListItem> getProductGroup();
        Task<IEnumerable<ProductMasterModel>> getProductListByProductGroup(int paramProductGroupId);
        Task<ProductMasterModel> getProductPriceByProduct(int paramProductGroupId);
        Task<AgreementDetailModel> getInfoById(int paramAgreementId);
        Task<ResponseModel<AgreementDetailModel>> deleteInfoById(int paramAgreementID);
        Task<ResponseModel<AgreementDetailModel>> saveAgreement(AgreementDetailModel paramAgreementDetailModel);
    }
    public class AgreementRepository : IAgreementRepository
    {
        private AgreementAppDBContext _dbContext;
        public AgreementRepository(AgreementAppDBContext DBContext)
        {
            _dbContext = DBContext;
        }
        public async Task<ResponseModel<SP_AgreementListModel>> agreementList()
        {
            ResponseModel<SP_AgreementListModel> _ObjResponseModel;
            try
            {
                var _ObjRegistrationModel = await _dbContext.SP_AgreementList.FromSqlRaw("Exec SP_AgreementList").ToListAsync();
                return _ObjResponseModel = new ResponseModel<SP_AgreementListModel>()
                {
                    ListResult = _ObjRegistrationModel
                };

            }
            catch (Exception ex)
            {
                return _ObjResponseModel = new ResponseModel<SP_AgreementListModel>()
                {
                    Message = ex.Message,
                    Result = HelperMessage.ResponceResult.ERROR,
                    Status = (int)HttpStatusCode.BadRequest
                };
            }
        }
        public List<SelectListItem> getProductGroup()
        {
            List<SelectListItem> item = new List<SelectListItem>();
            item = _dbContext.tblProductGroupMaster.Where(x => x.Active == true).Select(x => new SelectListItem()
            {
                Value = x.Id.ToString(),
                Text = x.GroupCode + " - " + x.GroupDescription,
            }).ToList();
            return item;
        }
        public async Task<IEnumerable<ProductMasterModel>> getProductListByProductGroup(int paramProductGroupId)
        {
            return await _dbContext.tblProductMaster.Where(s => s.refID_ProductGroupMaster == paramProductGroupId && s.Active == true).ToListAsync();
        }
        public async Task<ProductMasterModel> getProductPriceByProduct(int paramProductId)
        {
            return await _dbContext.tblProductMaster.Where(s => s.Id == paramProductId).FirstOrDefaultAsync();
        }
        public async Task<AgreementDetailModel> getInfoById(int paramAgreementId)
        {
            return await _dbContext.tblAgreementDetail.Where(x => x.Id == paramAgreementId).FirstOrDefaultAsync();
        }
        public async Task<ResponseModel<AgreementDetailModel>> deleteInfoById(int paramAgreementID)
        {
            ResponseModel<AgreementDetailModel> _ObjResponseModel;
            AgreementDetailModel objAgreementDetailModel = new AgreementDetailModel();
            objAgreementDetailModel = await _dbContext.tblAgreementDetail.Where(x => x.Id == paramAgreementID).FirstOrDefaultAsync();
            if (objAgreementDetailModel != null)
            {
                _dbContext.tblAgreementDetail.Remove(objAgreementDetailModel);
                _dbContext.SaveChanges();
            }
            return _ObjResponseModel = new ResponseModel<AgreementDetailModel>()
            {
                Result = HelperMessage.ResponceResult.OK,
            };
        }
        public async Task<ResponseModel<AgreementDetailModel>> saveAgreement(AgreementDetailModel paramAgreementDetailModel)
        {
            ResponseModel<AgreementDetailModel> _objResponseModel = new ResponseModel<AgreementDetailModel>();
            try
            {
                if (paramAgreementDetailModel.Id == 0)
                {
                    AgreementDetailModel _objAgreementDetailModel = new AgreementDetailModel();
                    _objAgreementDetailModel.UserId = paramAgreementDetailModel.UserId;
                    _objAgreementDetailModel.refID_ProductGroupMaster = paramAgreementDetailModel.refID_ProductGroupMaster;
                    _objAgreementDetailModel.refID_ProductMaster = paramAgreementDetailModel.refID_ProductMaster;
                    _objAgreementDetailModel.EffectiveDate = paramAgreementDetailModel.EffectiveDate;
                    _objAgreementDetailModel.ExpirationDate = paramAgreementDetailModel.ExpirationDate;
                    _objAgreementDetailModel.ProductPrice = paramAgreementDetailModel.ProductPrice;
                    _objAgreementDetailModel.NewPrice = paramAgreementDetailModel.NewPrice;
                    _objAgreementDetailModel.Active = paramAgreementDetailModel.Active;
                    _dbContext.tblAgreementDetail.Add(_objAgreementDetailModel);
                    await _dbContext.SaveChangesAsync();

                    _objResponseModel.Result = HelperMessage.ResponceResult.OK;
                    _objResponseModel.Message = HelperMessage.SaveSuccessfully;

                }
                else
                {
                    var objUpdateAgreementDetailModel = _dbContext.tblAgreementDetail.FirstOrDefault(i => i.Id == paramAgreementDetailModel.Id);
                    objUpdateAgreementDetailModel.UserId = paramAgreementDetailModel.UserId;
                    objUpdateAgreementDetailModel.refID_ProductGroupMaster = paramAgreementDetailModel.refID_ProductGroupMaster;
                    objUpdateAgreementDetailModel.refID_ProductMaster = paramAgreementDetailModel.refID_ProductMaster;
                    objUpdateAgreementDetailModel.EffectiveDate = paramAgreementDetailModel.EffectiveDate;
                    objUpdateAgreementDetailModel.ExpirationDate = paramAgreementDetailModel.ExpirationDate;
                    objUpdateAgreementDetailModel.ProductPrice = paramAgreementDetailModel.ProductPrice;
                    objUpdateAgreementDetailModel.NewPrice = paramAgreementDetailModel.NewPrice;
                    objUpdateAgreementDetailModel.Active = paramAgreementDetailModel.Active;

                    await _dbContext.SaveChangesAsync();
                    _objResponseModel.Result = HelperMessage.ResponceResult.OK;
                    _objResponseModel.Message = HelperMessage.UpdateSuccessfully;

                }
            }
            catch (Exception ex)
            {
                _objResponseModel.Result = HelperMessage.ResponceResult.ERROR;
            }
            return _objResponseModel;
        }
    }
}
