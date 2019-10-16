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
            var order = client.getOrder(Convert.ToInt32(ordernum.Value));
            

                display += " <table class='table-shopping-cart'>";
                display += " <tr class='table-head'>";
                display += " <th class='column-1'>Order Number</th>";
                display += " <th class='column-2'>Order Date</th>";
                display += " <th class='column-3'>Payment Date</th> ";
                display += " <th class='column-4'>Payment Amount</th>";
                display += " <th class='column-5'>Ship Date</th>";
                display += " <th class='column-6'>Delivery Status</th>";
                display += " <th class='column-7'></th>";
                display += " </tr>";

                if (order != null) {
                    display += " <tr class='table-row'>";
                    display += " <td class='column-1'>" + order.OrderNumber + "</td>";
                    display += " <td class='column-2'>" + order.OrderDate + "</td>";
                    display += " <td class='column-3'>" + order.PaymentDate + "</td> ";
                    display += " <td class='column-4'>" + order.Total + "</td> ";
                    display += " <td class='column-5'>" + order.ShipDate + "</td>";
                    display += " <td class='column-6'>" + order.DeliveryStatus + "</td>";
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
                    display += " </table>";


                display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                display += "<a href='Add.aspx?ID=" + order.OrderNumber+ "@CANCEL" + "'class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>Cancel Order</a>";
                display += "</div>";
                display += "<div class='block2-btn-addcart w-size1 trans-0-4'>";
                display += "<a href='Home.aspx'class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4'>Done</a>";
                display += "</div>";
            }
              
                
               
                loaded.InnerHtml = display;
            
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {

        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}