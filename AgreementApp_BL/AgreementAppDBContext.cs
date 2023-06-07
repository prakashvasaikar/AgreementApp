using AgreementApp_DL;
using Microsoft.EntityFrameworkCore;
using System;

namespace AgreementApp_BL
{
    public class AgreementAppDBContext : DbContext
    {
        public AgreementAppDBContext(DbContextOptions<AgreementAppDBContext> options) : base(options)
        {

        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
        public DbSet<AgreementDetailModel> tblAgreementDetail { get; set; }
        public DbSet<ProductGroupMasterModel> tblProductGroupMaster { get; set; }
        public DbSet<ProductMasterModel> tblProductMaster { get; set; }
        public DbSet<SP_AgreementListModel> SP_AgreementList { get; set; }
    }
}
