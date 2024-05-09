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
    public partial class new_rep : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Absent"].ConnectionString); //to connect with db
        SqlCommand comm, comm1;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload1_Click(object sender, EventArgs e)
        {
            String q = "select doc from [excute] where doc=@un and st_id=@id";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", doc.FileName);
            comm.Parameters.AddWithValue("@id", Session["stid"].ToString());
            conn.Open();
            object res = comm.ExecuteScalar();
            Label1.Visible = true;
            if (res == null)
            {

                String q1 = "INSERT INTO excute(date, ex_type, descrp, doc, status, cr_id, st_id, sec_id) VALUES (@date, @type, @desc , @doc, @sts, @cr, @st, @sec)";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@date", Convert.ToDateTime( date1.Text));
                comm1.Parameters.AddWithValue("@type", exc1.Text);
                comm1.Parameters.AddWithValue("@desc", desc.Text);
                if (doc.HasFile)
                {
                    comm1.Parameters.AddWithValue("@doc", doc.FileName);
                }
                comm1.Parameters.AddWithValue("@sts", "Under Prosess");
                comm1.Parameters.AddWithValue("@cr", cr1.SelectedValue);
                comm1.Parameters.AddWithValue("@st", Session["stid"].ToString());
                comm1.Parameters.AddWithValue("@sec", sec1.SelectedValue);
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {
                    doc.SaveAs(MapPath("reports/" + doc.FileName));

                    Label1.Text = "Excuse Sended Successfully";

                }
                else
                {
                    Label1.Text = "Error while  inserting into Excuse, try again";
                }
            }

            else
            {
                Label1.Text = "Excute is Already exsest";
            }
        }
    }
}