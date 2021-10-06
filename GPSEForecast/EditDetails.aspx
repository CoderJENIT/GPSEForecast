<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="GPSEForecast.EditDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<div class="container">
    <br />
    <br />
    <div class="row">

        
                         <asp:Button ID="btn_goBack" runat="server" class="btn button-color-1 btn-sm" Text="Go Back" OnClick="btn_goBack_Click" ></asp:Button>
                    

        <asp:Label CssClass="ml-5" ID="Label1" runat="server" Text="Project : "></asp:Label> <asp:Label CssClass="ml-5" ID="lbl_Proj" runat="server"></asp:Label>
            
            <asp:Label CssClass="ml-5" ID="Label2" runat="server" Text="Project Name : "></asp:Label> <asp:Label ID="lbl_ProjName"  CssClass="ml-5" runat="server"></asp:Label>

            <asp:Label CssClass="ml-5" ID="Label3" runat="server" Text="Period : "></asp:Label> <asp:Label ID="lbl_Period"  CssClass="ml-5" runat="server"></asp:Label>

            <br />


    </div>
    <br />
    <br />
        <div class="row">
            <div class="col-md-6">
                    

                    <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">FY</div>
                      </div>
                      <asp:DropDownList runat="server" ID="drp_fy" class="custom-select">
                        <asp:ListItem Value="Choose FY" selected>Choose FY</asp:ListItem>
                        <asp:ListItem value="2020">2020</asp:ListItem>
                        <asp:ListItem value="2021">2021</asp:ListItem>
                          <asp:ListItem value="2022">2022</asp:ListItem>
                          <asp:ListItem value="2023">2023</asp:ListItem>
                          <asp:ListItem value="2024">2024</asp:ListItem>
                          <asp:ListItem value="2025">2025</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                    <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Month</div>
                      </div>
                      <asp:DropDownList runat="server" ID="drp_Month" class="custom-select">
                        <asp:ListItem Value="Choose Month" selected>Choose Month</asp:ListItem>
                        <asp:ListItem value="Jan">Jan</asp:ListItem>
                        <asp:ListItem value="Feb">Feb</asp:ListItem>
                                                  <asp:ListItem value="Mar">Mar</asp:ListItem>
                        <asp:ListItem value="Apr">Apr</asp:ListItem>
                                                  <asp:ListItem value="May">May</asp:ListItem>
                        <asp:ListItem value="Jun">Jun</asp:ListItem>
                                                  <asp:ListItem value="Jul">Jul</asp:ListItem>
                        <asp:ListItem value="Aug">Aug</asp:ListItem>
                                                  <asp:ListItem value="Sep">Sep</asp:ListItem>
                        <asp:ListItem value="Oct">Oct</asp:ListItem>
                                                  <asp:ListItem value="Nov">Nov</asp:ListItem>
                        <asp:ListItem value="Dec">Dec</asp:ListItem>
                      </asp:DropDownList>
                  </div>

                    
                    <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Sales</div>
                      </div>
                      <asp:TextBox CssClass="form-control form-control-sm" runat="server" Text="0" ID="txt_order"></asp:TextBox>
                    </div>
                    <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Cost</div>
                      </div>
                      <asp:TextBox CssClass="form-control form-control-sm" runat="server" Text="0" ID="txt_Cost"></asp:TextBox>
                    </div>
                    <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Accruals</div>
                      </div>
                      <asp:TextBox CssClass="form-control form-control-sm" runat="server" Text="0" ID="txt_accrual"></asp:TextBox>
                    </div>

                <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Margin</div>
                      </div>
                      <asp:TextBox CssClass="form-control form-control-sm" runat="server" Text="0" ID="txt_margin"></asp:TextBox>
                    </div>

                    <div class="input-group input-group-sm mb-2">
                    <asp:TextBox runat="server" ID="txt_notes" TextMode="MultiLine" class="form-control" rows="2" placeholder="Notes"></asp:TextBox>
                    </div>

                    <asp:Button id="btn_Save"   runat="server" class="btn btn-outline-primary btn-sm btn-block mb-2" Text="Submit" OnClick="btn_Save_Click"></asp:Button>
         
            </div>
        </div>
    </div>
    </form>
        
        
        <script>

            $('#txt_margin').prop("readonly", true);

            $('#txt_order').change(function () {

                $('#txt_margin').prop("readonly", false);
                $('#txt_margin').val(($('#txt_order').val() - $('#txt_Cost').val() - $('#txt_accrual').val()));
                $('#txt_margin').prop("readonly", true);


            });

            $('#txt_accrual').change(function () {

                $('#txt_margin').prop("readonly", false);
                $('#txt_margin').val(($('#txt_order').val() - $('#txt_Cost').val() - $('#txt_accrual').val()));
                $('#txt_margin').prop("readonly", true);

            });

            $('#txt_Cost').change(function () {

                $('#txt_margin').prop("readonly", false);
                $('#txt_margin').val(($('#txt_order').val() - $('#txt_Cost').val() - $('#txt_accrual').val()));
                $('#txt_margin').prop("readonly", true);

            });





            $('#btn_Save').click(function () {

        

                if (($.trim($('#drp_fy').val()) == 'Choose FY')) {
                    alert('FY can not be left blank');
                    return false;
                }

                if (($.trim($('#drp_Month').val()) == 'Choose Month')) {
                    alert('Month can not be left blank');
                    return false;
                }
                
                if (($.trim($('#txt_order').val()) == '')) {
                    alert('Order can not be left blank');
                    return false;
                }

                if (($.trim($('#txt_Cost').val()) == '')) {
                    alert('Cost can not be left blank');
                    return false;
                }
                if (($.trim($('#txt_accrual').val()) == '')) {
                    alert('Accruals can not be left blank');
                    return false;
                }
                var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
                var str = $('#txt_order').val();
                if (!numberRegex.test(str)) {
                    alert('Order value is not valid');
                    return false;
                } 
                var str = $('#txt_Cost').val();
                if (!numberRegex.test(str)) {
                    alert('Cost value is not valid');
                    return false;
                } 
                var str = $('#txt_accrual').val();
                if (!numberRegex.test(str)) {
                    alert('Accrual value is not valid');
                    return false;
                } 
            });
        </script>


    <%--<script>
        function Clear_text() {
            document.getElementById("txt_Project").value = "";
            $("#drp_fy").val($("#drp_fy option:first").val());
            $("#drp_Month").val($("#drp_Month option:first").val());
            document.getElementById("txt_order").value = "";
            document.getElementById("txt_Cost").value = "";
            document.getElementById("txt_accrual").value = "";
            document.getElementById("txt_notes").value = "";
        }
    </script>--%>

</body>
</html>
