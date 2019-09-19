using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            String proId = Request.QueryString["ID"];

            int ID = Convert.ToInt32(proId);
            var product = client.productinfor_retrieval_ID(ID);
            //Image.InnerHtml = "<img src='" + product.image_url + "' width='300' height='300' alt='' />";
            //proname.Text = product.name;
            //price.Text = Convert.ToString(product.price);
            //desrcipt.Text = product.description;
        }
        /*
        protected void BtnAddToCart_Click(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                String proId = Request.QueryString["ID"];
                int ID = Convert.ToInt32(proId);
                if (!qty.Value.Equals(""))
                {
                    int Qty = Convert.ToInt32(qty.Value);
                    ProductD pro = client.productinfor_retrieval_ID(ID);
                    int userId = Convert.ToInt32(Session["userID"]);
                    client.Add_to_Cart(pro, userId, Qty);
                    Response.Redirect("NewCartPage.aspx?ID=" + ID);
                }
                else
                {
                    int Qty = 1;
                    ProductD pro = client.productinfor_retrieval_ID(ID);
                    int userId = Convert.ToInt32(Session["userID"]);
                    client.Add_to_Cart(pro, userId, Qty);
                    Response.Redirect("NewCartPage.aspx?ID=" + ID);
                }
            }
        }*/
    }
}