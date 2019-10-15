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
        double subtotal= 0.00;
        int cartID;
        protected void Page_Load(object sender, EventArgs e)
        {
            display += "<table class='table-shopping-cart'>";
            display += "<tr class='table-head'>";
            display += "<th class='column-1'>Remove</th>";
            display += "<th class='column-2'>Image</th>";
            display += "<th class='column-3'>Product Name</th>";
            display += "<th class='column-4'>Product Description</th>";
            display += "<th class='column-5'>Price</th>";
            display += "<th class='column-6'>Quantity</th>";
            display += "<th class='column-7'>Total</th>";
            display += "</tr>";
            if (Session["userID"] != null)
            {
                userId = Convert.ToInt32(Session["userID"]);
                var cart = client.getUser_Cart(userId);

                if (cart != null)
                {
                    foreach (CartClass c in cart)
                    {
                        subtotal += c.Total;
                        cartID =c.CartId;
                        display += "<tr class='table-row'>";
                        display += "<td class='column-1>";
                        //    display += "<a href='Add.aspx?ID="+c.productId+ "@Remove" + "'><button class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'><i class='fs-12 fa fa-minus' aria-hidden='true'></i></button></a>";
                        display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                        display += "<a href='Add.aspx?ID=" + c.productId+ "@Remove" + "'class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'><i class='fs-12 fa fa-minus' aria-hidden='true'></i></a>";
                        display += "</div>";
                        display += "</td>";
                        display += "<td class='column-2'>";
                        display += "<div class='cart-img-product b-rad-4 o-f-hidden'>";
                        display += "<img src ='" + c.image_url + "' alt='IMG-PRODUCT'>";
                        display += "</div>";
                        display += "</td>";
                        display += "<td class='column-3'>" + c.productName + "</td>";
                        display += "<td class='column-4'>" + c.productName + "</td>";
                        display += "<td class='column-5'>" + Math.Round(c.unit,2) + "</td>";
                        display += "<td class='column-6'>"; 
                        display += "<div class='flex-w bo5 of-hidden w-size17'>";
                        display += "<a href='Add.aspx?ID="+c.productId+"@Increase"+"' class='btn-num-product-down color1 flex-c-m size7 bg8 eff2'>";
                        display += "<i class='fs-12 fa fa-minus' aria-hidden='true'></i></a>";
                        display += "<input class='size8 m-text18 t-center num-product' type='number' name='num-product2' value='" + 1 + "'>";
                        display += "<a href='Add.aspx?ID=" + c.productId + "@Decrease" + "' class='btn-num-product-up color1 flex-c-m size7 bg8 eff2'>";
                        display += "<i class='fs-12 fa fa-plus' aria-hidden='true'></i>";
                        display += "</a>";
                        display += "</div>";
                        display += "</td>";
                        display += "<td class='column-7'>" + c.Total + "</td>";
                        display += "</tr>";
                       
                    }
                }
            }
                        display += "</table>";
                        shopcart.InnerHtml = display;
            display = "";
            display += "<span class='s-text18 w-size19 w-full-sm'>Subtotal:</span>";
			display += "<span class='m-text21 w-size20 w-full-sm'>"+subtotal+"</span>";
            total.InnerHtml = display;
        }               

        protected void CheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckOut.aspx");
        }
    }
}
