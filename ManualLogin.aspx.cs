using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistartionForm
{
    public partial class ManualLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btmSubmit_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "Reshma" && txtPassword.Text == "Test12345")
            {
                Response.Redirect("WebForm1.aspx?Name=" + txtUsername.Text);
            }
        }
    }
}