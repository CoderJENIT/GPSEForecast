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
    public partial class AdminPanel : System.Web.UI.Page
    {

        String conn = System.Configuration.ConfigurationManager.ConnectionStrings["GPSEForecast"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void edit_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewDetails.aspx");
        }






        public void DelDetails()
        {

            string cs = ConfigurationManager.ConnectionStrings["GPSEForecast"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("sp_Delete_Details", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@version", ddl_Ver.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }



       



        protected void Delete_button_Click(object sender, EventArgs e)
        {
            DelDetails();
            Response.Write("<script>alert('Delete data completed Successfully')</script>");
        }

        protected void bt_DowloadTemplate_Click(object sender, EventArgs e)
        {
            DataTable ds = new DataTable();
            DataTable dt = new DataTable();
            
            using (SqlConnection con = new SqlConnection(conn))
            {

                SqlCommand cmd = new SqlCommand("sp_Download_Mapping", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds);

            }
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(ds, "Mapping_Data");

                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;filename=MappingData.xlsx");
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

                        sqlBulkCopy.DestinationTableName = "tbl_Mapping_Temp";

                        sqlBulkCopy.ColumnMappings.Add("Profit Center", "Profit Center");
                        sqlBulkCopy.ColumnMappings.Add("Vertical", "Vertical");
                        sqlBulkCopy.ColumnMappings.Add("Description", "Description");
                        sqlBulkCopy.ColumnMappings.Add("GCK", "GCK");
                        sqlBulkCopy.ColumnMappings.Add("Business Field", "Business Field");
                        sqlBulkCopy.ColumnMappings.Add("Partner Depth Structure", "Partner Depth Structure");
                        sqlBulkCopy.ColumnMappings.Add("CPM Name", "CPM Name");
                        sqlBulkCopy.ColumnMappings.Add("Status", "Status");
                        sqlBulkCopy.ColumnMappings.Add("Trading Partner/Country", "Trading Partner/Country");
                        sqlBulkCopy.ColumnMappings.Add("Revenue Method", "Revenue Method");
                        sqlBulkCopy.ColumnMappings.Add("Status Description", "Status Description");

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

                    SqlCommand cmd1 = new SqlCommand("sp_Upload_Mapping", con);
                    cmd1.Parameters.AddWithValue("@un", username);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.ExecuteNonQuery();
                  
                    con.Close();

                    Response.Write("<script>alert('Data uploaded Successfully')</script>");
                }
            }
        }
    }
}