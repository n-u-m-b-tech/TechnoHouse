using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechWeb.TechService;

namespace TechWeb
{
    public partial class CartPage : System.Web.UI.Page
    {
        Techno_serviceClient client = new Techno_serviceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                int userId = Convert.ToInt32(Session["userID"]);
                var cart = client.getUser_Cart(userId);
                if (cart != null)
                {
                    foreach(CartClass c in cart)
                    {
                        TableRow row = new TableRow();
                        TableCell Name = new TableCell();
                        TableCell description = new TableCell();
                        TableCell qty = new TableCell();
                        TableCell total = new TableCell();
                        Name.Text = c.productName;
                        description.Text = c.productDescription;
                        qty.Text = Convert.ToString(c.Qty);
                        total.Text = Convert.ToString(c.Total);

                        row.Cells.Add(Name);
                        row.Cells.Add(description);
                        row.Cells.Add(qty);
                        row.Cells.Add(total);
                        cartTable.Rows.Add(row);
                    }
                }
            }
          

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //checkout
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //add  more items
        }

        protected void BtnPlus_Click(object sender, EventArgs e)
        {
            //add qty
        }

        protected void BtnMinus_Click(object sender, EventArgs e)
        {
              //min qty
        }
    }
}