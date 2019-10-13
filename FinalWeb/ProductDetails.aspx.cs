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
            String display = ""; 
            int ID = Convert.ToInt32(proId);
            var product = client.productinfor_retrieval_ID(ID);
            display += "<div class='wrap-slick3 flex-sb flex-w'>";
            display += "<div class='wrap-slick3-dots'></div>";

            display += "<div class='slick3'>";
            display += "<div class='item-slick3' data-thumb='"+product.image_url+"'>";
            display += "<div class='wrap-pic-w'>";
            display += "<img src='"+product.image_url+"' alt='IMG-PRODUCT' />";
            display += "</div>";
            display += "</div>";

            display += "<div class='item-slick3' data-thumb='" + product.image_url + "'>";
            display += "<div class='wrap-pic-w'>";
            display += "<img src='" + product.image_url + "' alt='IMG-PRODUCT'>";
            display += "</div>";
            display += "</div>";

            display += "<div class='item-slick3' data-thumb='" + product.image_url + "'>";
            display += "<div class='wrap-pic-w'>";
            display += "<img src='" + product.image_url + "'' alt='IMG-PRODUCT'>";
            display += "</div>";
            display += "</div>";
            display += "</div>";
            display += "</div>";

            productview.InnerHtml = display;

            display = "";

             display += " <h4 class='product-detail-name m-text16 p-b-13'>"+product.name+"</h4>";
             display += " <span class='m -text17'>R"+Math.Round(product.price,2)+"</span>";
             display += " <p class='s -text8 p-t-10'>"+product.description+"</p>";
             display += " <div class='p -b-45'>";
             display += " <span class='s -text8 m-r-35'>SKU: "+product.ID+"</span>";
             display += " <span class='s -text8'>Categories: "+product.category+" Design</span>";
             display += " </div>";

            productDetails.InnerHtml = display;

            display = "";

            display += " <h5 class='js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4'>";
            display += " Additional information";
            display += " <i class='down-mark fs-12 color1 fa fa-minus dis-none' aria-hidden='true'></i>";
            display += " <i class='up-mark fs-12 color1 fa fa-plus' aria-hidden='true'></i>";
            display += " </h5>";
            display += " <div class='dropdown-content dis-none p-t-15 p-b-23'>";
            display += " <p class='s-text8'>Fusce ornare mi vel risus porttitor dignissim.Nunc eget risus at ipsum blandit ornare vel sed velit.Proin gravida arcu nisl, a dignissim mauris placerat</p>";
            display += " </div>";

            moreinfo.InnerHtml = display;
         

           display = "";

            var relatedProducts = client.search_by_cat(product.category);

            foreach(ProductD p in relatedProducts)
            {
                if (!p.name.Equals(product.name))
                {
                    display +="<div class='item-slick2 p-l-15 p-r-15'>";
                    //<!-- Block2 -->
                    display+="<div class='block2'>";
                    display+="<div class='block2-img wrap-pic-w of-hidden pos-relative block2-labelnew'>";
                    display+="<img src='"+p.image_url+"' alt='IMG-PRODUCT'>";
                    display+="<div class='block2-overlay trans-0-4'>";
                    display+="<a href='#' class='block2-btn-addwishlist hov-pointer trans-0-4'>";
                    display+="<i class='icon-wishlist icon_heart_alt' aria-hidden='true'></i>";
                    display+="<i class='icon-wishlist icon_heart dis-none' aria-hidden='true'></i>";
                    display+="</a>";

                    display+="<div class='block2-btn-addcart w-size1 trans-0-4'>";
                    //<!-- Button -->
                    display+="<button class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>Add to Cart</button>";
                    display += "<a href='#BtnAddToCart_Click' class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4' onclick='Added to cart'  onServerClick='BtnAddToCart_Click'>Add To Cart</a>";
                    display +="</div>";
					display+="</div>";
                    display += "</div>";
					display+="<div class='block2-txt p-t-20'>";
					display+="<a href='ProductDetails.aspx?ID="+p.ID+"' class='block2-name dis-block s-text3 p-b-5'>"+p.name+"</a>";
                    display +="<span class='block2-price m-text6 p-r-5'>R"+p.price+"</span>";
					display+="</div>";
					display+="</div>";
				    display+="</div>";
                }
            }
                   related.InnerHtml = display;
        }

    
        
protected void BtnAddToCart_Click(object sender, EventArgs e)
{
            if (Session["userID"] != null)
            {
                String proId = Request.QueryString["ID"];
                int ID = Convert.ToInt32(proId);
                 if (!qty.Value.Equals(""))
                  {
                      int Qty = Convert.ToInt32(qty.Value);
                      var pro = client.productinfor_retrieval_ID(ID);
                      int userId = Convert.ToInt32(Session["userID"].ToString());
                      bool val= client.Add_to_Cart(pro, userId, Qty);
                    if (val) { 
                    Response.Redirect("ShoppingCart.aspx?ID=" + ID);
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
                  else
                  {
                    int Qty = 1;
                    var pro = client.productinfor_retrieval_ID(ID);
                    int userId = Convert.ToInt32(Session["userID"].ToString());                     
                    bool val = client.Add_to_Cart(pro, userId, Qty);
                  }
            }
            Response.Redirect("LogIn.aspx");
}
    }
}