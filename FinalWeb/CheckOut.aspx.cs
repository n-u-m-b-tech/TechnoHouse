using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;


namespace FinalWeb
{
    public partial class CheckOut : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        String display = "";
        double total = 0;
        double subtotal = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            display += " <ul class='header-cart-wrapitem'>";
            if (Session["userID"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                int userID = Convert.ToInt32(Session["userID"].ToString());
                var user = client.userinfor_Retrieval(userID);

                fname.Value = user.name;
                email.Value = user.email;
                adr.Value = user.address1;
                city.Value = user.city;
                prov.Value = user.province;
                zip.Value = user.ZipCode;

                var cart = client.getUser_Cart(id);
                if (cart != null) {                    
                    foreach (CartClass c in cart) {
                        total += c.Total;
                        display += " <li class='header-cart-item'>";
                        display += " <div class='header-cart-item-img'>";
                        display += "<a href='Remove.aspx?ID=" + c.productId + "'><img src ='" + c.image_url + "' alt='IMG-PRODUCT'>";
                        display += " </div>";
                        display += " <div class='header-cart-item-txt'>";
                        display += " <a href ='ProductDetails.aspx?ID=" + c.productId + "' class='header-cart-item-name'>" + c.productName + "</a>";
                        display += " <span class='header-cart-item-info'>" + c.Qty + " x" + c.unit + "</span>";
                        display += "<div class='block2 -btn-addcart w-size1 trans-0-4'>";
                        display += "<a href='Add.aspx?ID=" + c.productId + "@Remove" + "'class='header-cart-item-name' class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>Remove</a> ";
                        display += "</div>";
                        display += "</div>";
                        display += " </li>";

                    }
                    display += " </ul>";
                    display += " <div class='header-cart-total'>Total: " + total + "</div>";
                    display += " <div class='header-cart-buttons'>";
                    display += " <div class='header-cart-wrapbtn'>";
                    display += " <a href = 'ShoppingCart.aspx' class='flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4'>View Cart</a></div>";
                    display += " <div class='header -cart-wrapbtn'>";
                    display += " <a href ='CheckOut.aspx' class='flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4'>Check Out</a>";
                    cartshow.InnerHtml = display;
                }

            }
        }

        protected void BtnOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Invoicee.aspx");
        }

        protected void BtnDiscount_Click(object sender, EventArgs e)
        {

        }
    }
}