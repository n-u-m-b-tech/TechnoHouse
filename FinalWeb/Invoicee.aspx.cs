using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class Invoicee : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Session["userID"] != null)
            {
                int UserId = Convert.ToInt32(Session["userID"].ToString());
                var user = client.userinfor_Retrieval(UserId);
                var invoice = client.getInvoice(UserId);
                if (user != null)
                {
                    title.InnerHtml = user.username;
                    invoiceNumber.InnerHtml = Convert.ToString(invoice[0].OrderNumber);
                    date.InnerHtml = Convert.ToString(invoice[0].OrderDate);
                    amount.InnerHtml = Convert.ToString(invoice[0].Total);

                }

                String display = "";
                display += "<table id='items' runat='server'>";
                display += "<tr>";
                display +="<th>Item</th>";
                 display += "<th> Description </th>";
                display += "<th> Unit Cost </th>";
                display += " <th> Quantity </th>";
                display += " <th> Price </th>";
                display += "</tr>";

                var Inv = client.getInvoice(UserId);
                var pay = client.getpayement(UserId);
                Decimal subt = 0;
                if (Inv != null)
                {
                    foreach(transactionClass c in Inv)
                    {
                        var pro = client.productinfor(c.ProId);
                        display += "<tr class='item-row'>";
                        display += "<td class='item-name'><div class='delete-wpr'><span>" + pro.name + "</span></div></td>";
                        display += "<td class='description'>" + pro.description + "</td>";
                        display += "<td class='cost'>R" + pro.price + "</td>";
                        display += "<td class='qty'>" + c.Quantity + "</td>";
                        display += "<td><span class='price'>" + c.Total + "</span></td>";
                        display += "</tr>";
                        subt += c.Total;
                       
                    }
                }

                display += "<tr>";
                display += "<td colspan='2' class='blank'> </td>";
                display += "<td colspan='2' class='total-line'>Subtotal</td>";
                display += "<td class='total-value'><div id='subtotal'>R" + subt + "</div></td>";
                display += "</tr>";
                display += "<tr>";
                display += " <td colspan='2' class='blank'> </td>";
                display += "<td colspan='2' class='total-line'>Total</td>";
                display += "<td class='total-value'><div id='total'>R" + subt + "</div></td>";
                display += "</tr>";
                display += "<tr>";
                display += "<td colspan='2' class='blank'> </td>";
                display += "<td colspan='2' class='total-line'>Amount Paid</td>";
                display +="<td class='total-value'><span id='paid' >R"+pay.price+"</span></td>";

                 display += "</tr>";


                display += "</table>";
                table.InnerHtml = display;













            }

        }
    }
}