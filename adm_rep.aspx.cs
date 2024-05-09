using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Absent_MG
{
    public partial class adm_rep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            FileInfo fileInfo = new FileInfo((sender as LinkButton).CommandArgument);
            Response.ContentType = "text/html";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileInfo);
            Response.TransmitFile(Server.MapPath("reports/" + fileInfo.Name));
            Response.End();

        }
    }
}