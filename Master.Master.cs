using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace MedicalHospital
{
    public partial class Master : System.Web.UI.MasterPage
    {


        classes cs = new classes();

        public object ClientScript { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!IsPostBack)
                {
                    faculty();


                }
            }
        }
        protected void SendMail()
        {
            string url = Request.Url.Host;
            #region Email
            MailMessage mail = new MailMessage();
            mail.To.Add("info@pacific-university.ac.in ");
            mail.From = new MailAddress("it@pacific-university.ac.in");
            mail.Subject = "Enquiry From Website " + url + "";
            mail.Body = "<table width=100%>" +
                "<tr><td width=40%>1. <b> Name </b></td>" + "<td width=60%>" + txt_name.Text + "</td>" +
                "</tr><br><tr><td width=40%>2. <b> Faculty </b></td>" + "<td width=60%>" + ddlfaculy.SelectedItem.Text.ToUpper() + "</td></tr><br><tr><td width=40%>3. <b> Course </b></td>" + "<td width=60%>" + ddlcourse.SelectedItem.Text.ToUpper() + "</td></tr><br><tr><td width=40%>4. <b> Email-Id </b></td>" + "<td width=60%>" + txt_email.Text + "</td></tr><br><tr><td width=40%>5. <b> Contact No </b></td>" + "<td width=60%>" + txtphone.Text + "</td></tr><br><tr><td width=40%>6. <b> Email </b></td>" + "<td width=60%>" + txt_email.Text + "</td></tr></Table>";
            string body = "From: " + txt_name.Text + "\n";
            body += "Faculty: " + ddlfaculy.SelectedItem.Text + "\n";
            body += "Course: " + ddlcourse.SelectedItem.Text + "\n";
            body += "Email: " + txt_email.Text + "\n";
            body += "Phone No.: " + txtphone.Text + "\n";
            mail.Body = body;
            mail.IsBodyHtml = true;
            SmtpClient client = new SmtpClient();
            client.UseDefaultCredentials = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.Credentials =
            new System.Net.NetworkCredential("it@pacific-university.ac.in", "paheritemail@2019");
            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
            }
            #endregion
        }


        protected void faculty()
        {
            string url = Request.Url.Host;
            DataTable dt = cs.select("select * from faculty f inner join website w on f.webid=w.id  where f.isActive='1' and w.website like ('%" + url + "%')");
            ddlfaculy.DataSource = dt;
            ddlfaculy.DataTextField = "faculty";
            ddlfaculy.DataValueField = "id";
            ddlfaculy.DataBind();
            ddlfaculy.Items.Insert(0, new ListItem("--Select Faculty--", "0"));
            
        }
        protected void course()
        {
           
            DataTable dt = cs.select("select * from course where isActive='1' and facultyid='" + ddlfaculy.SelectedValue + "'");
            ddlcourse.DataSource = dt;
            ddlcourse.DataTextField = "course";
            ddlcourse.DataValueField = "id";
            ddlcourse.DataBind();
            ddlcourse.Items.Insert(0, new ListItem("--Select Course--", "0"));



        }
        protected void submit_Click(object sender, EventArgs e)
        {
            if (ddlfaculy.SelectedValue != "Select Faculty" && txtphone.Text != "" && txt_email.Text != "" && txt_name.Text != "" && ddlcourse.SelectedValue != "Select Course")
            {
                string url = Request.Url.Host;
                DataTable dt = cs.select("select * from  Enquiries where email= N'" + txt_email.Text + "' and website = '" + url + "' and facultyName = '" + ddlfaculy.SelectedItem.Text + "' and courseName ='" + ddlcourse.SelectedItem.Text + "' and enquirytime='" + Convert.ToDateTime(DateTime.Now).ToString("yyyy/MM/dd") + "' ");
                if (dt.Rows.Count == 0)
                {

                    string sql = "insert into Enquiries(name,email,mobile,website,facultyname,coursename,enquirytime)values(N'" + txt_name.Text + "',N'" + txt_email.Text + "','" + txtphone.Text + "','" + url + "','" + ddlfaculy.SelectedItem.Text + "','" + ddlcourse.SelectedItem.Text + "','" + Convert.ToDateTime(DateTime.Now).ToString("yyyy/MM/dd") + "')";
                    cs.ExecuteQuery(sql);
                    txtphone.Text = ""; txt_email.Text = ""; txt_name.Text = ""; ddlcourse.Items.Clear(); ddlfaculy.Items.Clear();
                    txtphone.Text = "";
                    faculty(); 
                    
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                  //s  SendMail();
                }
                else
                {
                    string temp2s = "alertify.notify( 'Inquiry already exist' , 'error', 3, function(){  console.log('dismissed'); });";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
                }
            }
            else
            {
                string temp2s = "alertify.notify( 'Check All Field' , 'error', 3, function(){  console.log('dismissed'); });";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert4", temp2s, true);
            }
        }
        protected void ddlfaculy_clickevent(object sender, EventArgs e)
        {
            if (ddlfaculy.SelectedValue != "0")
            {
                course();
            }
            else
            {

            }
        }
        protected void ddlcourse_clickevent(object sender, EventArgs e)
        {
         
        }






    }

}