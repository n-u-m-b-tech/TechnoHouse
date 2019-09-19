using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class AddProduct : System.Web.UI.Page
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
            pro.brand = brand.Value;
            pro.category = category.Value;
            pro.price = Convert.ToDouble(price.Value);
            pro.manufacture = manufacturer.Value;
            pro.quantity = Convert.ToInt32(quantity.Value);
            pro.discount = Convert.ToDecimal(discount.Value);
            pro.image_url = url.Value;
            pro.active = Convert.ToChar(active.Value);

            if (client.AddProduct(pro) == 0)
            {

                Response.Redirect("RegisterProduct.aspx");
            }
            else
            {
                Response.Redirect("EditProduct.aspx");
            }
        }
    }
}