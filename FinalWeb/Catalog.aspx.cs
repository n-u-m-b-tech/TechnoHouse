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
        String catalogue=null;
        String order=null;
        protected void Page_Load(object sender, EventArgs e)
        {
             catalogue = Request.QueryString["ID"];
             order = Request.QueryString["ORDER"];
            if (catalogue.Equals("Kitchen") || catalogue.Equals("Living Room") || catalogue.Equals("BathRoom") || catalogue.Equals("BedRoom"))
            {
                String display = "";
                dynamic products=null;
                if (order == null)
                {
                    products = client.search_by_cat(catalogue);
                }
                else if(order!=null){

                    if (order.Equals("Ascending"))
                    {
                        products = client.price_by_ASC(catalogue);
                    }
                    else if (order.Equals("Descending"))
                    {
                        products = client.price_by_DESC(catalogue);
                    }
                }

                foreach (ProductD pro in products)
                {
                    display += "<div class='col-sm-12 col-md-6 col-lg-4 p-b-50'>";
                    display += "<div class='block2'>";
                    display += "<div class='block2-img wrap-pic-w of-hidden pos-relative'>";
                    display += "<img src ='"+pro.image_url+"' alt='IMG-PRODUCT'>";
                    display += "<div class='block2-overlay trans-0-4'>";
                    display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                    display += "<a href='Add.aspx?ID="+pro.ID+"@Add"+"' class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4' >Add to cart</a>";                 
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                    display += "<div class='block2-txt p-t-20'>";
                    display += "<a href='ProductDetails.aspx?ID="+pro.ID+"' class='block2-name dis-block s-text3 p-b-5'>"+pro.name+"</a>";
                    display += "<span class='block2-price m-text6 p-r-5'>R"+pro.price +"</span>";
                    display += "</div>";
                    display += "</div>";
                    display += "</div>";
                }
                view.InnerHtml = display;
            }else if(catalogue.Equals("ALL"))
            {

                String Display = "";
                var products = client.allProducts();

                foreach (ProductD pro in products)
                {
                    Display += "<div class='col-sm-12 col-md-6 col-lg-4 p-b-50'>";
                    Display += "<div class='block2'>";
                    Display += "<div class='block2-img wrap-pic-w of-hidden pos-relative'>";
                    Display += "<img src ='" + pro.image_url + "' alt='IMG-PRODUCT'>";
                    Display += "<div class='block2-overlay trans-0-4'>";
                    Display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                    Display += "<a href='Add.aspx?ID=" + pro.ID + "@Add" + "'class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>Add To Cart</a>";
                    Display += "</div>";
                    Display += "</div>";
                    Display += "</div>";
                    Display += "<div class='block2-txt p-t-20'>";
                    Display += "<a href='ProductDetails.aspx?ID=" + pro.ID + "'class='block2-name dis-block s-text3 p-b-5'>" + pro.name + "</a>";
                    Display += "<span class='block2-price m-text6 p-r-5'>R" + pro.price + "</span>";
                    Display += "</div>";
                    Display += "</div>";
                    Display += "</div>";
                }
                view.InnerHtml = Display;
            }
        }

        protected void BtnAddToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void BtnFilter_Click(object sender, EventArgs e)
        {

        }

        protected void drpfiltprice_SelectedIndexChanged(object sender, EventArgs e)
        {
            String selectedvalue = drpfiltprice.SelectedValue.ToString();
            
        }

        protected void drpPrice_SelectedIndexChanged(object sender, EventArgs e)
        {
            String selectedvalue = drpPrice.SelectedValue.ToString();
            if (selectedvalue.Equals("Low To High"))
            {
                Response.Redirect("Catalog.aspx?ID=" + catalogue + "&ORDER=Ascending");
            }
            else if (selectedvalue.Equals("High To Low"))
            {
                Response.Redirect("Catalog.aspx?ID=" + catalogue + "&ORDER=Descending");
            }
        }
    }
}