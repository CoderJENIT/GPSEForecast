<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LineDetails.aspx.cs" Inherits="GPSEForecast.LineDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Text Boxes</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        input {
            font-size: 10px;
        }

        span {
            font-size: 17px;
            text-align:center;
            font-weight:700;
        }

        .text {
            width: 100% !important;
            margin-bottom: 0;
            border: 1px solid #0094ff;
        }
    </style>
</head>



<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <asp:Button runat="server" class="btn button-color-1 mb-3 mt-2" Text="Go Back" ID="btn_goback" OnClick="btn_goback_Click"></asp:Button>

            <asp:Label CssClass="ml-5" ID="Label1" runat="server" Text="Project : "></asp:Label> <asp:Label CssClass="ml-5" ID="lbl_Proj" runat="server"></asp:Label>
            
            <asp:Label CssClass="ml-5" ID="Label2" runat="server" Text="Project Name : "></asp:Label> <asp:Label ID="lbl_ProjName"  CssClass="ml-5" runat="server"></asp:Label>

                        <asp:Label CssClass="ml-5" ID="Label3" runat="server" Text="Period : "></asp:Label> <asp:Label ID="lbl_Period"  CssClass="ml-5" runat="server"></asp:Label>

            <br />
            <br />
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button runat="server" class="btn btn-outline-primary btn-sm btn-block mb-2" Text="Add New" ID="Button1" OnClick="Addnew_Click"></asp:Button>

                </div>
                <div class="col-sm-6">
                    <asp:Button runat="server" class="btn btn-outline-primary btn-sm btn-block mb-2" Text="Save" ID="bt_Save" OnClick="bt_Save_Click"></asp:Button>
                </div>
            </div><br /><br />
            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <span>FY</span>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <span>Mon</span>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                        <span>Sales</span>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                        <span>Cost</span>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                        <span>Accruals</span>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <span >Margin</span>
                    </div>
                    </div>
            </div>
            <%-- Row-1--%>
            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text numeric Accruals" placeholder="Accruals" ID="TextBox_Accurals_1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin"  ID="TextBox_Margin_1" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />

            <%--Row-2--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_2" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_2" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_2" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_2" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_2" runat="server"></asp:TextBox>
                    </div>
                </div>
                   <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_2" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />


            <%--Row-3--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_3" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_3" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_3" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_3" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_3" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_3" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />

            <%--Row-4--%>


            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_4" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_4" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_4" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_4" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_4" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_4" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />
            <%--Row-5--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_5" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_5" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_5" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_5" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_5" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_5" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />

            <%--Row-6--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_6" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_6" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_6" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_6" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_6" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_6" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />

            <%-- Row-7--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_7" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_7" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_7" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_7" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_7" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_7" runat="server"></asp:TextBox>
                    </div>
                    </div>
                <div class="col"></div>
            </div>
            <br />

            <%--Row - 8--%>


            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_8" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_8" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_8" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_8" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_8" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_8" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />

            <%--Row - 9--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_9" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_9" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_9" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_9" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_9" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_9" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />
            <%--Row - 10--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_10" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_10" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_10" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_10" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_10" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_10" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />


            <%--Row - 11--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_11" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_11" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_11" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_11" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_11" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_11" runat="server"></asp:TextBox>
                    </div>
                    </div>
                <div class="col"></div>
            </div>
            <br />

            <%--Row - 12--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_12" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_12" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_12" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_12" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_12" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                         <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_12" runat="server"></asp:TextBox>
                    </div>
                    </div>
            </div>
            <br />
            <%--Row - 13--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_13" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_13" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_13" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_13" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_13" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_13" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <%--Row - 14--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_14" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_14" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_14" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_14" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_14" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_14" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />

            <%--Row - 15--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_15" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_15" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_15" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_15" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_15" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_15" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />

            <%--Row - 16--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_16" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_16" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_16" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_16" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_16" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_16" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />


            <%--Row - 17--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_17" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_17" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_17" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_17" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_17" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_17" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />

            <%--Row - 18--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_18" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_18" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_18" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_18" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_18" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_18" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />

            <%--Row - 19--%>


            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_19" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_19" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_19" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_19" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_19" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_19" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />

            <%--  Row - 20--%>

            <div class="row">
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text fy" placeholder="FY" ID="TextBox_FY_20" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group">
                        <asp:TextBox class="text month" placeholder="Month" ID="TextBox_Month_20" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Sales" placeholder="Sales" ID="TextBox_Sales_20" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Cost" placeholder="Cost" ID="TextBox_Cost_20" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Accurals" placeholder="Accurals" ID="TextBox_Accurals_20" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 m-0 p-0">
                    <div class="input-group  ">
                        <asp:TextBox class="text numeric Margin" placeholder="Margin" ID="TextBox_Margin_20" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>

            <br />
        </div>
    </form>
    <script>
        $('.fy').change(function () {
            if (($(this).val().length != 4) || (isNaN($(this).val())) || ($(this).val().substring(0, 2) != '20')) {
                alert('Please Enter a Year between 2000 to 2099')
            }
        });
        $('.month').change(function () {


            myArray = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

            if (jQuery.inArray($(this).val(), myArray) == -1) {
                alert('Please Enter a Valid Month')

            }
        });

        $('.numeric').change(function () {
            if ((isNaN($(this).val()))) {
                alert('Please Enter Numeric Value')
            }
        });


        //$('.Sales').change(function () {
        //    //alert(parseInt(($('.Sales').val())) - parseInt($('.Cost').val()) - parseInt($('.Accural').val() || 0) );
        //    $('.Margin').val((parseInt($('.Sales').val()) || 0) - (parseInt($('.Cost').val()) || 0) - (parseInt($('.Accural').val() || 0)));
        //});
        //$('.Cost').change(function () {
        //    $('.Margin').val((parseInt($('.Sales').val()) || 0) - (parseInt($('.Cost').val()) || 0) - (parseInt($('.Accural').val() || 0)));
        //});
        //$('.Accural').change(function () {
        //    $('.Margin').val((parseInt($('.Sales').val()) || 0) - (parseInt($('.Cost').val()) || 0) - (parseInt($('.Accural').val() || 0)));
        //});

        $('.Margin').prop("readonly", true);

        $('.Sales').change(function () {

            //  $(this).closest('.row').find('.Margin').val('123')

            var sal = parseFloat($(this).closest('.row').find('.Sales').val()) || 0

            var cost = parseFloat($(this).closest('.row').find('.Cost').val()) || 0

            var acc = parseFloat($(this).closest('.row').find('.Accurals').val()) || 0

            //alert(parseInt(($('.Sales').val())) - parseInt($('.Cost').val()) - parseInt($('.Accural').val() || 0) );
            $('.Margin').prop("readonly", false);
            $(this).closest('.row').find('.Margin').val(sal - cost - acc);
            $('.Margin').prop("readonly", true);
        });
        $('.Cost').change(function () {
            var sal = parseFloat($(this).closest('.row').find('.Sales').val()) || 0

            var cost = parseFloat($(this).closest('.row').find('.Cost').val()) || 0

            var acc = parseFloat($(this).closest('.row').find('.Accurals').val()) || 0

            //alert(parseInt(($('.Sales').val())) - parseInt($('.Cost').val()) - parseInt($('.Accural').val() || 0) );
            $('.Margin').prop("readonly", false);
            $(this).closest('.row').find('.Margin').val(sal - cost - acc);
            $('.Margin').prop("readonly", true);
        });
        $('.Accurals').change(function () {
            var sal = parseFloat($(this).closest('.row').find('.Sales').val()) || 0

            var cost = parseFloat($(this).closest('.row').find('.Cost').val()) || 0

            var acc = parseFloat($(this).closest('.row').find('.Accurals').val()) || 0

            //alert(parseInt(($('.Sales').val())) - parseInt($('.Cost').val()) - parseInt($('.Accural').val() || 0) );
            $('.Margin').prop("readonly", false);
            $(this).closest('.row').find('.Margin').val(sal - cost - acc);
            $('.Margin').prop("readonly", true);

        });

    </script>
</body>
</html>
