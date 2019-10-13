using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class TechnoMaster : System.Web.UI.MasterPage
    {
        Techno_serviceClient client = new Techno_serviceClient();
        String display = "";
        double total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            display += "<img src = 'images/slider/cart.jpg' class='header-icon1 js-show-header-dropdown' alt='ICON'>";
            display += "<span class='header-icons-noti'></span>";
            display += "<div class='header-cart header-dropdown' >";
            display += " <ul class='header-cart-wrapitem'>";
            if (Session["userID"] != null)
            {
                var cart = client.getUser_Cart(Convert.ToInt32(Session["userID"].ToString()));
                foreach (CartClass c in cart)
                {
                    
                    total = c.Total;
                    display += " <li class='header-cart-item'>";
                    display += " <div class='header-cart-item-img'>";
                    display += "<a href='Remove.aspx?ID="+c.productId+"'><img src ='" + c.image_url + "' alt='IMG-PRODUCT'>";
                    display += " </div>";
                    display += " <div class='header-cart-item-txt'>";
                    display += " <a href ='ProductDetails.aspx?ID="+ c.productId + "' class='header-cart-item-name'>" + c.productName + "</a>";
                    display += " <span class='header-cart-item-info'>" + c.Qty + " x" + c.unit + "</span>";
                    display += " </div>";
                    display += " </li>";
                }
                    display += " </ul>";
                    display += " <div class='header-cart-total'>Total: " + total + ":</div>";
                    display += " <div class='header-cart-buttons'>";
                    display += " <div class='header-cart-wrapbtn'>";
                    display += " <a href = 'ShoppingCart.aspx' class='flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4'>View Cart</a></div>";
                    display += " <div class='header -cart-wrapbtn'>";
                    display += " <a href ='CheckOut.aspx' class='flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4'>Check Out</a>";
                    display += " </div>";
                    display += " </div>";
                    display += " </div>";
                    cartshow.InnerHtml = display; 
                

            }
            hmanage.Visible = true;
            pmanage.Visible = false;

            login.Visible = true;
            uregister.Visible = true;
            logout.Visible = false;
            if (Session["userID"] != null)
            {
                login.Visible = false;
                uregister.Visible = false;
                logout.Visible = true;
                if (Session["userType"] != null)
                {
                    if (Session["userType"].Equals("admin"))
                    {
                        pmanage.Visible = true;
                    }
                }
                else if (Session["userType"].Equals("user")) { }
               // CartClass[] cart = client.getUser_Cart(Convert.ToInt32(Session["userID"].ToString()));
                //foreach (CartClass c in cart)
                //{
                

            }
        }
    }
}