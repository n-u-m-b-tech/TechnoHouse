using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class Add : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                String proId = Request.QueryString["ID"];
                int ID = Convert.ToInt32(proId);
                var pro = client.productinfor_retrieval_ID(ID);
                int userId = Convert.ToInt32(Session["userID"].ToString());
                bool val = client.Add_to_Cart(pro, userId, 1);
                if (val)
                {
                    Response.Redirect("ShoppingCart.aspx?ID=" + ID);
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }

                }
        }
    }
}