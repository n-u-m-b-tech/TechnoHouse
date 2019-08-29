using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechWeb
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        protected String url;
        protected String name;
        protected String description;
        protected String price;
        protected String category;
        protected String brand;
        protected String discount;

        protected void Page_Load(object sender, EventArgs e)
        {
            url = "images/smart-home-automation-2.jpg";
            name = "House";
            price = "R 3000";
            brand = "adidas";

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {

        }
    }
}