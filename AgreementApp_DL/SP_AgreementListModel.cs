using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgreementApp_DL
{
    public class SP_AgreementListModel
    {
        [Key]
        public int Id { get; set; }
        public string UserId { get; set; }
        public string ProductGroupDescription { get; set; }
        public string ProductDescription { get; set; }
        public string EffectiveDate { get; set; }
        public string ExpirationDate { get; set; }
        public decimal ProductPrice { get; set; }
        public decimal NewPrice { get; set; }
        public bool Active { get; set; }
    }
}
