using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class Home : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        String display = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductD[] LivingRoom = client.search_by_cat("Living Room");
            ProductD[] BathRoom = client.search_by_cat("BathRoom");
            ProductD[] KitchenRoom = client.search_by_cat("Kitchen");
            ProductD[] BedRoom = client.search_by_cat("BedRoom");
            if (LivingRoom != null)
            {
              Display(LivingRoom);
            }
            if (BathRoom != null)
            {
               Display(BathRoom);
            }
            if (KitchenRoom != null)
            {
                Display(KitchenRoom);
            }
            if (BedRoom != null)
            {
                //Display(BedRoom);
            }

            view.InnerHtml = display;
        }

        public void Display(ProductD[] product) {
           
            for (int i = 0; i < 2; i++) {
                var newPrice = product[i].price + (product[i].price*Convert.ToDouble(product[i].discount));
                display += "<div class='item-slick2 p-l-15 p-r-15'>";
                display += "<div class='block2'>";
                display += "<div class='block2-img wrap-pic-w of-hidden pos-relative block2-labelnew'>";
                display += "<img src ='"+ product[i].image_url +"' alt='IMG-PRODUCT'>";
                display += "<div class='block2-overlay trans-0-4'>";
                display += "<a href = '#' class='block2-btn-addwishlist hov-pointer trans-0-4'>";
	  		    display += "<i class='icon-wishlist icon_heart_alt' aria-hidden='true'></i>";
                display += "<i class='icon-wishlist icon_heart dis-none' aria-hidden='true'></i>";
                display += "</a>";
                display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                display += "<button class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>Add to Cart</button>";
                display += "</div>";
                display += "</div>";
                display += "</div>";
                display += "<div class='block2-txt p-t-20'>";
				display += "<a href= 'ProductDetails.aspx?ID="+ product[i].ID+"' class='block2-name dis-block s-text3 p-b-5'>"+product[i].name+"</a>";
				display += "<span class='block2-oldprice m-text7 p-r-5'>"+product[i].price+"</span>";
				display += "</div>";
				display += "</div>";
                display += "</div>";
            }
            
        }
    }
}