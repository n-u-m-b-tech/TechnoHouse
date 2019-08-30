using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;
namespace TechWeb
{
    public partial class EditUser : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

            String proId = Request.QueryString["ID"];
            int ID = Convert.ToInt32(proId);

            var user = client.userinfor_Retrieval(ID);
            if (user != null)
            {
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
                

            }
        }
    }
}