using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyEshoppingWebsite
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void txtsignup_Click(object sender, EventArgs e)
        {

            if(isformvalid())
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=MyEshoppingDB;Integrated Security=True");
                con.Open();
                  SqlCommand cmd = new SqlCommand("insert into tblUsers(Username,Password,Email,Name,UserType)Values('" + txtUname.Text + "', '" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "','User')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registration successfull');</script>");
                clr();
                con.Close();
                lblMsg.Text = "Registration successfull";
                lblMsg.ForeColor = System.Drawing.Color.Green;
               
            }
           
            else
            {
                Response.Write("<script>alert('Registration Failed');</script>");
                lblMsg.Text = "Registration Failed,Please Enter Right Details";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }

        }

        private bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<script>alert('User Name Not Valid');</script>");
                txtUname.Focus();
                return false;
            }
            else if (txtPass.Text != txtCpass.Text)
            {
                Response.Write("<script>alert('Confirm Password Not Valid');</script>");
                txtPass.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script>alert('Email Not Valid');</script>");
                txtEmail.Focus();
                return false;
              
            }
            else if (txtName.Text == "")
            {
                Response.Write("<script>alert('Name Not Valid');</script>");
                txtName.Focus();
                return false;
            }

            return true;

        }
            private void clr()
            {
                txtName.Text = string.Empty;
                txtPass.Text = string.Empty;
                txtUname.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtCpass.Text = string.Empty;
            }
          
    }
}