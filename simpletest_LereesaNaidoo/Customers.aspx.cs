using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simpletest_LereesaNaidoo
{
    public partial class Customers : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string ChartData = "";

                var query = from s in db.Customers
                            select new
                            {
                               s.Customer_Id,
                                s.Name,
                                s.Surname,
                                s.AccountNumber
                            };


                foreach (var h in query)
                {

                    ChartData += "<tr><td>" + h.Name + "</td><td>" + h.Surname + "</td><td>" + h.AccountNumber + "</td><td>" + "<a href='viewcus.aspx?Id=" + h.Customer_Id + "' style='text-decoration: none'>View |</a>" +
                                  "<a href = 'deletecus.aspx?Id=" + h.Customer_Id + "' style='text-decoration: none'> Delete |</a><a href = 'changecus.aspx?Id=" + h.Customer_Id + "' style='text-decoration: none'> Update</a></td></tr>";

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