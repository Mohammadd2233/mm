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
    public partial class student : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm1;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null || Session["utype"].ToString() != "student")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Welcome <br/>" + Session["n"].ToString();
                String q1 = "select st_Id as stid from [Student] where email=@ct";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@ct", Session["uname"].ToString());
                conn.Open();
                SqlDataReader res = comm1.ExecuteReader();
                if (res.HasRows == true)
                {
                    res.Read();
                    Session.Add("idd", res["stid"].ToString());
                }
                conn.Close();

            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            {
                Session.Clear();
                Session.Abandon();
                Response.Redirect("home.aspx");
            }
        }

        public string getten(object mm)
        {
            string a = Convert.ToString(mm.ToString());
            string b = "";
            if (a.Length >= 10)
            {
                b = a.Substring(0, 10);
                return b.ToString() + "..";
            }
            else { return b.ToString() + ".."; }
        }
    }
}