using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CriticalGamers.Models;

namespace CriticalGamers
{
    public partial class TLOU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<TLOUGame> GetTLOUGame()
        {
            var _db = new CriticalGamers.Models.GameContext();
            IQueryable<TLOUGame> query = _db.TLOUGame;
            return query;
        }
    }
}