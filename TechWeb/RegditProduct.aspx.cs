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

            ProductD pro = new ProductD
            {
                name = name.Value,
                description = description.Value,
                brand = brand.Value,
                category = category.Value,
                price = Convert.ToDouble(price.Value),
                manufacture = manufacturer.Value,
                quantity = Convert.ToInt32(quantity.Value),
                discount = 0
                
            };

            int status = client.AddProduct(pro);

            if (status.Equals(0))
            {
                Response.Redirect("EditProduct.aspx");
            }
            else
            {
                Response.Redirect("#");
            }
        }

    }
}