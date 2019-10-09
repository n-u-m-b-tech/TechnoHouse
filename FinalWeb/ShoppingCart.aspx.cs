using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        int userId;
        String display = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            display += "<table class='table-shopping-cart'>";
            display += "<tr class='table-head'>";
            display += "<th class='column-1'> Image</th>";
            display += "<th class='column-2'>Product Name</th>";
            display += "<th class='column-3'>Product Description</th>";
            display += "<th class='column-4'>Price</th>";
            display += "<th class='column-5 p-l-70'>Quantity</th>";
            display += "<th class='column-6'>Total</th>";
            display += "</tr>";
            if (Session["userID"] != null)
            {
                userId = Convert.ToInt32(Session["userID"]);
                var cart = client.getUser_Cart(userId);

                if (cart != null)
                {
                    foreach (CartClass c in cart)
                    {
                        display += "<tr class='table-row'>";
                        display += "<td class='column-1'>";
                        display += "<div class='cart-img-product b-rad-4 o-f-hidden'>";
                        display += "<img src = 'images/item-05.jpg' alt='IMG-PRODUCT'>";
                        display += "</div>";
                        display += "</td>";
                        display += "<td class='column-2'>"+c.productName+"</td>";
                        display += "<td class='column-3'>"+c.productName+"</td>";
                        display += "<td class='column-4'>"+c.unit+"</td>";
                        display += "<td class='column-5'>";
                        display += "<div class='flex-w bo5 of-hidden w-size17'>";
                        display += "<button class='btn-num-product-down color1 flex-c-m size7 bg8 eff2'>";
                        display += "<i class='fs-12 fa fa-minus' aria-hidden='true'></i></button>";
                        display += "<input class='size8 m-text18 t-center num-product' type='number' name='num-product2' value='"+c.Qty+"'>";
                        display += "<button class='btn-num-product-up color1 flex-c-m size7 bg8 eff2'>";
                        display += "<i class='fs-12 fa fa-plus' aria-hidden='true'></i>";
                        display += "</button>";
                        display += "</div>";
                        display += "</td>";
                        display += "<td class='column-6'>"+c.Total+"</td>";
                        display += "</tr>";
                    }
                }
            }
                        display += "</table>";
                        shopcart.InnerHtml = display;
        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckOut.aspx");
        }
    }
}
