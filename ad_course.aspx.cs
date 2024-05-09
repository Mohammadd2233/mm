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
    public partial class ad_course : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select cr_name from [course_schedu] where cr_name=@un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", TextBox1.Text);
            conn.Open();
            object res = comm.ExecuteScalar();
            Label1.Visible = true;
            if (res == null)
            {

                String q1 = "insert into [course_schedu] values(@name,@sympl,@hrr,@sec)";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@name", TextBox1.Text);
                comm1.Parameters.AddWithValue("@sympl", TextBox4.Text);
                comm1.Parameters.AddWithValue("@hrr", TextBox2.Text);
                comm1.Parameters.AddWithValue("@sec", TextBox3.Text);
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                { 
                        Label1.Text = "Course added, please login";   
                }
                else
                {
                    Label1.Text = "Error while  inserting into user , try again";
                }
            }

            else
            {
                Label1.Text = "Course is here";
            }
        }
    }
}