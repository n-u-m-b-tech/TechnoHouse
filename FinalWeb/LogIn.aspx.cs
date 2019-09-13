using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using TechWeb.TechService;

namespace FinalWeb
{
    public partial class LogIn : System.Web.UI.Page
    {
     //   Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
           /* Boolean verify = client.Login(email.Value, pass.Value);
            if (verify)
            {
                var user = client.userinfor_Retrieval_Email(email.Value);
                if (user != null)
                {
                    Session["userID"] = user.Id;
                    Session["userType"] = user.type;
                    Response.Redirect("Home.aspx");
                }
                //lblMsg.Visible = true;
            }
            else
            {
                //lblErrorMessage.Visible = true;
                Response.Redirect("Login.aspx");
            }*/
        }
    }
}