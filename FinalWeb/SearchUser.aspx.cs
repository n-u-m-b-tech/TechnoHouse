using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class SearchUser : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            var user = client.userinfor_Retrieval_Email(email.Value);
            if (user != null)
            {
                int userId = user.Id;
                Response.Redirect("EditUser.aspx?ID=" + userId);
            }
        }
    }
}