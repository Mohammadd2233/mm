using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Absent_MG
{
    public partial class add_inst : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select name from [user] where email=@un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", TextBox2.Text);
            conn.Open();
            object res = comm.ExecuteScalar();
            Label1.Visible = true;
            if (res == null)
            {

                String q1 = "insert into [user] values(@name,@email,@pass,@utype)";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@name", TextBox1.Text);
                comm1.Parameters.AddWithValue("@email", TextBox2.Text);
                comm1.Parameters.AddWithValue("@pass", TextBox4.Text);
                comm1.Parameters.AddWithValue("@utype", "Instructor");
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {
                    String q2 = "insert into Instructor values(@id,@name,@email,@phno,@gn)";
                    comm2 = new SqlCommand(q2, conn);
                    comm2.Parameters.AddWithValue("@id", Convert.ToInt64(TextBox6.Text));
                    comm2.Parameters.AddWithValue("@name", TextBox1.Text);
                    comm2.Parameters.AddWithValue("@phno", TextBox5.Text);
                    comm2.Parameters.AddWithValue("@email", TextBox2.Text);
                    comm2.Parameters.AddWithValue("@gn", TextBox7.Text);

                    int res2 = comm2.ExecuteNonQuery();
                    conn.Close();
                    if (res2 == 1)
                    {
                        Label1.Text = "Instructor added, please login";
                    }
                    else
                    {
                        Label1.Text = "Error while inserting into Instructor table, try again";
                    }
                }
                else
                {
                    Label1.Text = "Error while  inserting into user Instructor table signing up, try again";
                }
            }

            else
            {
                Label1.Text = "Instructor Already available";
            }
        }
    }
}