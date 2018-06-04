using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CriticalGamers.Startup))]
namespace CriticalGamers
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
