using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simpletest_LereesaNaidoo
{
    public partial class changecus : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpRequest q = Request;
            string v = q.QueryString["Id"];
            Session["changeCustId"] = v;

            var query = from s in db.Customers
                        where s.Customer_Id.Equals(Convert.ToUInt32(v))
                        select s;

            foreach (var h in query)
            {
                cusname.Text = "" + h.Name + " " + h.Surname;
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string cname = txtname.Text;
            string csurname = txtsurname.Text;
            string caccount = txtaccount.Text;

            
                try
                {
                    if ((txtname.Text != "") && (txtsurname.Text != "") && (txtaccount.Text != ""))
                    {
                    var query = from s in db.Customers
                                where s.Customer_Id.Equals(Convert.ToUInt32(Session["changeCustId"]))
                                select s;

                    foreach (Customer cus in query)
                    {
                        cus.Name = txtname.Text;
                        cus.Surname = txtsurname.Text;
                        cus.AccountNumber = txtaccount.Text;
                    }

                        db.SubmitChanges();

                        Response.Redirect("Customers.aspx");

                }
             if (txtname.Text != "") 
             {
                        var query = from s in db.Customers
                                    where s.Customer_Id.Equals(Convert.ToUInt32(Session["changeCustId"]))
                                    select s;

                        foreach (Customer cus in query)
                        {
                            cus.Name = txtname.Text;
                            
                        }

                        db.SubmitChanges();

                        Response.Redirect("Customers.aspx");
             }
             if(txtsurname.Text != "")
            {
                var query = from s in db.Customers
                            where s.Customer_Id.Equals(Convert.ToUInt32(Session["changeCustId"]))
                            select s;

                foreach (Customer cus in query)
                {
                    cus.Surname = txtsurname.Text;

                }

                db.SubmitChanges();

                Response.Redirect("Customers.aspx");
            }
             if (txtaccount.Text != "")
             {
                 var query = from s in db.Customers
                             where s.Customer_Id.Equals(Convert.ToUInt32(Session["changeCustId"]))
                             select s;

                 foreach (Customer cus in query)
                 {
                     cus.AccountNumber = txtaccount.Text;

                 }

                 db.SubmitChanges();

                 Response.Redirect("Customers.aspx");
             }
             if ((txtname.Text == "") && (txtsurname.Text == "") && (txtaccount.Text == ""))
             {
                 lblerrorsample.Text = "Please make sure you have filled in the required fields.";
             }
                
               }
            catch (Exception ex)
                {
                    lblerrorsample.Text = ex.Message;
                }
           

        }
    }
}