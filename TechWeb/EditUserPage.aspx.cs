using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class EditUserPage : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                String proId = Request.QueryString["ID"];
                int ID = Convert.ToInt32(proId);

                var user = client.userinfor_Retrieval(ID);

                title.Value = user.Title;
                name.Value = user.name;
                surname.Value = user.surname;
                contact.Value = user.contacs;
                email.Value = user.email;
                username.Value = user.username;
                add1.Value = user.address1;
                add2.Value = user.address2;
                city.Value = user.city;
                prov.Value = user.province;
                zip.Value = user.ZipCode;
                user_type.Value = user.type;
                active.Value = Convert.ToString(user.active);


            }
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            String proId = Request.QueryString["ID"];
            int ID = Convert.ToInt32(proId);

            var user = client.userinfor_Retrieval(ID);

            user.Title = title.Value;
            user.name = name.Value;
            user.surname = surname.Value;
            user.contacs = contact.Value;
            user.email = email.Value;
            user.username = username.Value;
            user.address1 = add1.Value;
            user.address2 = add2.Value;
            user.city = city.Value;
            user.province = prov.Value;
            user.ZipCode = zip.Value;
            user.type = user_type.Value;
            user.active = Convert.ToChar(active.Value);

            if (client.updateuser(user, ID))
            {
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Response.Redirect("EditUser.aspx?ID=" + ID);
            }



        }
    }
}