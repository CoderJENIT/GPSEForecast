using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GPSEForecast
{
    public partial class Details : System.Web.UI.Page
    {
        String conn = System.Configuration.ConfigurationManager.ConnectionStrings["GPSEForecast"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
        
            getdata();
        }
        protected void GridviewLeadTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            string proj = Request.QueryString["project"];
            Response.Redirect("EditDetails.aspx?Project=" +  proj + "&id=" + GridviewLeadTable.SelectedRow.Cells[1].Text);
        }

        protected void GridviewLeadTable_RowCreated(object sender, GridViewRowEventArgs e)
        {
            try
            {
                e.Row.Cells[1].Visible = false;
            }
            catch
            {

            }
        }
        public void getdata()
        {
            List<string> FY = new List<string>();
            List<string> Mon = new List<string>();
            List<string> Sales = new List<string>();
            List<string> Accruals = new List<string>();
            List<string> Costs = new List<string>();
            List<string> Comments = new List<string>();


            string proj = Request.QueryString["Project"];
            DataSet ds = new DataSet();
           
            using (SqlConnection con = new SqlConnection(conn))
            {

                SqlCommand cmd = new SqlCommand("sp_getCostDataByProj", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@proj", proj);
                cmd.Parameters.Add(parameter);


                con.Open();
                using (SqlDataReader read = cmd.ExecuteReader())
                {
                    if (read.Read())
                    {
                        FY.Add(read["FY"].ToString());
                        Mon.Add (read["Month"].ToString());
                        
                        Sales.Add (read["Sales"].ToString());
                        Accruals.Add(read["Accruals"].ToString());
                        Costs.Add (read["Costs"].ToString());
                        //Comments.Add (read["Comments"].ToString());
                    }
                    read.Close();
                    con.Close();
                }

                if (FY.Count>0 )
                {

                }

            }
        }

        protected void Addnew_Click(object sender, EventArgs e)
        {
            string proj = Request.QueryString["project"];
            Response.Redirect("EditDetails.aspx?Project=" + proj + "&id=0");
        }
    }
}