﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class LoginPage : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogIn_Click(object sender, EventArgs e)
        {
            Boolean verify = client.Login(email.Value, pass.Value);
            if (verify)
            {
                var user = client.userinfor_Retrieval_Email(email.Value);
                if (user != null) { 
                Session["userID"] = user.Id;
                Session["userType"] = user.type;
                Response.Redirect("HomePage.aspx");
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}