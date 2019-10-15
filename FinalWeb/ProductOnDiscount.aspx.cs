using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;


namespace FinalWeb
{
    public partial class ProductOnDiscount : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        String display = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductD[] Discount = client.search_by_dis();
            if (Discount != null)
            {
                Display(Discount);
            }

            view.InnerHtml = display;
        }


        public void Display(ProductD[] product)
        {
            int count = client.CountSales();
            for (int i = 0; i < count; i++)
            {
                display += "<div class='item-slick2 p-l-15 p-r-15'>";
                display += "<div class='block2'>";
                display += "<div class='block2-img wrap-pic-w of-hidden pos-relative block2-labelnew'>";
                display += "<img src ='" + product[i].image_url + "' alt='IMG-PRODUCT'>";
                display += "<div class='block2-overlay trans-0-4'>";
                display += "<a href = '#' class='block2-btn-addwishlist hov-pointer trans-0-4'>";
                display += "<i class='icon-wishlist icon_heart_alt' aria-hidden='true'></i>";
                display += "<i class='icon-wishlist icon_heart dis-none' aria-hidden='true'></i>";
                display += "</a>";
                display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                display += "<a href='Add.aspx?ID=" + product[i].ID + "@Add" + "' class='flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4'>Add To Cart</a>";
                display += "</div>";
                display += "</div>";
                display += "</div>";
                display += "<div class='block2-txt p-t-20'>";
                display += "<a href= 'ProductDetails.aspx?ID=" + product[i].ID + "' class='block2-name dis-block s-text3 p-b-5'>" + product[i].name + "</a>";
                display += "<span class='block2-price m-text6 p-r-5'>R" + Math.Round(product[i].price, 2) + "</span>";
                display += "</div>";
                display += "</div>";
                display += "</div>";
            }

        }

    }
}