using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalWeb.TechService;

namespace FinalWeb
{
    public partial class Add : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                String que = Request.QueryString["ID"];
                String[] param = que.Split('@');
                String proId = param[0];
                String instr = param[1];
               
                int ID = Convert.ToInt32(proId);
                var pro = client.productinfor_retrieval_ID(ID);
                int userId = Convert.ToInt32(Session["userID"].ToString());
                if (instr.Equals("Add"))
                {
                    bool val = client.Add_to_Cart(pro, userId, 1);
                    if (val)
                    {
                        Response.Redirect(Request.UrlReferrer.ToString());
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }else if(instr.Equals("Remove"))
                {
                    bool ver = client.removeItem(userId, Convert.ToInt32(proId));
                    if (ver)
                    {
                        Response.Redirect(Request.UrlReferrer.ToString());
                    }
                }else if (instr.Equals("Increase"))
                {
                    bool ver = client.increaseQue(Convert.ToInt32(proId), userId, 1);
                    if (ver)
                    {
                        Response.Redirect(Request.UrlReferrer.ToString());
                    }
                }else if (instr.Equals("Decrease"))
                {
                    bool ver = client.increaseQue(Convert.ToInt32(proId), userId, -1);
                    if (ver)
                    {
                        Response.Redirect(Request.UrlReferrer.ToString());
                    }

                }else if (instr.Equals("CANCEL"))
                {
                    var Order = client.getOrder(Convert.ToInt32(proId));
                    if (Order != null)
                    {
                        int payId = Order.PaymentId;
                        var payment = client.getpayement(Convert.ToInt32(Session["userID"].ToString()));
                        if (payment != null)
                        {
                            Decimal Refund = payment.Total;

                            WalletClass wallet = new WalletClass
                            {
                                userID = Convert.ToInt32(Session["userID"].ToString()),
                                amount = Convert.ToDouble(Refund),
                                status = "REFUND FROM CANCELLED ORDER"

                            };
                            bool ver = client.AddToWallet(Convert.ToInt32(Session["userID"].ToString()), wallet);
                            if (ver)
                            {
                                bool delo = client.deleteOrder(Order.OrderNumber);
                                if (delo)
                                {
                                    bool paydel = client.deletepay(payId);
                                    if (paydel)
                                    {
                                        bool invoiceDel = client.deleteInvoice(Order.OrderNumber);
                                        if (invoiceDel)
                                        {
                                            Response.Redirect("Catalog.aspx?ID=ALL");
                                        }
                                        else
                                        {
                                            Response.Redirect("Home.aspx");
                                        }
                                    }
                                }
                                else
                                {
                                    Response.Redirect("Catalog.aspx?ID=ALL");
                                }

                            }
                            else
                            {
                                Response.Redirect("Home.aspx");
                            }
                        }
                        else
                        {
                            Response.Redirect("Home.aspx");
                        }

                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
               
                }


            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }
    }
}