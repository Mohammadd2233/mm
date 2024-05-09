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
    public partial class cr_inst : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "SELECT [Id] FROM [ins_cr] WHERE (([cr_id] = @cr_id) AND ([inst_id] = @inst_id))";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@cr_id", course1.SelectedValue);
            comm.Parameters.AddWithValue("@inst_id", inst1.SelectedValue);
            conn.Open();
            object res = comm.ExecuteScalar();
            Label1.Visible = true;
            if (res == null)
            {

                String q1 = "INSERT INTO ins_cr(cr_id, inst_id) VALUES (@cr, @inst)";
                comm1 = new SqlCommand(q1, conn);
                
                comm1.Parameters.AddWithValue("@cr", course1.SelectedValue);
                comm1.Parameters.AddWithValue("@inst", inst1.SelectedValue);
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {
                    Label1.Text = "course added to instructor";
                }
                else
                {
                    Label1.Text = "Error while  inserting into section, try again";
                }
            }

            else
            {
                Label1.Text = "course is Already conect to doctor";
            }
        }
    }
}