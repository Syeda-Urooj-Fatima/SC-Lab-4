using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UserInformation.Startup))]
namespace UserInformation
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
