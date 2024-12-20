using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistartionForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] country = new string[] { "India", "UK", "Germany", "China", "USA", "Australia" };
                ddlCountry.DataSource = country;
                ddlCountry.DataBind();
            }

            lblSubTitle.Text = "Welcome, " + Request.QueryString["Name"] + " to the Registration Form";
        }

        protected void btnSubmitClick(object sender, EventArgs e)
        {
            lblMesssage.Text = "Welcome, " + txtFirstName.Text + " " + txtLastName.Text;

        }

        protected void countrySelection(object sender, EventArgs e)
        {
            lblMesssage.Text = "Selected country is, " + ddlCountry.SelectedValue;
        }

        protected void dobSelection(object sender, EventArgs e)
        {
            lblMesssage.Text = "Date of Birth is, " + Calendar1.SelectedDate.ToString("dd-MMM-yyyy"); ;
        }

        protected void btnAboutUs_Click(object sender, EventArgs e)
        {
            HttpCookie httpCookie = new HttpCookie("UserName");
            httpCookie.Value = txtFirstName.Text + " " + txtLastName.Text;
            httpCookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(httpCookie);
            Response.Redirect("AboutUs.aspx");
        }

        protected void btnContactUs_Click(object sender, EventArgs e)
        {
            Server.Transfer("ContactUs.aspx");
        }
    }
}