using System.IO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using CriticalGamers.Models;



namespace CriticalGamers.Account
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(MapPath("~/ProfilePictures/" + FileUpload1.FileName));
                imgViewFile.ImageUrl = "~/ProfilePictures/" + FileUpload1.FileName;
            }
        }

   

    }
}