using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AgreementApp_DL
{
    [Table("tblProductMaster")]
    public class ProductMasterModel
    {
        [Key]
        public int Id { get; set; }
        public int refID_ProductGroupMaster { get; set; }
        public string ProductDescription { get; set; }
        public string ProductNumber { get; set; }
        public decimal Price { get; set; }
        public bool Active { get; set; }
    }
}
