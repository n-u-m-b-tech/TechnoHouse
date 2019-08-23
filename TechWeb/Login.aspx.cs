using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;


namespace TechWeb
{
    public partial class LogIn : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
           Boolean verify= client.Login(Email.Value, Password.Value);

            if (verify)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }
    }
}