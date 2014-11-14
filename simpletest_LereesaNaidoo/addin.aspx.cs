using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simpletest_LereesaNaidoo
{
    public partial class addin : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from s in db.Customers
                        where s.Customer_Id.Equals(Convert.ToUInt32(Session["CustomerId"]))
                        select new
                        {
                            s.Name,
                            s.Surname
                        };

            foreach (var h in query)
            {
                cusname.Text = "" + h.Name + " " + h.Surname; 
            }

            back.Text = "<b><a href='viewcus.aspx?Id=" + Convert.ToUInt32(Session["CustomerId"]) + "' style='text-decoration: none'> Back </a></b>";
        }

        protected void btnaddinvoice_Click(object sender, EventArgs e)
        {
            string newitem = "";
            int itemquantity = 0;
            double imoney = 0;
            double totalmoney = 0;
            DateTime idate;

            idate = DateTime.Parse(txtdate.Text);
            newitem = txtitem.Text;
            itemquantity = Convert.ToInt32(txtquant.Text);
            imoney = Convert.ToDouble(txtcost.Text);

            totalmoney = itemquantity * imoney;

            if ((txtdate.Text != "") || (txtitem.Text != "") || (txtquant.Text != "") || (txtcost.Text != ""))
            {
                try
                {
                    InvoiceRetail irtable = new InvoiceRetail();

                    irtable.Invoice_Id = 14;
                    irtable.Item = newitem;
                    irtable.Quantity = itemquantity;
                    irtable.UnitCost = Convert.ToDecimal(imoney);
                    irtable.Total = Convert.ToDecimal(totalmoney);

                    db.InvoiceRetails.InsertOnSubmit(irtable);
                    db.SubmitChanges();

                    int maxId = (from c in db.InvoiceRetails
                                 select c.Invoice_Id).Max();

                    InvoiceHeader ihtable = new InvoiceHeader();

                    ihtable.IDate = idate;
                    ihtable.Customer_Id = Convert.ToInt32(Session["CustomerId"]);
                    ihtable.Invoice_Id = maxId;

                    db.InvoiceHeaders.InsertOnSubmit(ihtable);
                    db.SubmitChanges();

                    Response.Redirect("viewcus.aspx?Id=" + Session["CustomerId"]);

                }
                catch (Exception ex)
                {
                    txtdate.Text = Convert.ToString(idate);
                    txtitem.Text = newitem;
                    txtquant.Text = itemquantity.ToString();
                    txtcost.Text = imoney.ToString();

                    lblerrorsample.Text = ex.Message;
                }

            }
            else
            {
                txtdate.Text = Convert.ToString(idate);
                txtitem.Text = newitem;
                txtquant.Text = itemquantity.ToString();
                txtcost.Text = imoney.ToString();

                lblerrorsample.Text = "Please fill in all fields.";

   
            }



        }
    }
}