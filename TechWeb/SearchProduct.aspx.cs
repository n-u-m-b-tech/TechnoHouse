using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class SearchProduct : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditProduct_Click(object sender, EventArgs e)
        {
            var product = client.productinfor_retrieval_Name(proname.Value);

            if (product != null)
            {
                Response.Redirect("EditProductPage.aspx?ID="+product.ID+"");
            }
        }
    }
}