<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="GPSEForecast.ViewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>    
    <script src="https://kit.fontawesome.com/d7faa0ef04.js" crossorigin="anonymous"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <a class="btn btn-primary mt-5" href="AdminPanel.aspx">
                Go Back
            </a>
            <div class="head-box">
                <h1 class="admin-head"> Edit Details</h1>
            </div>
            <div class="col-12 mb-3">
             <asp:gridview runat="server"   ID="gv_Dump" Width="100%"   Height="100%"  ViewStateMode="Enabled" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" CellPadding="4"  Font-Size="12px" AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="gv_Dump_SelectedIndexChanged">
                            <FooterStyle BackColor="#009999" />
                            <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />

            </asp:gridview >
            </div>
        </div>
    </form>
</body>
</html>