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
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!IsPostBack)
            {
                if(Request.Cookies["UNAME"] !=null && Request.Cookies["UPASS"] != null)
                {
                    txtUsername.Text = Request.Cookies["UNAME"].Value;
                    txtUserPass.Text = Request.Cookies["UPASS"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void btLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=MyEshoppingDB;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblUsers where Username=@txtUsername and Password=@txtUserPass", con);
            cmd.Parameters.AddWithValue("@txtUsername", txtUsername.Text);
            cmd.Parameters.AddWithValue("@txtUserPass", txtUserPass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count!=0)
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = txtUsername.Text;
                    Response.Cookies["UPASS"].Value = txtUserPass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["UPASS"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPASS"].Expires = DateTime.Now.AddDays(-1);
                }

                string Utype;
                Utype = dt.Rows[0][5].ToString().Trim();
                
                if (Utype == "User")
                {
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                if(Utype == "Admin")
                {
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }

            }
            else
            {
                lblError.Text = "Invalid Username And Password";
            }
           // Response.Write("<script>alert('Registration successfull');</script>");
            clr();
            con.Close();
           // lblMsg.Text = "Registration successfull";
            // lblMsg.ForeColor = System.Drawing.Color.Green;
        }

        private void clr()
        {
            txtUserPass.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtUsername.Focus();

        }
    }
}