using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class HomePage : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        String display = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //hiding edit product hypelink if no admin is logged in
            edit.Visible = false;
            register.Visible = false;
            if (Session["userID"] != null)
            {
                if (Session["userType"] != null)
                {
                    if (Session["userType"].Equals("admin"))
                    {
                        //show hidden hyper links if logged in user is admin
                        edit.Visible = true;
                    }
                }
                login.Visible = false;
                uregister.Visible = false;
            }

            //displaying only two products per catergory
            dynamic LivingRoom = client.search_by_cat("Living Room");
            dynamic BathRoom = client.search_by_cat("Bath Room");
            dynamic KitchenRoom = client.search_by_cat("Kitchen");
            dynamic BedRoom = client.search_by_cat("Bed Room");
            if (LivingRoom != null)
            {
                displaypro(LivingRoom);
            }
            if (BathRoom != null)
            {
                displaypro(BathRoom);
            }
            if (KitchenRoom != null)
            {
                displaypro(KitchenRoom);
            }
            if (BedRoom != null)
            {
                //displaypro(BedRoom);
            }




            catalog.InnerHtml = display;
        }

        public void displaypro(dynamic product)
        {
            for (int i = 0; i < 2; i++)
            {
                display += "<article class='style1'>";
                display += "<span class='image'>";
                display += "<a href='EditProductPage.aspx?ID=" + product[i].ID + "'>";
                display += "<img src='" + product[i].image_url + "' width='300' height='300' alt='' />";
                display += "</a>";
                display += "</span>";
                display += "<h2>" + product[i].name + "</h2>";
                display += "<div class='content'>";
                String price = "Price R" + product[i].price;
                display += "<p>" + price + "</p>";
                display += "</div>";
                display += "</article>";
            }
        }
    }
}
