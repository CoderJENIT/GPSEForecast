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
    public partial class HomePage : System.Web.UI.Page
    {

        String conn = System.Configuration.ConfigurationManager.ConnectionStrings["GPSEForecast"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                drp_Project.Visible = false;
                drp_ProjectName.Visible = false;

                string proj = Request.QueryString["project"];
                string Version = Request.QueryString["version"];
                LoadDropdowns();
                getCountry();
                if (!string.IsNullOrEmpty(proj))
                {


                    SqlConnection con = new SqlConnection(conn);
                    DataTable dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("sp_getDataByProj", con);
                    cmd.Parameters.AddWithValue("@proj", proj);
                    cmd.Parameters.AddWithValue("@version", Version);
                    //cmd.Parameters.AddWithValue("@gid", Session["UserName"].ToString());
                    //cmd.Parameters.AddWithValue("@fy", Session["Year"].ToString());
                    //cmd.Parameters.AddWithValue("@mon", Session["Month"].ToString());
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    using (SqlDataReader read = cmd.ExecuteReader())
                    {
                        if (read.Read())
                        {
                            drp_Project.SelectedItem.Value = proj;
                          //  drp_CPM.SelectedItem.Value = (read["CPM"].ToString());

                            txt_Project.Text = proj;
                            txt_version.Text = Version;
                            txt_ProjectName.Text = (read["Project Name"].ToString());
                            txt_comments.Text = (read["Comments"].ToString());
                            drp_GCK.SelectedValue = (read["GCK"].ToString());
                            string a = (read["Revenue Method"].ToString());
                            string b = (read["CPM"].ToString());
                            drp_revenuemethod.SelectedValue = (read["Revenue Method"].ToString());
                            drp_tradingpartner.SelectedValue = (read["Trading Partner"].ToString());
                            drp_CPM.SelectedValue = (read["CPM"].ToString());
                            //drp_CPM1.SelectedValue = (read["CPM"].ToString());
                            drp_PartnerDepthStructure.SelectedValue = (read["Partner PC"].ToString());
                            string c = drp_CPM.SelectedItem.Value;
                            // txt = (read["Partner PC"].ToString());
                            drp_ProfitCenter.SelectedValue = (read["Profit Center"].ToString());
                            // drp_ProjectName.SelectedItem.Value = (read["Project Name"].ToString());
                            drp_businessfield.SelectedValue = (read["BF"].ToString());

                        }
                        read.Close();
                        con.Close();
                    }
                }
                              


                //      getCountry();
                string d = drp_CPM.SelectedItem.Value;

            }
        }

        public void LoadDropdowns()
        {
            drp_businessfield.DataSource = returnDrp("Business Field");
            drp_businessfield.DataBind();
            drp_businessfield.Items.Insert(0, new ListItem("Business Field", ""));

            drp_ProfitCenter.DataSource = returnDrp("Profit Center");
            drp_ProfitCenter.DataBind();
            drp_ProfitCenter.Items.Insert(0, new ListItem("Profit Center", ""));

            drp_GCK.DataSource = returnDrp("GCK");
            drp_GCK.DataBind();
            drp_GCK.Items.Insert(0, new ListItem("GCK", ""));

            drp_CPM.DataSource = returnDrp("CPM_Name");
            drp_CPM.DataBind();
            drp_CPM.Items.Insert(0, new ListItem("CPM", ""));

            //drp_CPM1.DataSource = returnDrp("CPM_Name");
            //drp_CPM1.DataBind();
            //drp_CPM1.Items.Insert(0, new ListItem("CPM", ""));

            drp_revenuemethod.DataSource = returnDrp("Revenue Method");
            drp_revenuemethod.DataBind();
            drp_revenuemethod.Items.Insert(0, new ListItem("Revenue Method", ""));

            drp_ProjectName.DataSource = returnDrp("Project Name");
            drp_ProjectName.DataBind();
            drp_ProjectName.Items.Insert(0, new ListItem("Project Name", ""));

            drp_Project.DataSource = returnDrp("Project");
            drp_Project.DataBind();
            drp_Project.Items.Insert(0, new ListItem("Project", ""));
            
            drp_tradingpartner.Items.Insert(0, new ListItem("Country", ""));

            drp_PartnerDepthStructure.DataSource = returnDrp("Partner_Depth_Structure");
            drp_PartnerDepthStructure.DataBind();
            drp_PartnerDepthStructure.Items.Insert(0, new ListItem("Partner Depth Structure", ""));



            //drp_Project.DataSource = returnDrp("Project");
            //drp_Project.DataBind();
            //drp_Project.Items.Insert(0, new ListItem("Project", ""));

            //drp_Project.DataSource = returnDrp("Revenue Method");
            //drp_Project.DataBind();
            //drp_Project.Items.Insert(0, new ListItem("Revenue Method", ""));



        }

        public List<string> returnDrp(string field)
        {
            List<string> DrpVal = new List<String>();

            using (SqlConnection con = new SqlConnection(conn))
            {

                SqlCommand cmd = new SqlCommand("GetDropDownDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@typ", field);
                cmd.Parameters.Add(parameter);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (field == "Country")
                    {
                        if (rdr["Country"].ToString() != "")
                            DrpVal.Add(rdr["Country"].ToString());
                    }
                    else if (field == "Profit Center")
                    {
                        if (rdr["Profit Center"].ToString() != "")
                            DrpVal.Add(rdr["Profit Center"].ToString());
                    }
                    else if (field == "Profit Center")
                    {
                        if (rdr["Profit Center"].ToString() != "")
                            DrpVal.Add(rdr["Profit Center"].ToString());
                    }
                    else if (field == "GCK")
                    {
                        if (rdr["GCK"].ToString() != "")
                            DrpVal.Add(rdr["GCK"].ToString());
                    }
                    else if (field == "Partner_Depth_Structure")
                    {
                        if (rdr["Partner Depth Structure"].ToString() != "")
                            DrpVal.Add(rdr["Partner Depth Structure"].ToString());
                    }
                    else if (field == "CPM_Name")
                    {
                        if (rdr["CPM Name"].ToString() != "")
                            DrpVal.Add(rdr["CPM Name"].ToString());
                    }
                    else if (field == "Status")
                    {
                        if (rdr["Status"].ToString() != "")
                            DrpVal.Add(rdr["Status"].ToString());
                    }
                    else if (field == "Business Field")
                    {
                        if (rdr["Business Field"].ToString() != "")
                            DrpVal.Add(rdr["Business Field"].ToString());
                    }
                    else if (field == "Revenue Method")
                    {
                        if (rdr["Revenue Method"].ToString() != "")
                            DrpVal.Add(rdr["Revenue Method"].ToString());
                    }
                    //else if (field == "Project")
                    //{
                    //     if (rdr["Project #"].ToString() != "")
                    //         DrpVal.Add(rdr["Project #"].ToString());
                    //}
                    //else if (field == "Project Name")
                    //{
                    //    if (rdr["Project Name"].ToString() != "")
                    //        DrpVal.Add(rdr["Project Name"].ToString());
                    //}
                }
            }
            return DrpVal;
        }


        protected void btn_edit_Click(object sender, EventArgs e)
        {
            //Response.Redirect("LineDetails.aspx?Project=" + drp_Project.SelectedItem.Value + "&ProjectName=" + txt_ProjectName.Text.Replace("&","%26"));

            if ((!string.IsNullOrEmpty(drp_Project.SelectedItem.Value)) && (drp_Project.SelectedItem.Value != ""))
            {
                Response.Redirect("LineDetails.aspx?Project=" + drp_Project.SelectedItem.Value + "&ProjectName=" + txt_ProjectName.Text.Replace("&", "%26") + "&Version=" + txt_version.Text.Replace("&","%26"));
            }
            else if ((!string.IsNullOrEmpty(txt_Project.Text)) && (txt_Project.Text != ""))
            {
                Response.Redirect("LineDetails.aspx?Project=" + txt_Project.Text + "&ProjectName=" + txt_ProjectName.Text.Replace("&", "%26") + "&Version=" + txt_version.Text.Replace("&", "%26"));
            }
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            if (txt_flag.Text == "1")
            {
                ProjectCheck();
            }

            if ((!string.IsNullOrEmpty(drp_Project.SelectedItem.Value)) && (drp_Project.SelectedItem.Value != ""))
            {
                Response.Redirect("EditDetails.aspx?Project=" + drp_Project.SelectedItem.Value + "&ProjectName=" + txt_ProjectName.Text.Replace("&", "%26") + "&Version=" + txt_version.Text.Replace("&", "%26"));
            }
            else if ((!string.IsNullOrEmpty(txt_Project.Text)) && (txt_Project.Text!=""))
            {
                Response.Redirect("EditDetails.aspx?Project=" + txt_Project.Text + "&ProjectName=" + txt_ProjectName.Text.Replace("&", "%26") + "&Version=" + txt_version.Text.Replace("&", "%26"));
            }
        }


        public void ProjectCheck()
        {
            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("sp_ProjectCheck", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@proj", txt_Project.Text);
                cmd.Parameters.AddWithValue("@projName", txt_ProjectName.Text);
                cmd.Parameters.AddWithValue("@cpm", drp_CPM.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@revenueMethod", drp_revenuemethod.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pc", drp_ProfitCenter.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@gck", drp_GCK.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@bf", drp_businessfield.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@tp", drp_tradingpartner.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@cmt", txt_comments.Text);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }


        protected void btn_submit1_Click(object sender, EventArgs e)
        {
            string proj = Request.QueryString["project"];


            if (string.IsNullOrEmpty(proj))
            {

                SqlConnection con = new SqlConnection(conn);
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_AddNewProject", con);
                cmd.Parameters.AddWithValue("@proj", txt_Project.Text);
                cmd.Parameters.AddWithValue("@projName", txt_ProjectName.Text);
                cmd.Parameters.AddWithValue("@cpm", drp_CPM.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@revenueMethod", drp_revenuemethod.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pc", drp_ProfitCenter.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@gck", drp_GCK.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@bf", drp_businessfield.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@tp", drp_tradingpartner.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@partnerpc", drp_PartnerDepthStructure.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@cmt", txt_comments.Text);
                cmd.Parameters.AddWithValue("@version", txt_version.Text);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Submitted Successfully')</script>");
                //Response.Redirect("BLView.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(conn);
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_UpdateDumpBasedProject", con);
                cmd.Parameters.AddWithValue("@proj", proj);
                cmd.Parameters.AddWithValue("@projName", txt_ProjectName.Text);
                cmd.Parameters.AddWithValue("@cpm", drp_CPM.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@revenueMethod", drp_revenuemethod.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pc", drp_ProfitCenter.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@gck", drp_GCK.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@bf", drp_businessfield.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@partnerpc", drp_PartnerDepthStructure.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@tp", drp_tradingpartner.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@cmt", txt_comments.Text);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Submitted Successfully')</script>");
            }





        }

        protected void bt_DowloadTemplate_Click(object sender, EventArgs e)
        {
            DataTable ds = new DataTable();
            DataTable dt = new DataTable();

            using (SqlConnection con = new SqlConnection(conn))
            {

                SqlCommand cmd = new SqlCommand("DownloadTemplate", con);               
                cmd.CommandType = CommandType.StoredProcedure;

                if(ddl_Ver.SelectedItem.Value == "Select")
                {
                    cmd.Parameters.AddWithValue("@version", null);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@version", ddl_Ver.SelectedItem.Value);
                }
                
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds);

            }
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(ds, "Dump");

                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;filename=MasterData.xlsx");
                using (MemoryStream MyMemoryStream = new MemoryStream())
                {
                    wb.SaveAs(MyMemoryStream);
                    MyMemoryStream.WriteTo(Response.OutputStream);
                    Response.Flush();
                    Response.End();
                }
            }
        }

        protected void bt_UploadTemplate_Click(object sender, EventArgs e)
        {

            //if (Session["LockStatus"].ToString() == "closed")
            //{
            //    Response.Write("<script>alert(' The Deadline for uploading data is over, Please raise a edit request ')</script>");
            //}
            //else
            //{
                //try
                //{

                    string excelPath = Server.MapPath("~/Files/") + Path.GetFileName(UploadDoc.PostedFile.FileName);
                    UploadDoc.SaveAs(excelPath);

                    string conString = string.Empty;
                    string extension = Path.GetExtension(UploadDoc.PostedFile.FileName);
                    switch (extension)
                    {
                        case ".xls": //Excel 97-03
                            conString = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                            break;
                        case ".xlsx": //Excel 07 or higher
                            conString = ConfigurationManager.ConnectionStrings["Excel07+ConString"].ConnectionString;
                            break;

                    }
                    conString = string.Format(conString, excelPath);
                    using (OleDbConnection excel_con = new OleDbConnection(conString))
                    {
                        excel_con.Open();
                        string sheet1 = excel_con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null).Rows[0]["TABLE_NAME"].ToString();
                        DataTable dtExcelData = new DataTable();



                        using (OleDbDataAdapter oda = new OleDbDataAdapter("SELECT * FROM [" + sheet1 + "]", excel_con))
                        {
                            oda.Fill(dtExcelData);
                        }
                        excel_con.Close();


                        using (SqlConnection con = new SqlConnection(conn))
                        {
                            using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                            {

                                sqlBulkCopy.DestinationTableName = "DumpTemp";

                                sqlBulkCopy.ColumnMappings.Add("Version", "Version");
                                sqlBulkCopy.ColumnMappings.Add("Project #", "Project #");
                                sqlBulkCopy.ColumnMappings.Add("Project Name", "Project Name");
                                sqlBulkCopy.ColumnMappings.Add("CPM", "CPM");
                                sqlBulkCopy.ColumnMappings.Add("Revenue Method", "Revenue Method");
                                sqlBulkCopy.ColumnMappings.Add("Profit Center", "Profit Center");
                                sqlBulkCopy.ColumnMappings.Add("BF", "BF");
                                sqlBulkCopy.ColumnMappings.Add("Trading Partner/Country", "Trading Partner/Country");
                                sqlBulkCopy.ColumnMappings.Add("Partner DS", "Partner DS");
                                sqlBulkCopy.ColumnMappings.Add("Backlog Status", "Backlog Status");
                                sqlBulkCopy.ColumnMappings.Add("Act/FC", "Act/FC");
                                sqlBulkCopy.ColumnMappings.Add("Booked value", "Booked value");
                                sqlBulkCopy.ColumnMappings.Add("Sales to date", "Sales to date");
                                sqlBulkCopy.ColumnMappings.Add("Backlog", "Backlog");
                                sqlBulkCopy.ColumnMappings.Add("FY", "FY");
                                sqlBulkCopy.ColumnMappings.Add("Month", "Month");
                                sqlBulkCopy.ColumnMappings.Add("Sales", "Sales");
                                sqlBulkCopy.ColumnMappings.Add("Costs", "Costs");
                                sqlBulkCopy.ColumnMappings.Add("Accruals", "Accruals");
                                sqlBulkCopy.ColumnMappings.Add("Margin", "Margin");

                        con.Open();
                                sqlBulkCopy.WriteToServer(dtExcelData);
                                con.Close();
                            }
                        }

                        

                        string username = Request.LogonUserIdentity.Name.ToString();
                        username = username.Remove(0, 6);
                        using (SqlConnection con = new SqlConnection(conn))
                        {
                            con.Open();

                            SqlCommand cmd1 = new SqlCommand("sp_UploadDataFromTempToDump", con);                           
                            cmd1.CommandType = CommandType.StoredProcedure;
                            cmd1.Parameters.AddWithValue("@un", username);
                            
                    //cmd1.ExecuteNonQuery();
                    // SqlDataReader rdr = cmd1.ExecuteReader();

                    string DataCount = "";

                            SqlDataReader rdr = cmd1.ExecuteReader();
                            while (rdr.Read())
                            {
                                DataCount = rdr["DataCount"].ToString();
                            }
                    
                          int Counter = int.Parse(DataCount);

                    if(Counter > 0)
                    {
                        Download_Invalid_Data();
                    }


                    con.Close();

                                Response.Write("<script>alert('Data uploaded Successfully')</script>");
                        }
                    }


            UpdateQtr();


        }


        public void UpdateQtr()
        {
            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("sp_UpdateQuarter", con);
                cmd.CommandType = CommandType.StoredProcedure;

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }


        protected void bt_sendOTP_Click(object sender, EventArgs e)
        {
            
        }


        public void getOTP()
        {
            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("getOTP", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //SqlParameter outputParameter = new SqlParameter();
                //outputParameter.ParameterName = "@otp";
                //outputParameter.SqlDbType = System.Data.SqlDbType.Float;
                //outputParameter.Direction = System.Data.ParameterDirection.Output;
                //cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                //string OTP = outputParameter.Value.ToString();
            }
        }

        protected void OTP_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminPanel.aspx");
        }

        public string GetCurrentYear()
        {
            string CurrentYear = "";

            if ( DateTime.Now.Month < 11)
            {
                CurrentYear = "FY " + DateTime.Now.Year.ToString();

                return CurrentYear;
            }
           
            else
            {
                return CurrentYear;
            }                       
                      
        }


        public string GetNextYear()
        {
            string NextYear = "";

            if ( DateTime.Now.Month > 8 )
            {
                NextYear = "FY " + DateTime.Now.AddYears(+1).Year.ToString();

                return NextYear;
            }

            else
            {
                return NextYear;
            }

        }

        public List<String> getMoth()
        {
           

            int mo = int.Parse( DateTime.Now.Month.ToString());
            if (mo > 9)
            {
                mo = mo - 9;
            }
            else
            {
                mo = mo + 3;
            }
            string mo1 = mo.ToString();
            int mo3 = mo + 1;
            string mo2 = mo3.ToString();

            var getMoth = new List<string>()
                    {
                        mo1,
                        mo2
                       
                    };

            return getMoth;
        }

        public void Download_Invalid_Data()
        {
            DataTable ds = new DataTable();

            using (SqlConnection con = new SqlConnection(conn))
            {

                SqlCommand cmd = new SqlCommand("sp_Download_Invalid_Data", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds);

            }
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(ds, "Invalid_Data");

                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;filename=InvalidData.xlsx");
                using (MemoryStream MyMemoryStream = new MemoryStream())
                {
                    wb.SaveAs(MyMemoryStream);
                    MyMemoryStream.WriteTo(Response.OutputStream);
                    Response.Flush();
                    Response.End();
                }
            }
        }

        protected void drp_ProfitCenter_SelectedIndexChanged(object sender, EventArgs e)
        {
            getGCK();
        }

        public void getGCK()
        {
            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("sp_getGCK_byPC", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@PC", drp_ProfitCenter.SelectedItem.Value);
                DataSet ds = new DataSet();
                da.Fill(ds);

                drp_GCK.DataSource = ds;
                drp_GCK.DataValueField = "GCK";
                drp_GCK.DataTextField = "GCK";
                drp_GCK.DataBind();
                
            }
        }

        public void getCountry()
        {
            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("sp_getCountry", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                da.Fill(ds);

                drp_tradingpartner.DataSource = ds;
                drp_tradingpartner.DataValueField = "Country";
                drp_tradingpartner.DataTextField = "Country";
                drp_tradingpartner.DataBind();

            }
        }
        
    }
}
