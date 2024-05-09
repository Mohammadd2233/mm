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
    public partial class det_rep : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String q = "select * from [excute] where ex_id= @un";
                comm = new SqlCommand(q, conn);
                comm.Parameters.AddWithValue("@un", Request.QueryString["id"].ToString());
                conn.Open();
                SqlDataReader res = comm.ExecuteReader();
                res.Read();
                desc.Text = res["descrp"].ToString();
                exc1.Text = res["ex_type"].ToString();
                doc1.Text = res["doc"].ToString();
                status.Text = res["status"].ToString();
                doc.ResolveUrl((MapPath("reports/" + res["doc"].ToString())));
                DateTime d1 = (DateTime) res["date"];
                date1.Text = d1.ToString();
                if (res["status"].ToString() == "Disaprroved")
                {
                    resp.Visible = true;
                    resp.Text = res["Response"].ToString();
                }
                conn.Close();
            }

        }

        protected void update_Click(object sender, EventArgs e)
        {
            String q = "Update excute set (date = @date, ex_type = @type, descrp = @desc, doc = @doc) where ex_id= @un ";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", Request.QueryString["id"].ToString());
            comm.Parameters.AddWithValue("@date", Convert.ToDateTime(date1.Text));
            comm.Parameters.AddWithValue("@type", exc1.Text);
            comm.Parameters.AddWithValue("@desc", desc.Text);
            if (doc.HasFile)
            {
                comm.Parameters.AddWithValue("@doc", doc.FileName);
            }
            conn.Open();
            Label1.Visible = true;
            int res1 = comm.ExecuteNonQuery();
            if (res1 == 1)
            {
                doc.SaveAs(MapPath("reports/" + doc.FileName));
                Label1.Text = "Excuse Updated Successfully";

            }
            else
            {
                Label1.Text = "Error while  inserting into Excuse, try again";
            }
            conn.Open();
        }
    }
}