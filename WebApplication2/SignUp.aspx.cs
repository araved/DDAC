using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication2
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void textsignup_Click(object sender, EventArgs e)
        {
            if(isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["eProAcademyDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUser(Username,Password,Email,Name,Usertype) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text +"','User')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Congratulations! You have successfully sign up at e-Pro Academy');  </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "Registration Successfully Done";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }
                Response.Redirect("~/SignIn.aspx");



            }
            else
            {
                Response.Write("<script> alert('Sorry, we are unable to register you. Please try again later.');  </script>");
                lblMsg.Text = "All fields are mandatory.";
                lblMsg.ForeColor = System.Drawing.Color.Red;



            }






        }

        private bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<script> alert('Username is not valid');  </script>");
                txtUname.Focus();

                return false;
            }
            else if (txtPass.Text == "")
            {
                Response.Write("<script> alert('Password is not valid');  </script>");
                txtPass.Focus();
                return false;
            }
            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert('Confirm Password does not match');  </script>");
                txtCPass.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email not valid');  </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtName.Text == "")
            {
                Response.Write("<script> alert('Name is not valid');  </script>");
                txtName.Focus();
                return false;
            }
            return true;
        }

        private void clr()
        {
            txtUname.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtCPass.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtName.Text = string.Empty;
            
        }
    }
}