using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace insert
{
    public partial class Insert : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
    
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=dd;Integrated Security=True");
            con.Open();
            string query = "insert into Table_1 (id,name,pass,eid) values (@id,@name,@pass,@eid)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@eid", TextBox3.Text);
            cmd.Parameters.AddWithValue("@id", TextBox4.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data inserted successfully')</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=dd;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete Table_1 where id=@id", con);
            cmd.Parameters.AddWithValue("@id", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data Deleted successfully')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=dd;Integrated Security=True");
            con.Open();
            string query = "update Table_1 set name=@name,pass=@pass,eid=@eid where id=@id";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@eid", TextBox3.Text);
            cmd.Parameters.AddWithValue("@id", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Data Update successfully')</script>");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=dd;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Table_1 where id=@id", con);
            cmd.Parameters.AddWithValue("id",(TextBox4.Text));
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-10P465B;Initial Catalog=dd;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Table_1", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

    }
}