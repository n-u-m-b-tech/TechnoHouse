using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class TransactionPage : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
         

            if (Session["userID"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                dynamic cart = client.getUser_Cart(id);
                
                if (cart != null)
                {
                    foreach (CartClass c in cart)
                    {
                        TableRow row = new TableRow();
                        TableCell Product_Name = new TableCell();
                        TableCell Unit_Price = new TableCell();
                        TableCell Quantity = new TableCell();
                        TableCell Total = new TableCell();
                        Product_Name.Text = c.productName;
                        Unit_Price.Text = Convert.ToString(c.unit);
                        Quantity.Text = Convert.ToString(c.Qty);
                        Total.Text = Convert.ToString(c.Total);

                        row.Cells.Add(Product_Name);
                        row.Cells.Add(Unit_Price);
                        row.Cells.Add(Quantity);
                        row.Cells.Add(Total);
                       confirmTable.Rows.Add(row);
                    }
                }
            }

        }

        protected void BtnDiscount_Click(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            //order button

            if (Session["userID"] != null)
            {
                Res
            }
        }
    }
}