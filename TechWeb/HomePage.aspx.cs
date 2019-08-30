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
        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic products = client.allProducts();
            String display="";

            foreach(ProductD p in products)
            {
                display += "<article class='style1'>";
                display +="<span class='image'>"; 
                display += "<a href='EditProductPage.aspx?ID="+p.ID+"'>";
                display +="<img src='"+p.image_url+"' width='300' height='300' alt='' />";
                display += "</a>";
                display += "</span>";
                display += "<h2>"+p.name+"</h2>";
                display += "<div class='content'>";
                String price = "Price R" + p.price;
                display += "<p>"+price+"</p>";
                display += "</div>";
                display += "</article>";
            };

            catalog.InnerHtml = display;
        }

       
    }
}