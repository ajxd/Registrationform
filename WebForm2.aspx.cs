using RegistartionForm.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistartionForm
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var products = Session["MyList"] as List<Product>;
            foreach (var item in products)
            {
                ListBox1.Items.Add(item.ProductName);
            }

        }
    }
}