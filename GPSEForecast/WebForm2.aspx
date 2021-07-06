<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TextBoxes.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Text Boxes</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br /><br />
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button runat="server" class="btn btn-outline-primary btn-sm btn-block mb-2" Text="Add New" ID="Button1" OnClick="Addnew_Click"></asp:Button>
 
            </div>
                 <div class="col-sm-6">
                         <asp:Button runat="server" class="btn btn-outline-primary btn-sm btn-block mb-2" Text="Save" id="bt_Save" OnClick="bt_Save_Click" ></asp:Button>
          </div>
                 </div>

              <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <span >FY</span>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <span >Month</span>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <span >Sales</span>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                      <span >Cost</span>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                        <span >Accurals</span>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <span >Margin</span>
                    </div>
                    </div>
                </div>
                 <%-- Row-1--%>
                <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class="mb-3" placeholder="FY" ID="TextBox_FY_1" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_1" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_1" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_1" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_1" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_1" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

            <%--Row-2--%>
         
                 <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_2" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_2" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_2" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_2" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_2" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_2" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />    


            <%--Row-3--%>

                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_3" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_3" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_3" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_3" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_3" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_3" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

            <%--Row-4--%>

                     
                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_4" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_4" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_4" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_4" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_4" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_4" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
            <%--Row-5--%>
        
       <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_5" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_5" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_5" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_5" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_5" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_5" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
                          
            <%--Row-6--%>

                    <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_6" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_6" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_6" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_6" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_6" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_6" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

           <%-- Row-7--%>

                    <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_7" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_7" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_7" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_7" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_7" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_7" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

 <%--Row - 8--%>


                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_8" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_8" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_8" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_8" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_8" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_8" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

            <%--Row - 9--%>

                    <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_9" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_9" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_9" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_9" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_9" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_9" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
            <%--Row - 10--%>

                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_10" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_10" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_10" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_10" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_10" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_10" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
        
           
            <%--Row - 11--%>

                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_11" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_11" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_11" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_11" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_11" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_11" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
            
            <%--Row - 12--%>

                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_12" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_12" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_12" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_12" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_12" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_12" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
            <%--Row - 13--%>

                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_13" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_13" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_13" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_13" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_13" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_13" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
            <%--Row - 14--%>
            
                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_14" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_14" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_14" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_14" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_14" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_14" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

            <%--Row - 15--%>

                    <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_15" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_15" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_15" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_15" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_15" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_15" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

            <%--Row - 16--%>

                    <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_16" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_16" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_16" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_16" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_16" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_16" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />


            <%--Row - 17--%>

                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_17" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_17" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_17" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_17" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_17" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_17" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

            <%--Row - 18--%>

                     <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_18" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_18" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_18" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_18" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_18" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_18" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />

            <%--Row - 19--%>
        
            
             <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_19" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_19" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_19" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_19" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_19" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_19" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <br />
                
          <%--  Row - 20--%>

                         <div class="row">
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="FY" ID="TextBox_FY_20" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-1 m-0 p-0">
                    <div class="input-group">
                         <asp:TextBox class=" mb-3" placeholder="Month" ID="TextBox_Month_20" runat="server"></asp:TextBox>
                    </div>
                    </div>
                   
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Sales" ID="TextBox_Sales_20" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Cost" ID="TextBox_Cost_20" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-2 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Accurals" ID="TextBox_Accurals_20" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-3 m-0 p-0">
                    <div class="input-group mb-3">
                         <asp:TextBox class="" placeholder="Margin" ID="TextBox_Margin_20" runat="server"></asp:TextBox>
                    </div>
                    </div>
                </div>
             
            <br />
            </div>
        </form>
</body>
</html>
