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
    public partial class notif : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1;//to execute query

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String q = "select * from [notif] where not_id= @un";
                comm = new SqlCommand(q, conn);
                comm.Parameters.AddWithValue("@un", Request.QueryString["id"].ToString());
                conn.Open();
                SqlDataReader res = comm.ExecuteReader();
                res.Read();
                TextBox1.Text = res["content"].ToString();
                DateTime d1 = (DateTime)res["date"];
                TextBox2.Text = d1.ToString();
                conn.Close();
            }

        }
    }
}