using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class SearchUserPage : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEditUser_Click(object sender, EventArgs e)
        {
            var user = client.userinfor_Retrieval_Email(email.Value);
            if (user != null)
            {
                int userId = user.Id;
                Response.Redirect("EditUserPage.aspx?ID=" + userId);
            }
        }

    }
}