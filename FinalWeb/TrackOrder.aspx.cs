using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class TrackOrder : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        string display = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTrack_Click(object sender, EventArgs e)
        {
            dynamic order = client.getOrder(Convert.ToInt32(ordernum.Value));
            if (order != null) {

                display += " <table class='table-shopping-cart'>";
                display += " <tr class='table-head'>";
                display += " <th class='column-1'>Order Number</th>";
                display += " <th class='column-2'>Order Date</th>";
                display += " <th class='column-3'>Payment Date</th> ";
                display += " <th class='column-4'>Payment Amount</th>";
                display += " <th class='column-5'>Ship Date</th>";
                display += " <th class='column-6'>Delivery Status</th>";
                display += " <th class='column-7>Time Line</th>";
                display += " </tr>";

                foreach (transactionClass t in order) {
                display += " <tr class='table-row'>";
                display += " <td class='column-1'>" + t.OrderNumber+"</td>";
                display += " <td class='column-2'>" + t.OrderDate + "</td>";
                display += " <td class='column-3'>" + t.Total + "</td> ";
                display += " <td class='column-4'>" + t.ShipDate + "</td> ";
                display += " <td class='column-5'>" + t.OrderNumber + "</td>";
                display += " <td class='column-6'>" + t.DeliveryStatus + "</td>";
                display += " <td class='column-7'>";
                display += " <ol class='progtrckr data-progtrckr-steps='5'>";
                display += " <li class='progtrckr-done'>Order Processing</li>";
                display += " <li class='progtrckr-done'>Pre-Production</li>";
                display += " <li class='progtrckr-done'>In Production</li>";
                display += " <li class='progtrckr-todo'>Shipped</li>";
                display += " <li class='progtrckr-todo'>Delivered</li>";
                display += " </ol>";
                display += " </td> ";
                display += " </tr> ";
                }
                display += " </table>";
                loaded.InnerHtml = display;
            }
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {

        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}