using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CriticalGamers.Models;

namespace CriticalGamers
{
    public partial class IF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        public IQueryable<IFGame> GetIFGame()
        {
            var _db = new CriticalGamers.Models.GameContext();
            IQueryable<IFGame> query = _db.IFGame;
            return query;
        }
    }
}