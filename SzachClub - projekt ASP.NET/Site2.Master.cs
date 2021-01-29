using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SzachClub___projekt_ASP.NET
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Context.User.Identity.Name.Length == 0)
            {
                LoginViewDiv.Visible = false;
                LinkView.Visible = true;
            }
            else
            {
                LinkView.Visible = false;
                LoginViewDiv.Visible = true;
                UserName.Text = Context.User.Identity.Name;
            }

            
            

        }
        protected void LogoutBtn(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("HomePage.aspx");
        }

    }
}