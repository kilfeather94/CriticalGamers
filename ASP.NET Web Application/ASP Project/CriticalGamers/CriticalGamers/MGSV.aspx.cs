using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CriticalGamers.Models;



namespace CriticalGamers
{
    public partial class MGSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public IQueryable<MGSVGame> GetMGSVGame()
        {
            var _db = new CriticalGamers.Models.GameContext();
            IQueryable<MGSVGame> query = _db.MGSVGame;
            return query;
        }



        


       
    }
}