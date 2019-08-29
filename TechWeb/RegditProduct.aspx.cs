using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class EditProduct : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {

            ProductD pro = new ProductD();

            pro.name = name.Value;
            pro.description = description.Value;
            pro.price = Convert.ToDouble(price.Value);
            pro.quantity = Convert.ToInt32(quantity.Value);
            pro.category = category.Value;
            pro.active = Convert.ToChar(active.Value);
            pro.brand = brand.Value;
            pro.manufacture = manufacturer.Value;
            pro.discount = 0;
  

            if (client.AddProduct(pro) == 0)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("EditProduct.aspx");
            }
        }

    }
}