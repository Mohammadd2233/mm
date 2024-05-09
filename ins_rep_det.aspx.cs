using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Absent_MG
{
    public partial class ins_rep_det : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String q = "SELECT section.sec_name, excute.ex_Id, excute.date, excute.ex_type, excute.descrp, excute.status, excute.Response, student.name, student.st_Id, student.email FROM section INNER JOIN excute ON section.sec_Id = excute.sec_id INNER JOIN instructor ON section.inst_id = instructor.Inst_Id INNER JOIN ins_cr ON instructor.Inst_Id = ins_cr.inst_id AND excute.cr_id = ins_cr.cr_id INNER JOIN student ON excute.st_id = student.st_Id WHERE (excute.ex_Id = @un)";
                comm = new SqlCommand(q, conn);
                comm.Parameters.AddWithValue("@un", Request.QueryString["id"].ToString());
                conn.Open();
                SqlDataReader res = comm.ExecuteReader();
                res.Read();
                desc.Text = res["descrp"].ToString();
                exc1.Text = res["ex_type"].ToString();
                name1.Text = res["name"].ToString();
                stid.Text = res["st_Id"].ToString();
                sec1.Text = res["sec_name"].ToString();
                resp.Text = res["Response"].ToString();
                status1.Text = res["status"].ToString();
                Session.Add("stemail",res["email"].ToString());
                DateTime d1 = (DateTime)res["date"];
                date1.Text = d1.ToString();
                conn.Close();
            }
        }

        protected void Update1_Click(object sender, EventArgs e)
        {
            String q = "Update excute set status = @status where ex_id= @un ";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", Request.QueryString["id"].ToString());
            comm.Parameters.AddWithValue("@status", staus.SelectedValue);

            conn.Open();
            Label1.Visible = true;
            int res1 = comm.ExecuteNonQuery();
            if (res1 == 1)
            {
                string ss = name1.Text + " you have an update to your request from Instroctur , " + Session["n"].ToString() +" for request "+ Request.QueryString["id"].ToString()+" please check for more details";
                String q2 = "insert into [notif] values (@content,@date,@exc) ";
                comm2 = new SqlCommand(q2, conn);
                comm2.Parameters.AddWithValue("@content", ss);
                comm2.Parameters.AddWithValue("@date", DateTime.Now);
                comm2.Parameters.AddWithValue("@exc", Request.QueryString["id"].ToString());
                int res12 = comm2.ExecuteNonQuery();
                if (res12 == 1)
                {
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                    var mail = new MailMessage();
                    mail.From = new MailAddress(Session["uname"].ToString(), name1.Text);
                    mail.To.Add(new MailAddress(Session["stemail"].ToString() , "Absent Tecnic support")); // receiver email address
                    mail.IsBodyHtml = true;
                    mail.Subject ="A new Upate on requset "+ name1.Text;
                    mail.Body = ss ;
                    SmtpServer.Port = 587;
                    SmtpServer.UseDefaultCredentials = false;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("mgabsent@gmail.com", "pgcb usre vhfg xpfp\r\n");
                    SmtpServer.EnableSsl = true;
                    SmtpServer.Send(mail);

                    Label1.Text = "Excuse status Updated Successfully";
                }
                else
                {
                    Label1.Text = "Error while  inserting into Excuse, try again";
                }
            }
            else
            {
                Label1.Text = "Error while  inserting into Excuse, try again";
            }
        }
    }
}