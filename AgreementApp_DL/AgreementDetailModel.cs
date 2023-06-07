using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgreementApp_DL
{
    [Table("tblAgreementDetail")]
    public class AgreementDetailModel
    {
        [Key]
        public int Id { get; set; }
        public string UserId { get; set; }
        public int refID_ProductGroupMaster { get; set; }
        public int refID_ProductMaster { get; set; }
        public DateTime EffectiveDate { get; set; }
        public DateTime ExpirationDate { get; set; }
        public decimal ProductPrice { get; set; }
        public decimal NewPrice { get; set; }
        public bool Active { get; set; }
    }
}
