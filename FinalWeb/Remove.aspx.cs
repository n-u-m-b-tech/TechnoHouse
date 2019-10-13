using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class Remove : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                int proId = Convert.ToInt32(Request.QueryString["ID"]);    
                int userId = Convert.ToInt32(Session["userID"].ToString());
                bool val = client.removeItem(userId, proId);
                if (val)
                {
                    Response.Redirect("ShoppingCart.aspx?ID=" + userId);
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }

            }
        }
    }
}