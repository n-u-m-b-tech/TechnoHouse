﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            if (pass.Value.Equals(confirm.Value))
            {
                User user = new User
                {
                    Title = title.Value,
                    name = name.Value,
                    surname = surname.Value,
                    contacs = phone.Value,
                    address1 = add1.Value,
                    address2 = add2.Value,
                    ZipCode = zip.Value,
                    province = prov.Value,
                    city = city.Value,                 
                    username = username.Value,
                    email = email.Value,
                    password = pass.Value,
                    type = "user",
                    active = 'T'
                };

                if (client.UserRegister(user))
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {         
                    //Response.Redirect("UserRegistration.aspx");
                    lblErrorMessage.Visible = true;
                }

            }
        }
    }
}