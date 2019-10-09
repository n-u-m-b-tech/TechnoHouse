using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class Catalog : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            String catalogue = Request.QueryString["ID"];
            if (catalogue.Equals("Kitchen") || catalogue.Equals("Living Room") || catalogue.Equals("BathRoom") || catalogue.Equals("BedRoom"))
            {
                String display = "";
                var products = client.search_by_cat(catalogue);

                foreach (ProductD pro in products)
                {
                    display += "<div class='col-sm-12 col-md-6 col-lg-4 p-b-50'>";
                    display += "<div class='block2'>";
                    display += "<div class='block2 -img wrap-pic-w of-hidden pos-relative'>";
                    display += "<img src ='"+pro.image_url+"' alt='IMG-PRODUCT'>";
                    display += "<div class='block2 -overlay trans-0-4'>";
                    display += "<a href = '#' class='block2-btn-addwishlist hov-pointer trans-0-4'>";
                    display += "<i class='icon-wishlist icon_heart_alt' aria-hidden='true'></i>";
                    display += "<i class='icon-wishlist icon_heart dis-none' aria-hidden='true'></i>";
                    display += "</a>";
                    display += "<div class='block2 -btn-addcart w-size1 trans-0-4'>";
                    display += "<asp:Button class='flex -c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4' runat='server' onClick='BtnAddToCart_Click' Text='Add to Cart'/>";/* Add to Cart</button>";*/
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                    display += "<div class='block2 -txt p-t-20'>";
                    display += "<a href='ProductDetails.aspx?ID="+pro.ID+"' class='block2-name dis-block s-text3 p-b-5'>"+pro.name+"</a>";
                    display += "<span class='block2 -price m-text6 p-r-5'>"+pro.price +"</span>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                }
                view.InnerHtml = display;
            }

            else
            {
                String display = "";
                var products = client.allProducts();

                foreach (ProductD pro in products)
                {
                    display += "<div class='col-sm-12 col-md-6 col-lg-4 p-b-50'>";
                    display += "<div class='block2'>";
                    display += "<div class='block2 -img wrap-pic-w of-hidden pos-relative block2-labelnew'>";
                    display += "<img src =" + pro.image_url + " alt='IMG-PRODUCT'>";
                    display += "<div class='block2 -overlay trans-0-4'>";
                    display += "<a href = '#' class='block2-btn-addwishlist hov-pointer trans-0-4'>";
                    display += "<i class='icon -wishlist icon_heart_alt' aria-hidden='true'></i>";
                    display += "<i class='icon -wishlist icon_heart dis-none' aria-hidden='true'></i>";
                    display += "</a>";
                    display += "<div class='block2 -btn-addcart w-size1 trans-0-4'>";
                    display += "<asp:Button ID='AddToCart' class='flex - c - m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4' runat='server' Text='Add To Cart' OnClick='BtnAddToCart_Click' />";
                    display += "<button class='flex -c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>Add to Cart</button>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                    display += "<div class='block2 -txt p-t-20'>";
                    display += "<a href='ProductDetails.aspx?ID=" + pro.ID + "' class='block2-name dis-block s-text3 p-b-5'>" + pro.name + "</a>";
                    display += "<span class='block2 -price m-text6 p-r-5'>" + pro.price + "</span>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                }
                view.InnerHtml = display;
            }
        }

        protected void BtnAddToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        protected void btnFilter_Click(object sender, EventArgs e)
        {
        
                
        }
    }
}