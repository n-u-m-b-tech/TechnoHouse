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
            display += "<div class='flex-w flex-sb'>";
            display += "<div class='w-size13 p-t-30 respon5'>";
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
            display += "</div>";

            display += "<div class='w-size14 p-t-30 respon5'>";
            display += "<h4 class='product-detail-name m-text16 p-b-13'>"+product.name+" </h4>";

            display += "<span class='m-text17'>"+product.price+"</span>";

            display += "<p class='s-text8 p-t-10'>"+product.description+ "</p>";

            //	<!--  -->
            display += "<div class='p-t-33 p-b-60'>";

            display += "<div class='flex-r-m flex-w p-t-10'>";
            display += "<div class='w-size16 flex-m flex-w'>";
            display += "<div class='flex-w bo5 of-hidden m-r-22 m-t-10 m-b-10'>";
            display += "<button class='btn-num-product-down color1 flex-c-m size7 bg8 eff2'>";
            display += "<i class='fs-12 fa fa-minus' aria-hidden='true'></i>";
            display += "</button>";

            display += "<input class='size8 m-text18 t-center num-product' type='number' name='num-product' value='1'>";

            display += "<button class='btn-num-product-up color1 flex-c-m size7 bg8 eff2'>";
            display += "<i class='fs-12 fa fa-plus' aria-hidden='true'></i>";
            display += "</button>";
            display += "</div>";

            display += "<div class='btn-addcart-product-detail size9 trans-0-4 m-t-10 m-b-10'>";
            //<!-- Button -->
            display += "<asp:Button runat='server'  Value='Add To Cart' class='flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4'  Onclick='BtnAddToCart_Click'></asp:Button>";
            display += "</div>";
            display += "</div>";
            display += "</div>";
            display += "</div>";

            display += "<div class='p-b-45'>";
            display += "<span class='s-text8 m-r-35'>Serial number: "+product.ID+"</span>";
            display += "<span class='s-text8'>Categories:"+product.category+"</span>";
            display += "</div>";

            //<!--  -->
            display += "<div class='wrap-dropdown-content bo6 p-t-15 p-b-14 active-dropdown-content'>";
            display += "<h5 class='js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4'>";
            display+= "<i class='down-mark fs-12 color1 fa fa-minus dis-none' aria-hidden='true'></i>";
            display += "<i class='up-mark fs-12 color1 fa fa-plus' aria-hidden='true'></i>";
            display += "</h5>";

          //  display += "<div class='dropdown-content dis-none p-t-15 p-b-23'>";
         //   display += "<p class='s-text8'>"+product.description+"</p>";
            //display += "</div>";
            display += "</div>";
            display += "</div>";
            display += "</div>";

            productDetails.InnerHtml = display;

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
								display+="</div>";
							display+="</div>";
                    display += "</div>";
						display+="<div class='block2-txt p-t-20'>";
							display+="<a href='ProductDetails.aspx?ID="+p.ID+"' class='block2-name dis-block s-text3 p-b-5'>	Herschel supply co 25l</a>";

							display+="<span class='block2-price m-text6 p-r-5'>R"+p.price+"</span>";
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
                /*  if (!qty.Value.Equals(""))
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
                  }*/
            }
            Response.Redirect("Home.aspx");
}
    }
}