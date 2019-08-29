using System;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class SignUp : System.Web.UI.Page
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
                    contacs = "number",
                    email = email.Value,
                    username = username.Value,
                    password = pass.Value,
                    address1 = add1.Value,
                    address2 = add2.Value,
                    city = city.Value,
                    province = prov.Value,
                    ZipCode = zip.Value,
                    user_type = "test",
                    Active = "T"


                };

                if (client.UserRegister(user))
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Redirect("SignUp.aspx");
                }

            }
        }
        }
    }
