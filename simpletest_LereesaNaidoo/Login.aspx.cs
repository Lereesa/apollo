using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Threading.Tasks;
using System.Data.SqlClient;

namespace simpletest_LereesaNaidoo
{
    public partial class Login : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            string email = "";
            string password = "";

            email = Email.Text;
            password = HashAlgorithm.HashPassword(Password.Text);


            var query = from m in db.Users
                        where m.Email.Equals(email)
                        select m;

            if (query.Count() > 0)
            {
                var psd = from n in db.Users
                          where n.Password.Equals(password)
                          select n;

                if (psd.Count() > 0)
                {
                    User usertable = new User();

                    Session["usertype"] = 1;
                    Session["userID"] = query.First().User_Id;
                    Session["username"] = query.First().Name;

                    Response.Redirect("~/Default.aspx");

                }
                else
                {
                    Email.Text = email;
                    Password.Text = "";
                    lblmessage.Text = "Password is incorrect.";
                }
            }
            else
            {
                lblemailmessage.Text = "Email does not exist.";
            }
        }
         
        }
    }