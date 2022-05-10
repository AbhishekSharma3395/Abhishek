using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sessionlogin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add("Sno");
            table.Columns.Add("Name");
            table.Columns.Add("Address");
            table.Columns.Add("Role No");
            table.Columns.Add("Class");
            table.Columns.Add("Per");
            table.Columns.Add("Edit");
            table.Columns.Add("Delete");

            table.Rows.Add("1","Abhishek", "Sec 14", "1" ,"7th","75%","Edit","Delete");
            table.Rows.Add("2", "Tatkal", "Sec 13", "2", "8th", "55%", "Edit", "Delete");
            table.Rows.Add("3", "Asha", "Sec 12", "3", "9th", "95%", "Edit", "Delete");
            table.Rows.Add("4", "Payal", "Sec 11", "4", "10th", "85%", "Edit", "Delete");
            table.Rows.Add("5", "Suhani", "Sec 1", "5", "11th", "65%", "Edit", "Delete");


            DataList1.DataSource = table;
            DataList1.DataBind();

        }
      
    }
}