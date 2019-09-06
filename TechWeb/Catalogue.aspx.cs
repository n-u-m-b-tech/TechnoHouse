using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class Catalogue : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            String catalogue = Request.QueryString["ID"];
            if(catalogue.Equals("Kitchen")|| catalogue.Equals("Living Room")||catalogue.Equals("Bath Room")|| catalogue.Equals("Bed Room"))
            {
                String display = "";
                var products = client.search_by_cat(catalogue);

                foreach (ProductD pro in products)
                {
                    display += " <div class='row'>";
                    display += "<div class='col-md-3 col-sm-6'>";
                    display += "<div class='product-grid'>";
                    display += "<div class='product-image'>";
                    display += "<a href ='#' >";
                    display += "<img class='pic-1' src='" + pro.image_url + "' width='70' height='70'>";
                    display += "<img class='pic-2' src='#'>";
                    display += "</a>";
                    display += "<span class='product-trend-label'>Trend</span>";
                    display += "<ul class='social'>";
                    display += "<li><a href='' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></li>";
                    display += "<li><a href ='#' data-tip='Wishlist'><i class='fa fa-heart'></i></a></li>";


                    display += "<li><a href='ProductDetailsPage.aspx?ID=" + pro.ID + "' data-tip='Quick View'><i class='fa fa-search'></i></a></li>";
                    display += "</ul>";
                    display += "</div>";
                    display += "<div class='product-content'>";
                    display += "<h3 class='title'><a href='#' >" + pro.name + "</a></h3>";
                    display += "<div class='price'>" + pro.price + "</div>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                }
                Catalo.InnerHtml = display;
            }
            else 
            {
                String display = "";
                var products = client.allProducts();

                foreach (ProductD pro in products)
                {
                    display += " <div class='row'>";
                    display += "<div class='col-md-3 col-sm-6'>";
                    display += "<div class='product-grid'>";
                    display += "<div class='product-image'>";
                    display += "<a href ='#' >";
                    display += "<img class='pic-1' src='" + pro.image_url + "' width='70' height='70'>";
                    display += "<img class='pic-2' src='#'>";
                    display += "</a>";
                    display += "<span class='product-trend-label'>Trend</span>";
                    display += "<ul class='social'>";
                    display += "<li><a href='' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></li>";
                    display += "<li><a href ='#' data-tip='Wishlist'><i class='fa fa-heart'></i></a></li>";


                    display += "<li><a href='ProductDetailsPage.aspx?ID=" + pro.ID + "' data-tip='Quick View'><i class='fa fa-search'></i></a></li>";
                    display += "</ul>";
                    display += "</div>";
                    display += "<div class='product-content'>";
                    display += "<h3 class='title'><a href='#' >" + pro.name + "</a></h3>";
                    display += "<div class='price'>" + pro.price + "</div>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                }
                Catalo.InnerHtml = display;
            }
          

            
        }
    }
}