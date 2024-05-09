using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Absent_MG
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null || Session["utype"].ToString() != "admin")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Welcome <br/>" + Session["n"].ToString();

            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("home.aspx");
        }

    }
}