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
    public partial class LineDetails : System.Web.UI.Page
    {
        String conn = System.Configuration.ConfigurationManager.ConnectionStrings["GPSEForecast"].ToString();

        List<string> ID = new List<string>();
        List<string> FY = new List<string>();
        List<string> Mon = new List<string>();
        List<string> Sales = new List<string>();
        List<string> Accruals = new List<string>();
        List<string> Costs = new List<string>();
        List<string> Margin = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HideValues();
                lbl_Proj.Text = Request.QueryString["Project"];
                lbl_ProjName.Text = Request.QueryString["ProjectName"];

                getMoth();

            }
            getdata();
        }

        public void getdata()
        {



            string proj = Request.QueryString["Project"];
            DataSet ds = new DataSet();

            using (SqlConnection con = new SqlConnection(conn))
            {

                SqlCommand cmd = new SqlCommand("sp_getCostDataByProj", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@proj", proj);
                cmd.Parameters.Add(parameter);


                con.Open();

                {
                    using (SqlDataReader read = cmd.ExecuteReader())
                    {
                        while (read.Read())
                        {
                            ID.Add(read["ID"].ToString());
                            FY.Add(read["FY"].ToString());
                            Mon.Add(read["Month"].ToString());

                            Sales.Add(read["Sales"].ToString());
                            Accruals.Add(read["Accruals"].ToString());
                            Costs.Add(read["Costs"].ToString());
                            Margin.Add(read["Margin"].ToString());
                        }
                        read.Close();
                        con.Close();
                    }
                    if (!IsPostBack)
                    {

                        if (FY.Count > 0)
                        {

                            TextBox_FY_1.Visible = true;
                            TextBox_Month_1.Visible = true;
                            TextBox_Sales_1.Visible = true;
                            TextBox_Accurals_1.Visible = true;
                            TextBox_Cost_1.Visible = true;
                            TextBox_Margin_1.Visible = true;

                            TextBox_FY_1.Text = FY[0].ToString();
                            TextBox_Month_1.Text = Mon[0].ToString();
                            TextBox_Sales_1.Text = Sales[0].ToString();
                            TextBox_Accurals_1.Text = Accruals[0].ToString();
                            TextBox_Cost_1.Text = Costs[0].ToString();
                            TextBox_Margin_1.Text = Margin[0].ToString();
                        }
                        if (FY.Count > 1)
                        {

                            TextBox_FY_2.Visible = true;
                            TextBox_Month_2.Visible = true;
                            TextBox_Sales_2.Visible = true;
                            TextBox_Accurals_2.Visible = true;
                            TextBox_Cost_2.Visible = true;
                            TextBox_Margin_2.Visible = true;

                            TextBox_FY_2.Text = FY[1].ToString();
                            TextBox_Month_2.Text = Mon[1].ToString();
                            TextBox_Sales_2.Text = Sales[1].ToString();
                            TextBox_Accurals_2.Text = Accruals[1].ToString();
                            TextBox_Cost_2.Text = Costs[1].ToString();
                            TextBox_Margin_2.Text = Margin[1].ToString();
                        }

                        if (FY.Count > 2)
                        {

                            TextBox_FY_3.Visible = true;
                            TextBox_Month_3.Visible = true;
                            TextBox_Sales_3.Visible = true;
                            TextBox_Accurals_3.Visible = true;
                            TextBox_Cost_3.Visible = true;
                            TextBox_Margin_3.Visible = true;

                            TextBox_FY_3.Text = FY[2].ToString();
                            TextBox_Month_3.Text = Mon[2].ToString();
                            TextBox_Sales_3.Text = Sales[2].ToString();
                            TextBox_Accurals_3.Text = Accruals[2].ToString();
                            TextBox_Cost_3.Text = Costs[2].ToString();
                            TextBox_Margin_3.Text = Margin[2].ToString();
                        }

                        if (FY.Count > 3)
                        {

                            TextBox_FY_4.Visible = true;
                            TextBox_Month_4.Visible = true;
                            TextBox_Sales_4.Visible = true;
                            TextBox_Accurals_4.Visible = true;
                            TextBox_Cost_4.Visible = true;
                            TextBox_Margin_4.Visible = true;

                            TextBox_FY_4.Text = FY[3].ToString();
                            TextBox_Month_4.Text = Mon[3].ToString();
                            TextBox_Sales_4.Text = Sales[3].ToString();
                            TextBox_Accurals_4.Text = Accruals[3].ToString();
                            TextBox_Cost_4.Text = Costs[3].ToString();
                            TextBox_Margin_4.Text = Margin[3].ToString();
                        }

                        if (FY.Count > 4)
                        {

                            TextBox_FY_5.Visible = true;
                            TextBox_Month_5.Visible = true;
                            TextBox_Sales_5.Visible = true;
                            TextBox_Accurals_5.Visible = true;
                            TextBox_Cost_5.Visible = true;
                            TextBox_Margin_5.Visible = true;

                            TextBox_FY_5.Text = FY[4].ToString();
                            TextBox_Month_5.Text = Mon[4].ToString();
                            TextBox_Sales_5.Text = Sales[4].ToString();
                            TextBox_Accurals_5.Text = Accruals[4].ToString();
                            TextBox_Cost_5.Text = Costs[4].ToString();
                            TextBox_Margin_5.Text = Margin[4].ToString();
                        }

                        if (FY.Count > 5)
                        {

                            TextBox_FY_6.Visible = true;
                            TextBox_Month_6.Visible = true;
                            TextBox_Sales_6.Visible = true;
                            TextBox_Accurals_6.Visible = true;
                            TextBox_Cost_6.Visible = true;
                            TextBox_Margin_6.Visible = true;

                            TextBox_FY_6.Text = FY[5].ToString();
                            TextBox_Month_6.Text = Mon[5].ToString();
                            TextBox_Sales_6.Text = Sales[5].ToString();
                            TextBox_Accurals_6.Text = Accruals[5].ToString();
                            TextBox_Cost_6.Text = Costs[5].ToString();
                            TextBox_Margin_6.Text = Margin[5].ToString();
                        }
                        if (FY.Count > 6)
                        {

                            TextBox_FY_7.Visible = true;
                            TextBox_Month_7.Visible = true;
                            TextBox_Sales_7.Visible = true;
                            TextBox_Accurals_7.Visible = true;
                            TextBox_Cost_7.Visible = true;
                            TextBox_Margin_7.Visible = true;

                            TextBox_FY_7.Text = FY[6].ToString();
                            TextBox_Month_7.Text = Mon[6].ToString();
                            TextBox_Sales_7.Text = Sales[6].ToString();
                            TextBox_Accurals_7.Text = Accruals[6].ToString();
                            TextBox_Cost_7.Text = Costs[6].ToString();
                            TextBox_Margin_7.Text = Margin[6].ToString();
                        }

                        if (FY.Count > 7)
                        {

                            TextBox_FY_8.Visible = true;
                            TextBox_Month_8.Visible = true;
                            TextBox_Sales_8.Visible = true;
                            TextBox_Accurals_8.Visible = true;
                            TextBox_Cost_8.Visible = true;
                            TextBox_Margin_8.Visible = true;

                            TextBox_FY_8.Text = FY[7].ToString();
                            TextBox_Month_8.Text = Mon[7].ToString();
                            TextBox_Sales_8.Text = Sales[7].ToString();
                            TextBox_Accurals_8.Text = Accruals[7].ToString();
                            TextBox_Cost_8.Text = Costs[7].ToString();
                            TextBox_Margin_8.Text = Margin[7].ToString();
                        }

                        if (FY.Count > 8)
                        {

                            TextBox_FY_9.Visible = true;
                            TextBox_Month_9.Visible = true;
                            TextBox_Sales_9.Visible = true;
                            TextBox_Accurals_9.Visible = true;
                            TextBox_Cost_9.Visible = true;
                            TextBox_Margin_9.Visible = true;

                            TextBox_FY_9.Text = FY[8].ToString();
                            TextBox_Month_9.Text = Mon[8].ToString();
                            TextBox_Sales_9.Text = Sales[8].ToString();
                            TextBox_Accurals_9.Text = Accruals[8].ToString();
                            TextBox_Cost_9.Text = Costs[8].ToString();
                            TextBox_Margin_9.Text = Margin[8].ToString();
                        }

                        if (FY.Count > 9)
                        {

                            TextBox_FY_10.Visible = true;
                            TextBox_Month_10.Visible = true;
                            TextBox_Sales_10.Visible = true;
                            TextBox_Accurals_10.Visible = true;
                            TextBox_Cost_10.Visible = true;
                            TextBox_Margin_10.Visible = true;

                            TextBox_FY_10.Text = FY[9].ToString();
                            TextBox_Month_10.Text = Mon[9].ToString();
                            TextBox_Sales_10.Text = Sales[9].ToString();
                            TextBox_Accurals_10.Text = Accruals[9].ToString();
                            TextBox_Cost_10.Text = Costs[9].ToString();
                            TextBox_Margin_10.Text = Margin[9].ToString();
                        }

                        if (FY.Count > 10)
                        {

                            TextBox_FY_11.Visible = true;
                            TextBox_Month_11.Visible = true;
                            TextBox_Sales_11.Visible = true;
                            TextBox_Accurals_11.Visible = true;
                            TextBox_Cost_11.Visible = true;
                            TextBox_Margin_11.Visible = true;

                            TextBox_FY_11.Text = FY[10].ToString();
                            TextBox_Month_11.Text = Mon[10].ToString();
                            TextBox_Sales_11.Text = Sales[10].ToString();
                            TextBox_Accurals_11.Text = Accruals[10].ToString();
                            TextBox_Cost_11.Text = Costs[10].ToString();
                            TextBox_Margin_11.Text = Margin[10].ToString();
                        }
                        if (FY.Count > 11)
                        {

                            TextBox_FY_12.Visible = true;
                            TextBox_Month_12.Visible = true;
                            TextBox_Sales_12.Visible = true;
                            TextBox_Accurals_12.Visible = true;
                            TextBox_Cost_12.Visible = true;
                            TextBox_Margin_12.Visible = true;

                            TextBox_FY_12.Text = FY[11].ToString();
                            TextBox_Month_12.Text = Mon[11].ToString();
                            TextBox_Sales_12.Text = Sales[11].ToString();
                            TextBox_Accurals_12.Text = Accruals[11].ToString();
                            TextBox_Cost_12.Text = Costs[11].ToString();
                            TextBox_Margin_12.Text = Margin[11].ToString();
                        }

                        if (FY.Count > 12)
                        {

                            TextBox_FY_13.Visible = true;
                            TextBox_Month_13.Visible = true;
                            TextBox_Sales_13.Visible = true;
                            TextBox_Accurals_13.Visible = true;
                            TextBox_Cost_13.Visible = true;
                            TextBox_Margin_13.Visible = true;

                            TextBox_FY_13.Text = FY[12].ToString();
                            TextBox_Month_13.Text = Mon[12].ToString();
                            TextBox_Sales_13.Text = Sales[12].ToString();
                            TextBox_Accurals_13.Text = Accruals[12].ToString();
                            TextBox_Cost_13.Text = Costs[12].ToString();
                            TextBox_Margin_13.Text = Margin[12].ToString();
                        }
                        if (FY.Count > 13)
                        {

                            TextBox_FY_14.Visible = true;
                            TextBox_Month_14.Visible = true;
                            TextBox_Sales_14.Visible = true;
                            TextBox_Accurals_14.Visible = true;
                            TextBox_Cost_14.Visible = true;
                            TextBox_Margin_14.Visible = true;

                            TextBox_FY_14.Text = FY[13].ToString();
                            TextBox_Month_14.Text = Mon[13].ToString();
                            TextBox_Sales_14.Text = Sales[13].ToString();
                            TextBox_Accurals_14.Text = Accruals[13].ToString();
                            TextBox_Cost_14.Text = Costs[13].ToString();
                            TextBox_Margin_14.Text = Margin[13].ToString();
                        }
                        if (FY.Count > 14)
                        {

                            TextBox_FY_15.Visible = true;
                            TextBox_Month_15.Visible = true;
                            TextBox_Sales_15.Visible = true;
                            TextBox_Accurals_15.Visible = true;
                            TextBox_Cost_15.Visible = true;
                            TextBox_Margin_15.Visible = true;

                            TextBox_FY_15.Text = FY[14].ToString();
                            TextBox_Month_15.Text = Mon[14].ToString();
                            TextBox_Sales_15.Text = Sales[14].ToString();
                            TextBox_Accurals_15.Text = Accruals[14].ToString();
                            TextBox_Cost_15.Text = Costs[14].ToString();
                            TextBox_Margin_15.Text = Margin[14].ToString();
                        }

                        if (FY.Count > 15)
                        {

                            TextBox_FY_16.Visible = true;
                            TextBox_Month_16.Visible = true;
                            TextBox_Sales_16.Visible = true;
                            TextBox_Accurals_16.Visible = true;
                            TextBox_Cost_16.Visible = true;
                            TextBox_Margin_16.Visible = true;

                            TextBox_FY_16.Text = FY[15].ToString();
                            TextBox_Month_16.Text = Mon[15].ToString();
                            TextBox_Sales_16.Text = Sales[15].ToString();
                            TextBox_Accurals_16.Text = Accruals[15].ToString();
                            TextBox_Cost_16.Text = Costs[15].ToString();
                            TextBox_Margin_16.Text = Margin[15].ToString();
                        }
                        if (FY.Count > 16)
                        {

                            TextBox_FY_17.Visible = true;
                            TextBox_Month_17.Visible = true;
                            TextBox_Sales_17.Visible = true;
                            TextBox_Accurals_17.Visible = true;
                            TextBox_Cost_17.Visible = true;
                            TextBox_Margin_17.Visible = true;

                            TextBox_FY_17.Text = FY[16].ToString();
                            TextBox_Month_17.Text = Mon[16].ToString();
                            TextBox_Sales_17.Text = Sales[16].ToString();
                            TextBox_Accurals_17.Text = Accruals[16].ToString();
                            TextBox_Cost_17.Text = Costs[16].ToString();
                            TextBox_Margin_17.Text = Margin[16].ToString();
                        }

                        if (FY.Count > 17)
                        {

                            TextBox_FY_18.Visible = true;
                            TextBox_Month_18.Visible = true;
                            TextBox_Sales_18.Visible = true;
                            TextBox_Accurals_18.Visible = true;
                            TextBox_Cost_18.Visible = true;
                            TextBox_Margin_18.Visible = true;

                            TextBox_FY_18.Text = FY[17].ToString();
                            TextBox_Month_18.Text = Mon[17].ToString();
                            TextBox_Sales_18.Text = Sales[17].ToString();
                            TextBox_Accurals_18.Text = Accruals[17].ToString();
                            TextBox_Cost_18.Text = Costs[17].ToString();
                            TextBox_Margin_18.Text = Margin[17].ToString();
                        }

                        if (FY.Count > 18)
                        {

                            TextBox_FY_19.Visible = true;
                            TextBox_Month_19.Visible = true;
                            TextBox_Sales_19.Visible = true;
                            TextBox_Accurals_19.Visible = true;
                            TextBox_Cost_19.Visible = true;
                            TextBox_Margin_19.Visible = true;

                            TextBox_FY_19.Text = FY[18].ToString();
                            TextBox_Month_19.Text = Mon[18].ToString();
                            TextBox_Sales_19.Text = Sales[18].ToString();
                            TextBox_Accurals_19.Text = Accruals[18].ToString();
                            TextBox_Cost_19.Text = Costs[18].ToString();
                            TextBox_Margin_19.Text = Margin[18].ToString();
                        }
                        if (FY.Count > 19)
                        {

                            TextBox_FY_20.Visible = true;
                            TextBox_Month_20.Visible = true;
                            TextBox_Sales_20.Visible = true;
                            TextBox_Accurals_20.Visible = true;
                            TextBox_Cost_20.Visible = true;
                            TextBox_Margin_20.Visible = true;

                            TextBox_FY_20.Text = FY[19].ToString();
                            TextBox_Month_20.Text = Mon[19].ToString();
                            TextBox_Sales_20.Text = Sales[19].ToString();
                            TextBox_Accurals_20.Text = Accruals[19].ToString();
                            TextBox_Cost_20.Text = Costs[19].ToString();
                            TextBox_Margin_20.Text = Margin[19].ToString();
                        }

                    }
                }
            }
        }

        public void HideValues()
        {
            TextBox_FY_1.Visible = false;
            TextBox_Month_1.Visible = false;
            TextBox_Sales_1.Visible = false;
            TextBox_Accurals_1.Visible = false;
            TextBox_Cost_1.Visible = false;
            TextBox_Margin_1.Visible = false;

            TextBox_FY_2.Visible = false;
            TextBox_Month_2.Visible = false;
            TextBox_Sales_2.Visible = false;
            TextBox_Accurals_2.Visible = false;
            TextBox_Cost_2.Visible = false;
            TextBox_Margin_2.Visible = false;

            TextBox_FY_3.Visible = false;
            TextBox_Month_3.Visible = false;
            TextBox_Sales_3.Visible = false;
            TextBox_Accurals_3.Visible = false;
            TextBox_Cost_3.Visible = false;
            TextBox_Margin_3.Visible = false;

            TextBox_FY_4.Visible = false;
            TextBox_Month_4.Visible = false;
            TextBox_Sales_4.Visible = false;
            TextBox_Accurals_4.Visible = false;
            TextBox_Cost_4.Visible = false;
            TextBox_Margin_4.Visible = false;

            TextBox_FY_5.Visible = false;
            TextBox_Month_5.Visible = false;
            TextBox_Sales_5.Visible = false;
            TextBox_Accurals_5.Visible = false;
            TextBox_Cost_5.Visible = false;
            TextBox_Margin_5.Visible = false;

            TextBox_FY_6.Visible = false;
            TextBox_Month_6.Visible = false;
            TextBox_Sales_6.Visible = false;
            TextBox_Accurals_6.Visible = false;
            TextBox_Cost_6.Visible = false;
            TextBox_Margin_6.Visible = false;

            TextBox_FY_7.Visible = false;
            TextBox_Month_7.Visible = false;
            TextBox_Sales_7.Visible = false;
            TextBox_Accurals_7.Visible = false;
            TextBox_Cost_7.Visible = false;
            TextBox_Margin_7.Visible = false;

            TextBox_FY_8.Visible = false;
            TextBox_Month_8.Visible = false;
            TextBox_Sales_8.Visible = false;
            TextBox_Accurals_8.Visible = false;
            TextBox_Cost_8.Visible = false;
            TextBox_Margin_8.Visible = false;

            TextBox_FY_9.Visible = false;
            TextBox_Month_9.Visible = false;
            TextBox_Sales_9.Visible = false;
            TextBox_Accurals_9.Visible = false;
            TextBox_Cost_9.Visible = false;
            TextBox_Margin_9.Visible = false;

            TextBox_FY_10.Visible = false;
            TextBox_Month_10.Visible = false;
            TextBox_Sales_10.Visible = false;
            TextBox_Accurals_10.Visible = false;
            TextBox_Cost_10.Visible = false;
            TextBox_Margin_10.Visible = false;

            TextBox_FY_11.Visible = false;
            TextBox_Month_11.Visible = false;
            TextBox_Sales_11.Visible = false;
            TextBox_Accurals_11.Visible = false;
            TextBox_Cost_11.Visible = false;
            TextBox_Margin_11.Visible = false;

            TextBox_FY_12.Visible = false;
            TextBox_Month_12.Visible = false;
            TextBox_Sales_12.Visible = false;
            TextBox_Accurals_12.Visible = false;
            TextBox_Cost_12.Visible = false;
            TextBox_Margin_12.Visible = false;

            TextBox_FY_13.Visible = false;
            TextBox_Month_13.Visible = false;
            TextBox_Sales_13.Visible = false;
            TextBox_Accurals_13.Visible = false;
            TextBox_Cost_13.Visible = false;
            TextBox_Margin_13.Visible = false;

            TextBox_FY_13.Visible = false;
            TextBox_Month_13.Visible = false;
            TextBox_Sales_13.Visible = false;
            TextBox_Accurals_13.Visible = false;
            TextBox_Cost_13.Visible = false;
            TextBox_Margin_13.Visible = false;

            TextBox_FY_14.Visible = false;
            TextBox_Month_14.Visible = false;
            TextBox_Sales_14.Visible = false;
            TextBox_Accurals_14.Visible = false;
            TextBox_Cost_14.Visible = false;
            TextBox_Margin_14.Visible = false;

            TextBox_FY_15.Visible = false;
            TextBox_Month_15.Visible = false;
            TextBox_Sales_15.Visible = false;
            TextBox_Accurals_15.Visible = false;
            TextBox_Cost_15.Visible = false;
            TextBox_Margin_15.Visible = false;

            TextBox_FY_16.Visible = false;
            TextBox_Month_16.Visible = false;
            TextBox_Sales_16.Visible = false;
            TextBox_Accurals_16.Visible = false;
            TextBox_Cost_16.Visible = false;
            TextBox_Margin_16.Visible = false;

            TextBox_FY_17.Visible = false;
            TextBox_Month_17.Visible = false;
            TextBox_Sales_17.Visible = false;
            TextBox_Accurals_17.Visible = false;
            TextBox_Cost_17.Visible = false;
            TextBox_Margin_17.Visible = false;

            TextBox_FY_18.Visible = false;
            TextBox_Month_18.Visible = false;
            TextBox_Sales_18.Visible = false;
            TextBox_Accurals_18.Visible = false;
            TextBox_Cost_18.Visible = false;
            TextBox_Margin_18.Visible = false;

            TextBox_FY_19.Visible = false;
            TextBox_Month_19.Visible = false;
            TextBox_Sales_19.Visible = false;
            TextBox_Accurals_19.Visible = false;
            TextBox_Cost_19.Visible = false;
            TextBox_Margin_19.Visible = false;

            TextBox_FY_20.Visible = false;
            TextBox_Month_20.Visible = false;
            TextBox_Sales_20.Visible = false;
            TextBox_Accurals_20.Visible = false;
            TextBox_Cost_20.Visible = false;
            TextBox_Margin_20.Visible = false;


        }

        protected void bt_Save_Click(object sender, EventArgs e)
        {

            if (TextBox_FY_1.Text.Contains("20") && (TextBox_FY_1.Text != FY[0].ToString() || TextBox_Month_1.Text != Mon[0].ToString() || TextBox_Sales_1.Text != Sales[0].ToString() || TextBox_Cost_1.Text != Costs[0].ToString() || TextBox_Accurals_1.Text != Accruals[0].ToString() || TextBox_Margin_1.Text != Margin[0].ToString()))
            {

                UpdateDetailstoDB(ID[0].ToString(), TextBox_Month_1.Text, TextBox_FY_1.Text, TextBox_Sales_1.Text, TextBox_Cost_1.Text, TextBox_Accurals_1.Text, TextBox_Margin_1.Text);


            }
            if (TextBox_FY_2.Text.Contains("20") && (TextBox_FY_2.Text != FY[1].ToString() || TextBox_Month_2.Text != Mon[1].ToString() || TextBox_Sales_2.Text != Sales[1].ToString() || TextBox_Cost_2.Text != Costs[1].ToString() || TextBox_Accurals_2.Text != Accruals[1].ToString() || TextBox_Margin_2.Text != Margin[1].ToString()))
            {

                UpdateDetailstoDB(ID[1].ToString(), TextBox_Month_2.Text, TextBox_FY_2.Text, TextBox_Sales_2.Text, TextBox_Cost_2.Text, TextBox_Accurals_2.Text, TextBox_Margin_2.Text);


            }
            if (TextBox_FY_3.Text.Contains("20") && (TextBox_FY_3.Text != FY[2].ToString() || TextBox_Month_3.Text != Mon[2].ToString() || TextBox_Sales_3.Text != Sales[2].ToString() || TextBox_Cost_3.Text != Costs[2].ToString() || TextBox_Accurals_3.Text != Accruals[2].ToString() || TextBox_Margin_3.Text != Margin[2].ToString()))
            {

                UpdateDetailstoDB(ID[2].ToString(), TextBox_Month_3.Text, TextBox_FY_3.Text, TextBox_Sales_3.Text, TextBox_Cost_3.Text, TextBox_Accurals_3.Text, TextBox_Margin_3.Text);


            }
            if (TextBox_FY_4.Text.Contains("20") && (TextBox_FY_4.Text != FY[3].ToString() || TextBox_Month_4.Text != Mon[3].ToString() || TextBox_Sales_4.Text != Sales[3].ToString() || TextBox_Cost_4.Text != Costs[3].ToString() || TextBox_Accurals_4.Text != Accruals[3].ToString() || TextBox_Margin_4.Text != Margin[3].ToString()))
            {

                UpdateDetailstoDB(ID[3].ToString(), TextBox_Month_4.Text, TextBox_FY_4.Text, TextBox_Sales_4.Text, TextBox_Cost_4.Text, TextBox_Accurals_4.Text, TextBox_Margin_4.Text);

            }
            if (TextBox_FY_5.Text.Contains("20") && (TextBox_FY_5.Text != FY[4].ToString() || TextBox_Month_5.Text != Mon[4].ToString() || TextBox_Sales_5.Text != Sales[4].ToString() || TextBox_Cost_5.Text != Costs[4].ToString() || TextBox_Accurals_5.Text != Accruals[4].ToString() || TextBox_Margin_5.Text != Margin[4].ToString()))
            {

                UpdateDetailstoDB(ID[4].ToString(), TextBox_Month_5.Text, TextBox_FY_5.Text, TextBox_Sales_5.Text, TextBox_Cost_5.Text, TextBox_Accurals_5.Text, TextBox_Margin_5.Text);


            }
            if (TextBox_FY_6.Text.Contains("20") && (TextBox_FY_6.Text != FY[5].ToString() || TextBox_Month_6.Text != Mon[5].ToString() || TextBox_Sales_6.Text != Sales[5].ToString() || TextBox_Cost_6.Text != Costs[5].ToString() || TextBox_Accurals_6.Text != Accruals[5].ToString() || TextBox_Margin_6.Text != Margin[5].ToString()))
            {

                UpdateDetailstoDB(ID[5].ToString(), TextBox_Month_6.Text, TextBox_FY_6.Text, TextBox_Sales_6.Text, TextBox_Cost_6.Text, TextBox_Accurals_6.Text, TextBox_Margin_6.Text);


            }
            if (TextBox_FY_7.Text.Contains("20") && (TextBox_FY_7.Text != FY[6].ToString() || TextBox_Month_7.Text != Mon[6].ToString() || TextBox_Sales_7.Text != Sales[6].ToString() || TextBox_Cost_7.Text != Costs[6].ToString() || TextBox_Accurals_7.Text != Accruals[6].ToString() || TextBox_Margin_7.Text != Margin[6].ToString()))
            {

                UpdateDetailstoDB(ID[6].ToString(), TextBox_Month_7.Text, TextBox_FY_7.Text, TextBox_Sales_7.Text, TextBox_Cost_7.Text, TextBox_Accurals_7.Text, TextBox_Margin_7.Text);


            }
            if (TextBox_FY_8.Text.Contains("20") && (TextBox_FY_8.Text != FY[7].ToString() || TextBox_Month_8.Text != Mon[7].ToString() || TextBox_Sales_8.Text != Sales[7].ToString() || TextBox_Cost_8.Text != Costs[7].ToString() || TextBox_Accurals_8.Text != Accruals[7].ToString() || TextBox_Margin_8.Text != Margin[7].ToString()))
            {

                UpdateDetailstoDB(ID[7].ToString(), TextBox_Month_8.Text, TextBox_FY_8.Text, TextBox_Sales_8.Text, TextBox_Cost_8.Text, TextBox_Accurals_8.Text, TextBox_Margin_8.Text);


            }
            if (TextBox_FY_9.Text.Contains("20") && (TextBox_FY_9.Text != FY[8].ToString() || TextBox_Month_9.Text != Mon[8].ToString() || TextBox_Sales_9.Text != Sales[8].ToString() || TextBox_Cost_9.Text != Costs[8].ToString() || TextBox_Accurals_9.Text != Accruals[8].ToString() || TextBox_Margin_9.Text != Margin[8].ToString()))
            {

                UpdateDetailstoDB(ID[8].ToString(), TextBox_Month_9.Text, TextBox_FY_9.Text, TextBox_Sales_9.Text, TextBox_Cost_9.Text, TextBox_Accurals_9.Text, TextBox_Margin_9.Text);


            }
            if (TextBox_FY_10.Text.Contains("20") && (TextBox_FY_10.Text != FY[9].ToString() || TextBox_Month_10.Text != Mon[9].ToString() || TextBox_Sales_10.Text != Sales[9].ToString() || TextBox_Cost_10.Text != Costs[9].ToString() || TextBox_Accurals_10.Text != Accruals[9].ToString() || TextBox_Margin_10.Text != Margin[9].ToString()))
            {

                UpdateDetailstoDB(ID[9].ToString(), TextBox_Month_10.Text, TextBox_FY_10.Text, TextBox_Sales_10.Text, TextBox_Cost_10.Text, TextBox_Accurals_10.Text, TextBox_Margin_10.Text);


            }
            if (TextBox_FY_11.Text.Contains("20") && (TextBox_FY_11.Text != FY[10].ToString() || TextBox_Month_11.Text != Mon[10].ToString() || TextBox_Sales_11.Text != Sales[10].ToString() || TextBox_Cost_11.Text != Costs[10].ToString() || TextBox_Accurals_11.Text != Accruals[10].ToString() || TextBox_Margin_11.Text != Margin[10].ToString()))
            {

                UpdateDetailstoDB(ID[10].ToString(), TextBox_Month_11.Text, TextBox_FY_11.Text, TextBox_Sales_11.Text, TextBox_Cost_11.Text, TextBox_Accurals_11.Text, TextBox_Margin_11.Text);

            }

            if (TextBox_FY_12.Text.Contains("20") && (TextBox_FY_12.Text != FY[11].ToString() || TextBox_Month_12.Text != Mon[11].ToString() || TextBox_Sales_12.Text != Sales[11].ToString() || TextBox_Cost_12.Text != Costs[11].ToString() || TextBox_Accurals_12.Text != Accruals[11].ToString() || TextBox_Margin_12.Text != Margin[11].ToString()))
            {

                UpdateDetailstoDB(ID[11].ToString(), TextBox_Month_12.Text, TextBox_FY_12.Text, TextBox_Sales_12.Text, TextBox_Cost_12.Text, TextBox_Accurals_12.Text, TextBox_Margin_12.Text);


            }

            if (TextBox_FY_13.Text.Contains("20") && (TextBox_FY_13.Text != FY[12].ToString() || TextBox_Month_13.Text != Mon[12].ToString() || TextBox_Sales_13.Text != Sales[12].ToString() || TextBox_Cost_13.Text != Costs[12].ToString() || TextBox_Accurals_13.Text != Accruals[12].ToString() || TextBox_Margin_13.Text != Margin[12].ToString()))
            {

                UpdateDetailstoDB(ID[12].ToString(), TextBox_Month_13.Text, TextBox_FY_13.Text, TextBox_Sales_13.Text, TextBox_Cost_13.Text, TextBox_Accurals_13.Text, TextBox_Margin_13.Text);


            }

            if (TextBox_FY_13.Text.Contains("20") && (TextBox_FY_13.Text != FY[12].ToString() || TextBox_Month_13.Text != Mon[12].ToString() || TextBox_Sales_13.Text != Sales[12].ToString() || TextBox_Cost_13.Text != Costs[12].ToString() || TextBox_Accurals_13.Text != Accruals[12].ToString() || TextBox_Margin_13.Text != Margin[12].ToString()))
            {

                UpdateDetailstoDB(ID[12].ToString(), TextBox_Month_13.Text, TextBox_FY_13.Text, TextBox_Sales_13.Text, TextBox_Cost_13.Text, TextBox_Accurals_13.Text, TextBox_Margin_13.Text);


            }

            if (TextBox_FY_14.Text.Contains("20") && (TextBox_FY_14.Text != FY[13].ToString() || TextBox_Month_14.Text != Mon[13].ToString() || TextBox_Sales_14.Text != Sales[13].ToString() || TextBox_Cost_14.Text != Costs[13].ToString() || TextBox_Accurals_14.Text != Accruals[13].ToString() || TextBox_Margin_14.Text != Margin[13].ToString()))
            {

                UpdateDetailstoDB(ID[13].ToString(), TextBox_Month_14.Text, TextBox_FY_14.Text, TextBox_Sales_14.Text, TextBox_Cost_14.Text, TextBox_Accurals_14.Text, TextBox_Margin_14.Text);


            }
            if (TextBox_FY_15.Text.Contains("20") && (TextBox_FY_15.Text != FY[14].ToString() || TextBox_Month_15.Text != Mon[14].ToString() || TextBox_Sales_15.Text != Sales[14].ToString() || TextBox_Cost_15.Text != Costs[14].ToString() || TextBox_Accurals_15.Text != Accruals[14].ToString() || TextBox_Margin_15.Text != Margin[14].ToString()))
            {

                UpdateDetailstoDB(ID[14].ToString(), TextBox_Month_15.Text, TextBox_FY_15.Text, TextBox_Sales_15.Text, TextBox_Cost_15.Text, TextBox_Accurals_15.Text, TextBox_Margin_15.Text);


            }
            if (TextBox_FY_16.Text.Contains("20") && (TextBox_FY_16.Text != FY[15].ToString() || TextBox_Month_16.Text != Mon[15].ToString() || TextBox_Sales_16.Text != Sales[15].ToString() || TextBox_Cost_16.Text != Costs[15].ToString() || TextBox_Accurals_16.Text != Accruals[15].ToString() || TextBox_Margin_16.Text != Margin[15].ToString()))
            {

                UpdateDetailstoDB(ID[15].ToString(), TextBox_Month_16.Text, TextBox_FY_16.Text, TextBox_Sales_16.Text, TextBox_Cost_16.Text, TextBox_Accurals_16.Text, TextBox_Margin_16.Text);


            }
            if (TextBox_FY_17.Text.Contains("20") && (TextBox_FY_17.Text != FY[16].ToString() || TextBox_Month_17.Text != Mon[16].ToString() || TextBox_Sales_17.Text != Sales[16].ToString() || TextBox_Cost_17.Text != Costs[16].ToString() || TextBox_Accurals_17.Text != Accruals[16].ToString() || TextBox_Margin_17.Text != Margin[16].ToString()))
            {

                UpdateDetailstoDB(ID[16].ToString(), TextBox_Month_17.Text, TextBox_FY_17.Text, TextBox_Sales_17.Text, TextBox_Cost_17.Text, TextBox_Accurals_17.Text, TextBox_Margin_17.Text);


            }
            if (TextBox_FY_18.Text.Contains("20") && (TextBox_FY_18.Text != FY[17].ToString() || TextBox_Month_18.Text != Mon[17].ToString() || TextBox_Sales_18.Text != Sales[17].ToString() || TextBox_Cost_18.Text != Costs[17].ToString() || TextBox_Accurals_18.Text != Accruals[17].ToString() || TextBox_Margin_18.Text != Margin[17].ToString()))
            {

                UpdateDetailstoDB(ID[17].ToString(), TextBox_Month_18.Text, TextBox_FY_18.Text, TextBox_Sales_18.Text, TextBox_Cost_18.Text, TextBox_Accurals_18.Text, TextBox_Margin_18.Text);


            }
            if (TextBox_FY_19.Text.Contains("20") && (TextBox_FY_19.Text != FY[18].ToString() || TextBox_Month_19.Text != Mon[18].ToString() || TextBox_Sales_19.Text != Sales[18].ToString() || TextBox_Cost_19.Text != Costs[18].ToString() || TextBox_Accurals_19.Text != Accruals[18].ToString() || TextBox_Margin_19.Text != Margin[18].ToString()))
            {

                UpdateDetailstoDB(ID[18].ToString(), TextBox_Month_19.Text, TextBox_FY_19.Text, TextBox_Sales_19.Text, TextBox_Cost_19.Text, TextBox_Accurals_19.Text, TextBox_Margin_19.Text);


            }
            if (TextBox_FY_20.Text.Contains("20") && (TextBox_FY_20.Text != FY[19].ToString() || TextBox_Month_20.Text != Mon[19].ToString() || TextBox_Sales_20.Text != Sales[19].ToString() || TextBox_Cost_20.Text != Costs[19].ToString() || TextBox_Accurals_20.Text != Accruals[19].ToString() || TextBox_Margin_20.Text != Margin[19].ToString()))
            {

                UpdateDetailstoDB(ID[19].ToString(), TextBox_Month_20.Text, TextBox_FY_20.Text, TextBox_Sales_20.Text, TextBox_Cost_20.Text, TextBox_Accurals_20.Text, TextBox_Margin_20.Text);


            }

        }

        public void UpdateDetailstoDB(String id, String Mon, String fy, String sales, String cost, String accural, String margin)
        {
            string proj = Request.QueryString["Project"];
            SqlConnection con = new SqlConnection(conn);
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("sp_UpdateDumpBasedID", con);
            //cmd.Parameters.AddWithValue("@proj", proj);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@mon", Mon);
            cmd.Parameters.AddWithValue("@fy", fy);

            cmd.Parameters.AddWithValue("@order", sales);
            cmd.Parameters.AddWithValue("@cost", cost);
            cmd.Parameters.AddWithValue("@accural", accural);
            cmd.Parameters.AddWithValue("@margin", margin);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            cmd.ExecuteNonQuery();
            //Response.Redirect("HomePage.aspx?Project=" + proj);
        }

        protected void Addnew_Click(object sender, EventArgs e)
        {
            string proj = Request.QueryString["project"];
            string projNam = Request.QueryString["ProjectName"];
            Response.Redirect("EditDetails.aspx?Project=" + proj + "&ProjectName=" + projNam);
        }

        protected void btn_goback_Click(object sender, EventArgs e)
        {
            string proj = Request.QueryString["project"];
            Response.Redirect("HomePage.aspx?Project=" + proj);
        }


        public List<String> getMoth()
        {


            int mo = int.Parse(DateTime.Now.Month.ToString());
            if (mo > 9)
            {
                mo = mo - 9;
            }
            else
            {
                mo = mo + 3;
            }
            string mo1 = mo.ToString();

            lbl_Period.Text = mo1;

            var getMoth = new List<string>()
                    {
                        mo1

                    };

            return getMoth;
        }

    }
}