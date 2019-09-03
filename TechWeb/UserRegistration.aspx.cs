﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

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
                    email = email.Value,
                    password = pass.Value,
                    address1 = add1.Value,
                    address2 = add2.Value,
                    ZipCode = zip.Value,
                    city = city.Value,
                    username = username.Value,
                    province = prov.Value,
                    active = 'T'
               


                };

                if (client.UserRegister(user))
                {
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    Response.Redirect("UserRegistration.aspx");
                }

            }
        }
    }
}