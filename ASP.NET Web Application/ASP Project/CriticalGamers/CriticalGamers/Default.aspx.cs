using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace CriticalGamers
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }
        }



        


        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        private void SetImageUrl()
        {
            if(ViewState["ImageDisplayed"] == null)
            {
                Image1.ImageUrl = "~/Screenshots/1.jpg";
                ViewState["ImageDisplayed"] = 1;
                Label1.Text = "Displaying Image  - 1";
            }
            else
            {
                  int i = (int)ViewState["ImageDisplayed"];
                  if (i == 16)
                  {
                      Image1.ImageUrl = "~/Screenshots/1.jpg";
                      ViewState["ImageDisplayed"] = 1;
                      Label1.Text = "Displaying Image  - 1";
                  }

                  else
                  {

                      i = i + 1;
                      Image1.ImageUrl = "~/Screenshots/" + i.ToString() + ".jpg";
                      ViewState["ImageDisplayed"] = i;
                      Label1.Text = "Displaying Image  - " + i.ToString();
                  }
            }


            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Timer1.Enabled)
            {
                Timer1.Enabled = false;
                ImageButton1.ImageUrl = "~/Content/play.png";
            }
            else
            {
                Timer1.Enabled = true;
                ImageButton1.ImageUrl = "~/Content/stop.png";
            }
        }



       
        }
    }
