<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="GPSEForecast.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>    
    <script src="https://kit.fontawesome.com/d7faa0ef04.js" crossorigin="anonymous"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <br />
    <form runat="server">
        <div class="container">
         <div class="row">            
             <asp:Button runat="server" class="btn btn-outline-primary btn-sm mb-2" Text="Go Back" ID="Button2"></asp:Button>

            <div class="col-12 mb-3">
             <asp:gridview runat="server"   ID="GridviewLeadTable" Width="100%"   Height="100%"  ViewStateMode="Enabled" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" CellPadding="4"  Font-Size="XX-Small" AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#000066" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridviewLeadTable_SelectedIndexChanged"  OnRowCreated="GridviewLeadTable_RowCreated"  >
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
            <asp:Button runat="server" class="btn btn-outline-primary btn-sm btn-block mb-2" Text="Add New" ID="Addnew" OnClick="Addnew_Click"></asp:Button>
        </div>
         </div>
</form>
</body>
</html>
