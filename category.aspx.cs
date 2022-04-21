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
    public partial class category : System.Web.UI.Page
    {
        classes cs = new classes();
        string query = "";
        DataTable dt, dt1 = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["dtUser"] != null)
                {
                    Get_WebTitle(); 
                }
                else
                {
                    Response.Redirect("~/pages/default.aspx");
                }

            }
        }

        protected void imginsert()
        {
            try
            {
                if (FileUpload2.HasFile)
                {
                    FileUpload2.SaveAs(Server.MapPath("~/Files/CategoryFile") + FileUpload2.FileName);
                    string sql = "insert into category(name,pic,isactive) values('" + txtcname.Text + "','" + FileUpload2.FileName + "','" + 1+ "')";
                    cs.insert(sql);
                    string temp2s = "alertify.notify(`Record save successfully`, 'success', 3, function(){  console.log('dismissed'); });";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
                }
            }
            catch (Exception ex)
            {
                string a = ex.Message;
                string temp2s = "alertify.notify( a.ToString , 'danger', 3, function(){  console.log('dismissed') });";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
            }
        }

        protected void Get_WebTitle()   // grid view 
        {
            dt = cs.SelectQuery("select * from category order by id desc");
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

       
        protected void gvedit_Click(object sender, EventArgs e)
        {
            txtcname.Focus();
            int rowid = ((GridViewRow)((LinkButton)sender).Parent.Parent).RowIndex;
            string Id = Gvdetail.DataKeys[rowid]["Id"].ToString();
            query = "update category set name='"+txtcname.Text+"' where id='"+Id+"' ";
            dt = cs.SelectQuery(query);
            if (dt.Rows.Count > 0 && dt != null)
            {
                txtcname.Text = dt.Rows[0]["name"].ToString();
                try
                {
                    txtcname.Text = dt.Rows[0]["name"].ToString();
                }
                catch { }
                txtcname.Text = "name";
                ViewState["id"] = Id;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            imginsert(); 
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
             string query = "update category set name='" + txtcname.Text + "'where id='1'";
            cs.update(query);
            Response.Write("<script>alert('Data Updated')</script>");
        }
        protected void adcheak_CheckedChanged(object sender, EventArgs e)
        {
            GridViewRow rows = (GridViewRow)((CheckBox)sender).NamingContainer;
            CheckBox chkcheckbox = rows.FindControl("CheakIsActive") as CheckBox;
            int rowid = ((GridViewRow)((System.Web.UI.WebControls.CheckBox)sender).Parent.Parent).RowIndex;
            string Id = Gvdetail.DataKeys[rowid]["Id"].ToString();
            if (chkcheckbox.Checked == true)
            {
                string sql = "update category set [isactive]='1' where id='" + Id + "'  ";
                cs.update(sql);
                string temp2s = "alertify.notify(`Active `, 'success', 3, function(){  console.log('dismissed'); });";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
            }
            else
            {
                string sql = "update category set [isactive]='0' where id='" + Id + "'  ";
                cs.update(sql);
                string temp2s = "alertify.notify(`De-Active `, 'warning', 3, function(){  console.log('dismissed'); });";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
            }
        }
    }
}