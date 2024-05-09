using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Absent_MG
{
    public partial class Basic : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                LinkButton1.Visible = true;
                LinkButton3.Visible = true;
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Welcome <br> " + Session["n"].ToString();
                LinkButton2.Visible = true;
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