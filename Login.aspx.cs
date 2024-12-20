using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistartionForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginForm_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (loginForm.UserName=="Reshma" && loginForm.Password == "Test12345")
            {
                Response.Redirect("WebForm1.aspx?Name=" + loginForm.UserName);
            }
        }
    }
}