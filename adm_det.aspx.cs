using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Absent_MG
{
    public partial class adm_det : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String q = "SELECT excute.*, section.sec_name, course_schedu.cr_name FROM excute INNER JOIN section ON excute.sec_id = section.sec_Id INNER JOIN course_schedu ON excute.cr_id = course_schedu.cr_Id AND section.cr_id = course_schedu.cr_Id WHERE (excute.ex_Id = @un)";
                comm = new SqlCommand(q, conn);
                comm.Parameters.AddWithValue("@un", Request.QueryString["id"].ToString());
                conn.Open();
                SqlDataReader res = comm.ExecuteReader();
                res.Read();
                desc.Text = res["descrp"].ToString();
                exc1.Text = res["ex_type"].ToString();
                doc.ResolveUrl((MapPath("reports/" + res["doc"].ToString())));
                sec1.SelectedValue = res["sec_id"].ToString();
                cr1.SelectedValue = res["cr_id"].ToString();
               
                DateTime d1 = (DateTime)res["date"];
                date1.Text = d1.ToString();
                conn.Close();
            }

        }

        protected void Update1_Click(object sender, EventArgs e)
        {
            String q = "Update excute set status = @status , Response = @res where ex_id= @un ";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", Request.QueryString["id"].ToString());
            comm.Parameters.AddWithValue("@res", resp.Text);
            comm.Parameters.AddWithValue("@status", staus.SelectedValue);

            conn.Open();
            Label1.Visible = true;
            int res1 = comm.ExecuteNonQuery();
            if (res1 == 1)
            {
                string ss = " you have an update to your request, please check for more details";
                String q2 = "insert into [notif] values (@content,@date,@exc) ";
                comm2 = new SqlCommand(q2, conn);
                comm2.Parameters.AddWithValue("@content",ss);
                comm2.Parameters.AddWithValue("@date", DateTime.Now);
                comm2.Parameters.AddWithValue("@exc", Request.QueryString["id"].ToString());
                int res12 = comm2.ExecuteNonQuery();
                if (res12 == 1)
                {
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