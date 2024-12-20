using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistartionForm
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // lblMessage.Text = ", " + Request.QueryString["firstname"] + " " + Request.QueryString["lastname"];
            if (Request.Cookies["UserName"] != null)
            {
                lblMessage.Text = Request.Cookies["UserName"].Value;
            }
        }
    }
}