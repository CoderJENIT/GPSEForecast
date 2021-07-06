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
    public partial class EditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Proj_ID = Request.QueryString["ProjID"];
                lbl_Proj_name.Text = Request.QueryString["ProjName"];
                txt_booked_value.Text = Request.QueryString["BookedValue"];
                txt_sales_to_date.Text = Request.QueryString["SalesToDate"];
                txt_backlog.Text = Request.QueryString["Backlog"];
                txt_sales.Text = Request.QueryString["Sales"];
                txt_costs.Text = Request.QueryString["Costs"];
                txt_accurals.Text = Request.QueryString["Accurals"];
                txt_margin.Text = Request.QueryString["Margin"];
                txt_status.Text = Request.QueryString["Status"];
            }
        }

        public void editData()
        {
            int Proj_ID = int.Parse(Request.QueryString["ProjID"]);

            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("updateDump", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@proj_ID", Proj_ID);
                cmd.Parameters.AddWithValue("@bkdval",txt_booked_value.Text );
                cmd.Parameters.AddWithValue("@salestodate", txt_sales_to_date.Text);
                cmd.Parameters.AddWithValue("@backlog", txt_backlog.Text);
                cmd.Parameters.AddWithValue("@sales", txt_sales.Text);
                cmd.Parameters.AddWithValue("@costs", txt_costs.Text);
                cmd.Parameters.AddWithValue("@accurals", txt_accurals.Text);
                cmd.Parameters.AddWithValue("@margin", txt_margin.Text);
                cmd.Parameters.AddWithValue("@status", txt_status.Text);

                con.Open();
                cmd.ExecuteNonQuery();

                Response.Redirect("~/ViewDetails.aspx");
            }
        }

        protected void save_button_Click(object sender, EventArgs e)
        {
            editData();
        }

        protected void cancel_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewDetails.aspx");
        }

        protected void del_Button_Click(object sender, EventArgs e)
        {
            int Proj_ID = int.Parse(Request.QueryString["ProjID"]);

            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("sp_del_DetailsByID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@proj_ID", Proj_ID);

                con.Open();
                cmd.ExecuteNonQuery();

                Response.Redirect("~/ViewDetails.aspx");

            }
        }
    }
}