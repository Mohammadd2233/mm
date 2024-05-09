using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Absent_MG
{
    public partial class stud_cr : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
            String sql;
            sql = "SELECT st_id,Name FROM [student] where Name LIKE '%" + TextBox1.Text + "%'";

            SqlCommand comm = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader reader = comm.ExecuteReader();
            stlist.DataSource = reader;
            stlist.DataTextField = "Name";
            stlist.DataValueField="st_Id";
            stlist.DataBind();

            reader.Close();
            conn.Close();

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {

            
                String q = "select st_id from [st_cr] where st_id=@idd and cr_id=@cr and sec_id=@sec";
                comm = new SqlCommand(q, conn);
                comm.Parameters.AddWithValue("@cr", DropDownList1.SelectedValue);
                comm.Parameters.AddWithValue("@sec", DropDownList2.SelectedValue);
                comm.Parameters.AddWithValue("@idd", stlist.SelectedValue);
                conn.Open(); 
                object res = comm.ExecuteScalar();
                Label1.Visible = true;
                if (res == null)
                {
                    String q1 = "INSERT INTO st_cr(cr_id, st_id, sec_id) VALUES (@cr, @idd, @sec)";
                    comm1 = new SqlCommand(q1, conn);
                    comm1.Parameters.AddWithValue("@cr", DropDownList1.SelectedValue);
                    comm1.Parameters.AddWithValue("@idd", stlist.SelectedValue);
                    comm1.Parameters.AddWithValue("@sec", DropDownList2.SelectedValue);
                    int res1 = comm1.ExecuteNonQuery();
                    if (res1 ==1)
                    {
                        String q2 = "update section set st_stack = st_stack - 1 where sec_id = @idd";
                        comm2 = new SqlCommand(q2, conn);
                        comm2.Parameters.AddWithValue("@idd", DropDownList2.SelectedValue);
                        
                        int res2 = comm2.ExecuteNonQuery();
                        if (res2 ==1)
                        {
                            Label1.Text = "section added successfully";

                        }
                        else
                        {
                        Label1.Text = "section added successfully, but not update a stack";

                        }
                    }
                    else
                    {
                        Label1.Text = "Error while  inserting into section, try again";
                    }

                }

                else
                {
                    Label1.Text = "Student Already available";
                }

            
            
        }
    }
}