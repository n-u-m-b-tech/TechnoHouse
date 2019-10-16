using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;


namespace FinalWeb
{
    public partial class CheckOut : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        String display = "";
        double total = 0;
        double subtotal = 0;
      
        int userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                 
                 userID = Convert.ToInt32(Session["userID"].ToString());
                var user = client.userinfor_Retrieval(userID);

                fname.Value = user.name;
                email.Value = user.email;
                adr.Value = user.address1;
                city.Value = user.city;
                prov.Value = user.province;
                zip.Value = user.ZipCode;



                display += "<table class='table-shopping-cart'>";
                display += "<tr class='table-head'>";
                display += "<th class='column-1'>Ordered Item</th>";
                display += "<th class='column-2'>Quantity</th>";
                display += "<th class='column-3'>Amount</th>";
                display += "</tr>";
               
                var cart = client.getUser_Cart(userID);
                if (cart != null) {
                    foreach (CartClass c in cart) {
                        subtotal += c.Total;
                        display += "<tr class='table-row'>";
                        display += "<td class='column-1'>" + c.productName + "</td>";
                        display += "<td class='column-2'>" + c.Qty + " </td>";
                        display += "<td class='column-3'>"+c.Total+"</td>";
                    }
                }
                total =subtotal + (subtotal * 0.15);
                display += "</tr>";
                display += "<tr class='table-row'>";
                display += "<td class='col-10'>";
                display += " <p>Subtotal:"+subtotal+"</p>";
                display += "<p>VAT Included: 15%</p>";
                display += "<p>Total:"+total+"</p>";
                display += "</td>";
                display += "</tr>";
                display += "</table>";
                cartshow.InnerHtml = display;

            }
        }

        protected void BtnOrder_Click(object sender, EventArgs e)
        {
            //Adding payment
            transactionClass pay = new transactionClass
            {
                clientId = userID,
                Payementtype = "Card",
                PaymentDate = DateTime.Today,
                price = Convert.ToDecimal(subtotal)
            };

            var ver = client.payment(pay);
            if (ver)
            {
                //if payment processed assign delivery Company
                transactionClass delivery = new transactionClass
                {
                    companyName = "TECH Deliveries",
                    phone = "0113528910",
                    CompanyDetails = "Tech Deliveries " +
                                     "Address : 5 Kingsway Ave, Rossmore, Johannesburg, 2092" +
                                      " Hourse : 08h00 - 17h00 Mon-Fri" +
                                      " 4.1 star rating"

                };
                var del = client.delivery(delivery);
                if (del)
                {
                    //after delivery assigment add to order
                    var payment = client.getpayement(userID);
                    var deliv = client.getDelivertDetails("TECH Deliveries");

                    int ordernum = GenNumber();
                    transactionClass order = new transactionClass
                    {
                        clientId = userID,
                        PaymentId = payment.PaymentId,
                        DeliveryID = deliv.DeliveryID,
                        OrderNumber = ordernum,
                        OrderDate = DateTime.Today,
                        ShipDate = DateTime.Today,
                        tax = 15,
                        DeliveryStatus = "Inprogress",
                        PayemntStatus = "Accepted",
                        PaymentDate = DateTime.Today

                    };
                    bool deli = client.addToOrder(order);
                    var Order = client.getOrder(ordernum);
                    var cart = client.getUser_Cart(userID);
                    if (deli)
                    {
                        if (cart != null)
                        {
                            bool Invo = false;
                            foreach (CartClass c in cart)
                            {
                                transactionClass inv = new transactionClass
                                {
                                    ProId = c.productId,
                                    clientId = userID,
                                    OrderId = Order.OrderId,
                                    OrderNumber = order.OrderNumber,
                                    Quantity = c.Qty,
                                    price = Convert.ToDecimal(c.unit),
                                    Total = Convert.ToDecimal(c.Total),
                                    ShipDate = DateTime.Today.AddDays(2),
                                    PaymentDate = DateTime.Today
                                };
                                 Invo = client.addToInvoice(inv);
                            }

                            if (Invo)
                            {
                                bool verify = client.clearCart(userID);
                                if (verify)
                                {
                                    Response.Redirect("Invoicee.aspx?ID=" + total + "");
                                }
                            }
                        }

                    }
                }


            }
        
            else
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                    Response.Redirect("CheckOut.aspx?ID="+id+"");
            }
        }


           
            
        

        protected void BtnDiscount_Click(object sender, EventArgs e)
        {

        }

        public int GenNumber()
        {
            Random rand = new Random();
            return rand.Next(13268, 93652);
        }
    }
}