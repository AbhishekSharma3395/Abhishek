using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;


namespace RegisterAndLogIn
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             //you can use disconnected architecture also,here i have used connected architecture.
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=RegistrationDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into RegistrationTbl values(@username,@password,@phone,@email)", con);
                cmd.Parameters.AddWithValue("username", TextBox1.Text);
                cmd.Parameters.AddWithValue("password", TextBox2.Text);
                cmd.Parameters.AddWithValue("phone", TextBox4.Text);
                cmd.Parameters.AddWithValue("email", TextBox5.Text);
                cmd.ExecuteNonQuery();
                Session["name"] = TextBox1.Text;
                Response.Redirect("Log.aspx");
                con.Close();
            }
        
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=RegistrationDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from RegistrationTbl where username='" + TextBox1.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Label1.Text = "User Name is Already Exist";
                    this.Label1.ForeColor = Color.Red;
                }
                else
                {
                    Label1.Text = "UserName is Available";
                    this.Label1.ForeColor = Color.Green;
                }
                con.Close();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
                Response.Redirect("Log.aspx");
        
        }
    }
}