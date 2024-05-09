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
    public partial class login : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String q = "select * from [user]  where [user].email=@un and [user].password=@pass";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", TextBox1.Text);
            comm.Parameters.AddWithValue("@pass", TextBox2.Text);
            conn.Open();
            SqlDataReader res = comm.ExecuteReader();
            if (res.HasRows == false)
            {
                Label1.Visible = true;
                Label1.Text = "Wrong username/password";
            }
            else
            {
                res.Read();
                Session.Add("uname", res["email"].ToString());
                Session.Add("utype", res["user_type"].ToString());
                Session.Add("n", res["name"].ToString());

                if (res["user_type"].ToString() == "admin")
                {
                    Response.Write("<script> alert('Login Successful')</script>");
                    Response.Redirect("admin.aspx");
                }
                else if (res["user_type"].ToString() == "Instructor")
                {
                    Response.Write("<script> alert('Login Successful')</script>");
                    Response.Redirect("ins_home.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Login Successful') </script>");
                    Response.Redirect("student.aspx");
                }
            }

        }
    }
}