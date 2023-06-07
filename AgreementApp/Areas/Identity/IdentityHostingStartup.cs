using System;
using AgreementApp.Areas.Identity.Data;
using AgreementApp.Data;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(AgreementApp.Areas.Identity.IdentityHostingStartup))]
namespace AgreementApp.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<AgreementAppContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("AgreementAppContextConnection")));

                services.AddDefaultIdentity<AgreementAppUser>(options => options.SignIn.RequireConfirmedAccount = true)
                    .AddEntityFrameworkStores<AgreementAppContext>();
            });
        }
    }
}