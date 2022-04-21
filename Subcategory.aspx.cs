using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using iTextSharp.text.html;
using iTextSharp.text.xml;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;


namespace Allforms.pages
{
    public partial class Subcategory : System.Web.UI.Page
    {
        classes cs = new classes();
        string query = "";
        DataTable dt, dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {           
                drop_bound();
                Get_WebTitle();
            }

        }

        protected void drop_bound()
        {

            query = "Select id,name from category where isactive='1'";
            dt1 = cs.select(query);
            if (dt1 != null && dt1.Rows.Count > 0)
            {
                DropDownList1.DataSource = dt1;
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
            }
            else
            {
                DropDownList1.Items.Insert(0, "select");
            }
        }
        protected void Get_WebTitle()   // grid view 
        {
            dt = cs.select("select * from subcategory order by id desc");
            if (dt != null && dt.Rows.Count > 0)
            {
                Gvdetail.DataSource = dt;
                Gvdetail.DataBind();
            }
            else
            {
                Gvdetail.DataSource = null;
                Gvdetail.DataBind();
            }
        }
     

        protected void Button1_Click(object sender, EventArgs e)
        {
              if (filesub.HasFile)
                {
                    try
                    {
                        filesub.SaveAs(Server.MapPath("~/Files/CategoryFile/") + filesub.FileName);
                        string query = "insert into subcategory (catId,sname,payment,documents,isactive) values('" + DropDownList1.Text + "','" + subcat.Text + "','" + txtpayment.Text + "','" + filesub.FileName + "','" + 1 + "')";
                        cs.insert(query);
                        string temp2s = "alertify.notify(`Record save successfully`, 'success', 3, function(){  console.log('dismissed'); });";
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
                    }
                    catch(Exception ex)
                    {
                        string a = ex.Message;
                        string temp2s = "alertify.notify( a.ToStrin0g , 'danger', 3, function(){  console.log('dismissed'); });";
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
                    }
                 }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string query = "update category set sname='" + subcat.Text + "' where id='" + subcat.Text + "' ";
            cs.update(query);
            Response.Write("<script>alert('Data Updated')</script>");
        }
        protected void CheakIsActive_CheckedChanged(object sender, EventArgs e)
        {
            GridViewRow rows = (GridViewRow)((CheckBox)sender).NamingContainer;
            CheckBox chkcheckbox = rows.FindControl("CheakActive") as CheckBox;
            int rowid = ((GridViewRow)((System.Web.UI.WebControls.CheckBox)sender).Parent.Parent).RowIndex;
            string Id = Gvdetail.DataKeys[rowid]["id"].ToString();
            if (chkcheckbox.Checked == true)
            {
                string sql = "update subcategory set [isActive]='1' where id='" + Id + "'  ";
                cs.update(sql);
                string temp2s = "alertify.notify(`Active `, 'success', 3, function(){  console.log('dismissed'); });";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true); Get_WebTitle();
            }
            else
            {
                string sql = "update subcategory set [isActive]='0' where id='" + Id + "'  ";
                cs.update(sql);
                string temp2s = "alertify.notify(`De-Active `, 'warning', 3, function(){  console.log('dismissed'); });";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true); Get_WebTitle();
            }
        }

        protected void gvedit_Click(object sender, EventArgs e)
        {
            subcat.Focus();
            int rowid = ((GridViewRow)((LinkButton)sender).Parent.Parent).RowIndex;
            string Id = Gvdetail.DataKeys[rowid]["id"].ToString();
            query = "update subcategory set sname='" + subcat.Text + "' where id='" + id + "' ";
            dt = cs.SelectQuery(query);
            if (dt.Rows.Count > 0 && dt != null)
            {
                subcat.Text = dt.Rows[0]["sname"].ToString();
                try
                {
                    subcat.Text = dt.Rows[0]["sname"].ToString();
                }
                catch { }
                subcat.Text = "name";
                ViewState["id"] = Id;

            }
            subcat.Text = dt.Rows[0]["sname"].ToString();
            try
            {
                subcat.Text = dt.Rows[0]["sname"].ToString();
            }
            catch { }
            subcat.Text = "sname";
            ViewState["id"] = Id;
        }
    }
    }
