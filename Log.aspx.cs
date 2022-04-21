using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;

namespace RegisterAndLogIn
{
    public partial class Log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=RegistrationDB;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*)FROM RegistrationTbl WHERE username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
            cmd.Connection = con;
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
            if (OBJ > 0)
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = "Invalid username or password";
                this.Label1.ForeColor = Color.Red;
                Label2.Text = "Invalid username or password";
                this.Label2.ForeColor = Color.Purple;
            }
        }
      
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}