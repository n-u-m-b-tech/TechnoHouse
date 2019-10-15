using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            bool reset = client.resetPass(Convert.ToInt32(email.Value), pass.Value);
            if (reset == true)
            {
                Response.Redirect("LogIn.aspx");
            }
            else if(reset == false) {
                Response.Redirect("ResetPassword.aspx");
            }
        }
    }
}