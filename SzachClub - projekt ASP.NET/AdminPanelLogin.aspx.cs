using System;
using System.Web.Security;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace SzachClub___projekt_ASP.NET
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn(object sender, EventArgs e)
        {

            if (((txtLogin.Text == "xazai") && (txtPasswd.Text == "admin123")) || 
                ((txtLogin.Text == "bedi2115") && (txtPasswd.Text == "admin2115")) || 
                ((txtLogin.Text == "wojtek96") && (txtPasswd.Text == "yokohama03")))
            {
                FormsAuthentication.RedirectFromLoginPage
                    (txtLogin.Text, true);

            }
            else
            {
                LabelMessage.Text = "Błędne dane.";
            }
            
            
        }
    }
}