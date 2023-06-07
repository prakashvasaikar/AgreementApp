using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgreementApp_DL
{
    [Table("tblProductGroupMaster")]
    public class ProductGroupMasterModel
    {
        [Key]
        public int Id { get; set; }
        public string GroupDescription { get; set; }
        public string GroupCode { get; set; }
        public bool Active { get; set; }

    }
}
