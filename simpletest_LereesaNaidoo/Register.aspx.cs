using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;

namespace simpletest_LereesaNaidoo
{
    public partial class Register : System.Web.UI.Page
    {
        NewDataClassesDataContext db = new NewDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string uname = UserName.Text;
            string uemail = Email.Text;
            string upass = Password.Text;
            string uconpass = ConfirmPassword.Text;


            if (upass.Equals(uconpass))
            {
                if (IsValidEmail(uemail))
                {

                    if ((uname != "") && (uemail != "") && (upass != ""))
                    {
                        try
                        {
                            var qry = from m in db.Users
                                      where m.Email == uemail
                                      select m;

                            if (qry.Count() == 0)
                            {
                                User usertable = new User();

                                usertable.Name = uname;
                                usertable.Email = uemail;
                                usertable.Password = HashAlgorithm.HashPassword(upass);

                                db.Users.InsertOnSubmit(usertable);
                                db.SubmitChanges();

                                Response.Redirect("~/Login.aspx");
                            }
                            else
                            {
                                lblemailmessage.Text = "Email has already been registered.";
                            }
                        }
                        catch (Exception ex)
                        {
                            UserName.Text = uname;
                            Email.Text = uemail;
                            Password.Text = upass;
                            ConfirmPassword.Text = uconpass;

                            ErrorMessage.Text = ex.Message;
                        }
                    }
                    else
                    {
                        UserName.Text = uname;
                        Email.Text = uemail;
                        Password.Text = upass;
                        ConfirmPassword.Text = uconpass;

                        ErrorMessage.Text = "All fields must be filled. ";
                    }
                }
                else
                {
                    UserName.Text = uname;
                    Email.Text = uemail;
                    Password.Text = upass;
                    ConfirmPassword.Text = uconpass;

                    lblemailmessage.Text = "Email is in correct. Please re-enter email.";
                }
            }
            else
            {
                UserName.Text = uname;
                Email.Text = uemail;
                Password.Text = upass;
                ConfirmPassword.Text = uconpass;

                lblmessage.Text = "Passwords do not match";
            }

        }

        public static bool IsValidEmail(string strIn)
        {
            // Return true if strIn is in valid e-mail format.
            return Regex.IsMatch(strIn,@"^(?("")(""[^""]+?""@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$");
        }

    }
}
