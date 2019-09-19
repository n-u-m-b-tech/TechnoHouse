using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class EditProduct : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

           String proId = Request.QueryString["ID"];


            int ID = Convert.ToInt32(proId);
            String display = "";
            var product = client.productinfor_retrieval_ID(ID);

            display += "<span class='image'>";
            display += "<img src='" + product.image_url + "' width='300' height='300' alt='' />";
            display += "</span>";
            Image.InnerHtml = display;

            url.Value = product.image_url;
            name.Value = product.name;
            description.Value = product.description;
            price.Value = Convert.ToString(product.price);
            quantity.Value = Convert.ToString(product.quantity);
            category.Value = product.category;
            active.Value = Convert.ToString(product.active);
            brand.Value = product.brand;
            manufacturer.Value = product.manufacture;
            discount.Value = Convert.ToString(product.discount);
            //Image_url.Value = product.image_url;

        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            ProductD product = new ProductD
            {
                image_url = url.Value,
                name = name.Value,
                description = description.Value,
                price = Convert.ToDouble(price.Value),
                quantity = Convert.ToInt32(quantity.Value),
                category = category.Value,
                active = Convert.ToChar(active.Value),
                brand = brand.Value,
                manufacture = manufacturer.Value,
                discount = Convert.ToDecimal(discount.Value)

            };

            String proId = Request.QueryString["ID"];


            int ID = Convert.ToInt32(proId);
            if (client.EditProduct(product, ID).Equals(0))
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("EditProduct.aspx?ID=" + ID);
            };

        }
    }
}