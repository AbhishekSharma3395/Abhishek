using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace extra
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            bindgridview();
        }

        void bindgridview()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from abhi";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();

        }

        void SearchDataByMale()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from abhi where gender = @male";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@male",MaleRadioButton.Text);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
        void SearchDataByFemale()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from abhi where gender = @female";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@female", FemaleRadioButton.Text);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if(MaleRadioButton.Checked==true)
        //    {
        //        SearchDataByMale();
        //    }
        //    else if (FemaleRadioButton.Checked == true)
        //    {
        //        SearchDataByFemale();
        //    }
        //    else if(BothRadioButton.Checked==true)
        //    {
        //        bindgridview();
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Please Select Gender')");
        //    }
        //}

        protected void MaleRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            SearchDataByMale();
        }

        protected void FemaleRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            SearchDataByFemale();
           
        }

        protected void BothRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            bindgridview();
        }
    }
}