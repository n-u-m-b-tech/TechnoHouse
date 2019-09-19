using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalWeb
{
    public partial class TechnoMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hmanage.Visible = true;
            pmanage.Visible = false;
            manage.Visible = false;
            smanage.Visible = false;
            amanage.Visible = false;
            emanage.Visible = false;
            login.Visible = true;
            uregister.Visible = true;
            logout.Visible = false;
            if(Session["userID"] != null)
            {
                login.Visible = false;
                uregister.Visible = false;
                logout.Visible = true;
                if (Session["userType"] != null)
                {
                    pmanage.Visible = true;
                    manage.Visible = true;
                    smanage.Visible = true;
                    amanage.Visible = true;
                    emanage.Visible = true;
                }
            }
        }
    }
}