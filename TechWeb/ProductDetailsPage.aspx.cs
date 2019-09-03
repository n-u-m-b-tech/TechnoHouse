using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class ProductDetailsPage : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

            String proId = Request.QueryString["ID"];

            int ID = Convert.ToInt32(proId);
            var product = client.productinfor_retrieval_ID(ID);
            Image.InnerHtml = "<img src='" + product.image_url + "' width='300' height='300' alt='' />";
            proname.Text = product.name;
            price.Text = Convert.ToString(product.price);
            desrcipt.Text = product.description;
        }
         
               
        protected void BtnAddtoCart_Click(object sender, EventArgs e)
        {

        }
    }
}