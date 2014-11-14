using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simpletest_LereesaNaidoo
{
    public partial class addcus : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnaddcustomer_Click(object sender, EventArgs e)
        {
            string cname = "";
            string csurname = "";
            string caccount = "";

            cname = txtname.Text;
            csurname = txtsurname.Text;
            caccount = txtaccount.Text;

            if ((txtname.Text != "") || (txtsurname.Text != "") || (txtaccount.Text != ""))
            {
                try
                {
                    Customer ctable = new Customer();

                    ctable.Name = cname;
                    ctable.Surname = csurname;
                    ctable.AccountNumber = caccount;

                    db.Customers.InsertOnSubmit(ctable);
                    db.SubmitChanges();

                    Response.Redirect("Customers.aspx");
                }
                catch (Exception ex)
                {
                    txtname.Text = cname;
                    txtsurname.Text = csurname;
                    txtaccount.Text = caccount;

                    lblerrorsample.Text = ex.Message;
                }
            }
            else
            {
                txtname.Text = cname;
                txtsurname.Text = csurname;
                txtaccount.Text = caccount;

                lblerrorsample.Text = "Please fill in all the fields.";
            }

        }
    }
}