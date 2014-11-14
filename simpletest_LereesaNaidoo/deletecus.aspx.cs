using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simpletest_LereesaNaidoo
{
    public partial class deletecus : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpRequest q = Request;
            string v = q.QueryString["Id"];
            Session["delCustId"] = v;

            var query = from s in db.Customers
                        where s.Customer_Id.Equals(Convert.ToUInt32(v))
                        select s;

            foreach (var h in query)
            {
                delcust.Text = "" + h.Name + " " + h.Surname;
            }
        }

        protected void btndelcustomer_Click(object sender, EventArgs e)
        {
            try
            {
                

                var query3 = from f in db.InvoiceHeaders
                             where f.Customer_Id.Equals(Convert.ToUInt32(Session["delCustId"]))
                             select f;

                foreach (var h in query3)
                {
                    db.InvoiceHeaders.DeleteOnSubmit(h);

                }


                var query = from s in db.Customers
                            where s.Customer_Id.Equals(Convert.ToUInt32(Session["delCustId"]))
                            select s;

                foreach (var h in query)
                {
                    db.Customers.DeleteOnSubmit(h);

                }

                db.SubmitChanges();

                Response.Redirect("Customers.aspx");
            }
            catch (Exception ex)
            {
                lblerrorsample.Text = ex.Message;
            }

        }

        protected void btnsavecustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customers.aspx");
        }
    }
}