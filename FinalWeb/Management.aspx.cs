using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;


namespace FinalWeb
{
    public partial class Management : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            string display = "";
            string Sales = "";
            string Prod = "";

            var num1 = client.CountUser();
            var num2 = client.CountSales();
            var num3 = client.CountProduct();

            display += "<a href='ProductOnDiscount.aspx'> " + Convert.ToString(num1) +" </a>";
            usersss.InnerHtml = display;

            Sales += "<a href='ProductOnDiscount.aspx'> " + Convert.ToString(num2) + " </a>";
            salesss.InnerHtml = Sales;

            Prod += "<a href='ProductOnDiscount.aspx'> " + Convert.ToString(num3) + " </a>";
            proddd.InnerHtml = Prod;
        }
    }
}