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
    public partial class RetroInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<RetroGame> GetRetroGames([QueryString("retrogameID")] int?retrogameId)
        {
            var db = new CriticalGamers.Models.GameContext();
            IQueryable<RetroGame> query = db.RetroGames;
            if (retrogameId.HasValue && retrogameId > 0)
            {
                query = query.Where(r => r.RetroGameID == retrogameId);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}