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
    public partial class add_section : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select sec_name from [section] where sec_name=@un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", TextBox1.Text);
            conn.Open();
            object res = comm.ExecuteScalar();
            Label1.Visible = true;
            if (res == null)
            {
                    String q1 = "INSERT INTO section(sec_name, st_stack, cr_id,inst_id) VALUES (@name, @stack, @crid, @idd)";
                    comm1 = new SqlCommand(q1, conn);
                    comm1.Parameters.AddWithValue("@name", TextBox1.Text);
                    comm1.Parameters.AddWithValue("@stack", TextBox2.Text);
                    comm1.Parameters.AddWithValue("@crid", DropDownList1.SelectedValue);
                    comm1.Parameters.AddWithValue("@idd", DropDownList2.SelectedValue);
                    int res1 = comm1.ExecuteNonQuery();
                    if (res1 != 0)
                    {
                        Label1.Text = "section added successfully";
                    }
                    else
                    {
                        Label1.Text = "Error while  inserting into section, try again";
                    }

            }

            else
            {
                Label1.Text = "section Already available";
            }
            
        }
    } 
}