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
    public partial class add_cr : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select cr_name from [course_schedu] where cr_symp=@un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", TextBox2.Text);
            conn.Open();
            object res = comm.ExecuteScalar();
            Label1.Visible = true;
            if (res == null)
            {

                String q1 = "insert into [course_schedu] values(@name,@idd,@cred,@stack)";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@name", TextBox1.Text);
                comm1.Parameters.AddWithValue("@idd", TextBox2.Text);
                comm1.Parameters.AddWithValue("@cred", TextBox3.Text);
                comm1.Parameters.AddWithValue("@stack", TextBox4.Text);
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {
                    
                    Label1.Text = "Course Added Successfully";
                    
                }
                else
                {
                    Label1.Text = "Error while  inserting into course, try again";
                }
            }

            else
            {
                Label1.Text = "course Already exsest";
            }
        }
    }
}