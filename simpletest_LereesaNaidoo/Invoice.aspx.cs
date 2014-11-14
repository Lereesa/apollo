﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simpletest_LereesaNaidoo
{
    public partial class Invoice : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string ChartData = "";
                string cname = "";

                var query = from s in db.InvoiceHeaders
                            join b in db.Customers on s.Customer_Id equals b.Customer_Id
                            join c in db.InvoiceRetails on s.Invoice_Id equals c.Invoice_Id
                            select new
                            {
                                s.Customer_Id,
                                s.Invoice_Id,
                                s.IDate,
                                b.Name,
                                b.Surname,
                                b.AccountNumber,
                                c.Item,
                                c.Quantity,
                                c.UnitCost,
                                c.Total
                            };


                foreach (var h in query)
                {
                    cname = "" + h.Name + " " + h.Surname;

                    ChartData += "<tr><td>" + cname + "</td><td>" + h.AccountNumber + "</td><td>" + h.IDate.ToShortDateString() + "</td><td>" + h.Item + "</td><td>" + h.Quantity + "</td><td>" +
                        "R " + h.UnitCost + "</td><td>" + "R " + h.Total + "</td></tr>";
                                  

                    if (ChartData.Contains("\r\n"))
                    {
                        ChartData = ChartData.Replace("\r\n", "");
                    }

                }

                lblDisplay.Text = ChartData;
            }
        }
    }
}