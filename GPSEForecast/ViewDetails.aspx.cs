using ClosedXML.Excel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GPSEForecast
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getDumpData();
            }
        }


        public void getDumpData()
        {
            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("getDump", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                da.Fill(ds);

                gv_Dump.DataSource = ds;
                gv_Dump.DataBind();
            }

        }

        protected void gv_Dump_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("~/EditPage.aspx?ProjID=" + gv_Dump.SelectedRow.Cells[1].Text + "&ProjName=" + gv_Dump.SelectedRow.Cells[3].Text + "&BookedValue=" + gv_Dump.SelectedRow.Cells[7].Text + "&SalesToDate=" + gv_Dump.SelectedRow.Cells[8].Text + "&Backlog=" + gv_Dump.SelectedRow.Cells[9].Text + "&Sales=" + gv_Dump.SelectedRow.Cells[18].Text + "&Costs=" + gv_Dump.SelectedRow.Cells[19].Text + "&Accurals=" + gv_Dump.SelectedRow.Cells[20].Text + "&Margin=" + gv_Dump.SelectedRow.Cells[21].Text + "&Status=" + gv_Dump.SelectedRow.Cells[22].Text);
        }
    }
}