using RegistartionForm.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistartionForm
{
    public partial class Products : System.Web.UI.Page
    {
        List<Product> products = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session Creation
                Session["MyList"] = products;

                //Product 1
                Product product1 = new Product();
                product1.ProductID = 1;
                product1.ProductName = "Lenova Laptop";

                //Product 2
                Product product2 = new Product();
                product2.ProductID = 2;
                product2.ProductName = "Dell Laptop";

                //Product 3
                Product product3 = new Product();
                product3.ProductID = 3;
                product3.ProductName = "Asus Laptop";

                products.Add(product1);
                products.Add(product2);
                products.Add(product3);
                DropDownList1.DataSource = products;
                DropDownList1.DataTextField = "ProductName";
                DropDownList1.DataValueField = "ProductName";
                DropDownList1.DataBind();
            }


        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            List<Product> products = (List<Product>)Session["MyList"];
            Product product = new Product();
            product.ProductName = DropDownList1.SelectedValue;
            products.Add(product);
            Session["MyList"] = products;
            Response.Redirect("Cart.aspx");
        }
    }
}