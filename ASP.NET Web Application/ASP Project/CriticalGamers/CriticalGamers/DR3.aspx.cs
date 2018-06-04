using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CriticalGamers.Models;

namespace CriticalGamers
{
    public partial class DR3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<DR3Game> GetDR3Game()
        {
            var _db = new CriticalGamers.Models.GameContext();
            IQueryable<DR3Game> query = _db.DR3Game;
            return query;
        }
    }
}