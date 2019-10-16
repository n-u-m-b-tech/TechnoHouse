using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class History : System.Web.UI.Page
    {
       Techno_serviceClient client = new Techno_serviceClient();
        String display = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null) {
                var invoices = client.getInvoice(Convert.ToInt32(Session["userID"].ToString()));
  
            if (invoices != null)
            {
                display += " <table class='table-shopping-cart'>";
                display += " <tr class='table-head'>";
                display += " <th class='column-1'>Order Number</th>";
                display += " <th class='column-2'>Items</th> ";
                display += " <th class='column-3'>Date</th>";
                display += " <th class='column-4'>Amount</th>";
                display += " <th class='column-5'></th>";
                display += " </tr>";
               
                foreach (transactionClass inv in invoices)
                {
                        display += " <tr class='table-row'>";
                        display += " <td class='column-1'>" + inv.OrderNumber + "</td>";
                        display += " <td class='column-2'></td>";
                        display += " <td class='column-3'>" + inv.OrderDate + "</td> ";
                        display += " <td class='column-4'>" + inv.Total + "</td> ";
                        display += " <td class='column-5'></td>";
                        display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                        display += "<a href=PrintInvoice.aspx?ID=" + inv.OrderId + "'class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>print</a>";
                        display += "</div>";
                        display += " </td> ";
                        display += " </tr> ";
                }
                display += " </table>";
                loaded.InnerHtml = display;
            }
            }
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}