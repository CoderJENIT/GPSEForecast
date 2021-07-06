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
    public partial class EditDetails : System.Web.UI.Page
    {
        String conn = System.Configuration.ConfigurationManager.ConnectionStrings["GPSEForecast"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                lbl_Proj.Text = Request.QueryString["Project"];
                lbl_ProjName.Text = Request.QueryString["ProjectName"];
            }

        }

        protected void btn_goBack_Click(object sender, EventArgs e)
        {
            string proj = Request.QueryString["project"];
            Response.Redirect("HomePage.aspx?Project=" + proj);

        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {

           
            string proj = Request.QueryString["project"];



                SqlConnection con = new SqlConnection(conn);
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_AddNewCostBasedOnID", con);
                cmd.Parameters.AddWithValue("@proj", proj);
                cmd.Parameters.AddWithValue("@mon", drp_Month.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@fy", drp_fy.SelectedItem.Value);
               // cmd.Parameters.AddWithValue("@qua", drp_Qua.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@order", txt_order.Text);
                cmd.Parameters.AddWithValue("@cost", txt_Cost.Text);
                cmd.Parameters.AddWithValue("@accural", txt_accrual.Text);
                cmd.Parameters.AddWithValue("@comments", txt_notes.Text);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                txt_order.Text = "";
                txt_Cost.Text = "";
                txt_accrual.Text = "";
                txt_notes.Text = "";
                drp_fy.SelectedValue = "Choose FY";
                drp_Month.SelectedValue = "Choose Month";
                Response.Write("<script>alert('Data Submitted Successfully')</script>");
            //{
            //    SqlConnection con = new SqlConnection(conn);
            //    DataTable dt = new DataTable();
            //    SqlCommand cmd = new SqlCommand("sp_UpdateDumpBasedID", con);
            //    cmd.Parameters.AddWithValue("@id", id);
            //    cmd.Parameters.AddWithValue("@mon", drp_Month.SelectedItem.Value);
            //    cmd.Parameters.AddWithValue("@fy", drp_fy.SelectedItem.Value);
            //   // cmd.Parameters.AddWithValue("@qua", drp_Qua.SelectedItem.Value);
            //    cmd.Parameters.AddWithValue("@order", txt_order.Text);
            //    cmd.Parameters.AddWithValue("@cost", txt_Cost.Text);
            //    cmd.Parameters.AddWithValue("@accural", txt_accrual.Text);
            //    cmd.Parameters.AddWithValue("@comments", txt_notes.Text);

            //    cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //    con.Open();
            //    cmd.ExecuteNonQuery();
            //    Response.Write("<script>alert('Data Submitted Successfully')</script>");


        }
    }
}
