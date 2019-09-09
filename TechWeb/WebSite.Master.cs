using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechWeb
{
    public partial class WebSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                String display = "";
                display += "<a href='CartPage.aspx?ID='" + Session["userID"] + "' class='scart'>";
                display += "<span class='symbol'>";
                display += "<img src ='images/icons/cart.jpg'  width='20' height='20' alt='' /></span>";
                display += "</a>";

                cartlogo.InnerHtml = display;
            }
            else
            {
                {
                    String display = "";
                    display += "<a href='CartPage.aspx' class='scart'>";
                    display += "<span class='symbol'>";
                    display += "<img src ='images/icons/cart.jpg'  width='20' height='20' alt='' /></span>";
                    display += "</a>";

                    cartlogo.InnerHtml = display;
                }
            }

        }

        protected void search_TextChanged(object sender, EventArgs e)
        {

        }
    }
}