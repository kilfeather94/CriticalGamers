using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CriticalGamers.Models;
using System.Web.ModelBinding;


namespace CriticalGamers
{
    public partial class Retro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Platform> GetPlatforms()
        {
            var db = new CriticalGamers.Models.GameContext();
            IQueryable<Platform> query = db.Platforms;
            return query;
        }

      public IQueryable<RetroGame> GetRetroGames([QueryString("id")] int?platformId)
        {
            var _db = new CriticalGamers.Models.GameContext();
            IQueryable<RetroGame> query = _db.RetroGames;
          if (platformId.HasValue && platformId > 0)
          {
              query = query.Where(r => r.PlatformID == platformId);
          }
          return query;
        }
    }
}