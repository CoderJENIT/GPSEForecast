<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GPSEForecast.HomePage" %>

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
    <style>
        .column {
  float: left;
  width: 40.33%;
  padding: 5px;}
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
    <div>
    
        <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">

                <div class="row">
                    <div class="col-md-6 mb-2 col-6">
                        <div class="fonts-icon" onclick="Clear_text();">
                            <div class="btn btn-primary">
                            <span><%--<i class="fas fa-plus"></i>--%></span>
                            <span>New Project</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-2 col-6">
                        <div class="fonts-icon">
                        <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#file-upload"><%--<i class="fas fa-upload"></i>--%> Upload Excel</button>
                        </div>
                    </div>
                </div>
              
                    <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Project</div>
                      </div>
                       <asp:DropDownList runat="server" ID="drp_Project" class="custom-select"></asp:DropDownList>
                                          <asp:TextBox runat="server" id="txt_Project" type="text" class="form-control"/>
                          </div>

                    <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Project Name</div>
                      </div>
                      <asp:DropDownList runat="server" ID="drp_ProjectName" class="custom-select"></asp:DropDownList>
                      <asp:TextBox runat="server" id="txt_ProjectName" type="text" class="form-control"/>
                  </div>

                   <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">CPM</div>
                      </div>
                      <asp:DropDownList runat="server" ID="drp_CPM" class="custom-select"></asp:DropDownList>
                  </div>
                

                  <div class="input-group  input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Revenue Method</div>
                      </div>
                      <asp:DropDownList runat="server" ID="drp_revenuemethod" class="custom-select"></asp:DropDownList>
                  </div>

                  <div class="input-group input-group-sm mb-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Profit Center</div>
                      </div>
                     <asp:DropDownList runat="server" ID="drp_ProfitCenter" AutoPostBack="True" class="custom-select" OnSelectedIndexChanged="drp_ProfitCenter_SelectedIndexChanged"></asp:DropDownList>
                  </div>

                    <div class="input-group input-group-sm mb-2">
                          <div class="input-group-prepend">
                            <div class="input-group-text">GCK</div>
                          </div>
                        <asp:DropDownList runat="server" ID="drp_GCK" class="custom-select"></asp:DropDownList>
                      </div>

                    <div class="input-group input-group-sm mb-2">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Business Field</div>
                          </div>
                          <asp:DropDownList runat="server" ID="drp_businessfield" class="custom-select">   </asp:DropDownList>
                      </div>

                    <div class="input-group input-group-sm mb-2">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Trading Partner / Country</div>
                          </div>
                          <asp:DropDownList runat="server" ID="drp_tradingpartner" class="custom-select">   </asp:DropDownList>
                      </div>

                    <div class="input-group input-group-sm mb-2">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Partner PC</div>
                          </div>
                          <asp:DropDownList runat="server" ID="drp_PartnerDepthStructure" class="custom-select">   </asp:DropDownList>
                      </div>

                    <%--<div class="input-group  input-group-sm mb-2">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Original OE Booking Year</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_Original_oe_booking_year" type="text" class="form-control"/>
                      </div>--%>

                    <div class="input-group input-group-sm mb-2">
                        <asp:TextBox runat="server" ID="txt_comments" TextMode="MultiLine" class="form-control" rows="2" placeholder="Spot for comments / notes"></asp:TextBox>
                    </div>
                 <asp:TextBox runat="server" ID="txt_flag"  rows="2" style="display:none"></asp:TextBox>
                    <div class="row">
                        <div class="col-md-3">
                             <asp:Button ID="btn_submit1" runat="server" class="btn btn-outline-primary btn-sm btn-block mb-2 button-color" Text="Submit" OnClick="btn_submit1_Click" ></asp:Button>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="btn_Add" runat="server" class="btn btn-sm btn-block mb-2 button-color" Text="Add New" OnClick="btn_Add_Click"></asp:Button>
                        </div>
                        <div class="col-md-3">                
                            <asp:Button  ID="btn_edit" runat="server" class="btn btn-sm btn-block mb-2 button-color" Text="View / Edit Details" OnClick="btn_edit_Click"></asp:Button>
                        </div>            
                        <div class="col-md-3 mb-2">
                            <div class="fonts-icon">
                                <asp:Button ID="OTP_button" class="btn btn-primary btn-block button-color" runat="server" Text="Admin Panel"  OnClick="OTP_button_Click" />
                            </div>
                        </div>
                    </div>    
              
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

        <!-- Modal -->
<div class="modal fade" id="carry-over" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Please Enter the OTP sent to XXX@XXX.com</h5>
          <div class="modal-body d-flex justify-content-center">  
              <asp:TextBox ID="OTP_box" runat="server"></asp:TextBox>
          </div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body d-flex justify-content-center">          
        <asp:Button runat="server" type="button" class="btn btn-primary" Text="Submit"></asp:Button>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="file-upload" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Upload Excel</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <br />
                    <div class="input-group  input-group-sm mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">FY</div>
                        </div>
                        <asp:DropDownList ID="ddl_FY" CssClass="ddl dropdown-year" runat="server">
                        </asp:DropDownList>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="col-md-4">
                    <br />
                    <div class="input-group  input-group-sm mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">Period</div>
                        </div>
                        <asp:DropDownList ID="ddl_Month" CssClass="ddl dropdown-month" runat="server">
                           
                        </asp:DropDownList>
                    </div>


                </div>
                <div class="col-md-2"></div>
            </div>

            
        </div>
      <div class="modal-body">
          <div class="input-group">              
             <asp:FileUpload ID="UploadDoc" CssClass="form-control" runat="server" />
          </div>
      </div>
      <div class="modal-footer">
        <asp:Button runat="server" ID="bt_DowloadTemplate" type="button" class="btn btn-secondary" Text="Download Template" OnClick="bt_DowloadTemplate_Click"></asp:Button>
        <asp:Button runat="server" ID="bt_UploadTemplate" type="button" class="btn button-color-1" Text="Upload Excel" OnClick="bt_UploadTemplate_Click"></asp:Button>
      </div>
    </div>
  </div>
</div>


    </div>
    </form>


     <script>
         $(document).ready(function () {
             if (($.trim($('#drp_Project').val()) == '') && ($.trim($('#txt_Project').val()) == '')) {
                 $('#btn_Add').attr('disabled', 'disabled');
                 $('#btn_edit').attr('disabled', 'disabled');
                 //$('#drp_Project').removeAttr("disabled");
                 //$('#txt_Project').removeAttr("disabled");
             }
             else {
                 //$('#drp_Project').attr('disabled', 'disabled');
                 //$('#txt_Project').attr('disabled', 'disabled');
                 $('#btn_Add').removeAttr("disabled");
                 $('#btn_edit').removeAttr("disabled");
             }
         });


         $("#drp_Project").change(function () {
            
             if (($.trim($('#drp_Project').val()) == '')) {
                 $('#btn_Add').attr('disabled', 'disabled');
                 $('#btn_edit').attr('disabled', 'disabled');
             }
             else {
                 $('#btn_Add').removeAttr("disabled");
                 $('#btn_edit').removeAttr("disabled");
             }
         });
         $("#txt_Project").change(function () {
           
             if (($.trim($('#txt_Project').val()) == '')) {
                 $('#btn_Add').attr('disabled', 'disabled');
                 $('#btn_edit').attr('disabled', 'disabled');
             }
             else {
                 $('#btn_Add').removeAttr("disabled");
                 $('#btn_edit').removeAttr("disabled");
             }
         });

         function Clear_text() {
             $('#drp_Project').prop('disabled', false)
             document.getElementById("txt_flag").value = "1";
             $('#txt_Project').prop('disabled', false)
             document.getElementById("txt_Project").value = "";
             alert("The Data Will be Reset");
             alert($("#drp_businessfield").val());
             $("#txt_project").val(0);
             $("#drp_businessfield").val($("#drp_businessfield option:first").val());
             $("#drp_revenuemethod").val($("#drp_revenuemethod option:first").val());
             $("#drp_ProfitCenter").val($("#drp_ProfitCenter option:first").val());
             $("#drp_GCK").val($("#drp_GCK option:first").val());
             $("#drp_tradingpartner").val($("#drp_tradingpartner option:first").val());
             $("#drp_PartnerDepthStructure").val($("#drp_PartnerDepthStructure option:first").val());
             $("#drp_CPM").val($("#drp_CPM option:first").val());
             txt_Project
             document.getElementById("txt_ProjectName").value = "";
             //document.getElementById("txt_cmp").value = "";
             //document.getElementById("drp_revenuemethod").value = "";
             //document.getElementById("txt_profitcenter").value = "";
             //document.getElementById("txt_gck").value = "";
             //document.getElementById("drp_businessfield").value = "";
             //document.getElementById("drp_tradingpartner").value = "";
             //document.getElementById("txt_partnerdepth").value = "";
             document.getElementById("txt_Original_oe_booking_year").value = "";
             document.getElementById("txt_comments").value = "";
         }
         $('#btn_submit1').click(function () {
             if (($.trim($('#drp_Project').val()) == '') && ($.trim($('#txt_Project').val()) == '')) {
                 alert('Project can not be left blank');
                 return false;
             }
             if (($.trim($('#drp_ProjectName').val()) == '') && ($.trim($('#txt_ProjectName').val()) == '')) {
                 alert('Project Name can not be left blank');
                 return false;
             }
             if (($.trim($('#drp_revenuemethod').val()) == '')) {
                 alert('Revenue Method can not be left blank');
                 return false;
             }

             if (($.trim($('#drp_ProfitCenter').val()) == '')) {
                 alert('Profit Center can not be left blank');
                 return false;
             }
             if (($.trim($('#drp_GCK').val()) == '')) {
                 alert('GCK Method can not be left blank');
                 return false;
             }
             if (($.trim($('#drp_businessfield').val()) == '')) {
                 alert('Businessfield  can not be left blank');
                 return false;
             }
             if (($.trim($('#drp_tradingpartner').val()) == '')) {
                 alert('Trading Partner  can not be left blank');
                 return false;
             }
             document.getElementById("txt_flag").value = "0";
             if (($.trim($('#drp_PartnerDepthStructure').val()) == '')) {
                 alert('Partner Depth Structure can not be left blank');
                 return false;
             }
             //if (($.trim($('#txt_Original_oe_booking_year').val()) == '')) {
             //    alert('original Booking Year can not be left blank');
             //    return false;
             //}



             //var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
             //var str = $('#txt_comments').val();
             //if (!numberRegex.test(str)) {
             //    alert('I am a number');
             //    return false;
             //} 
             //return false;
         });

     </script>


    <script>
        function Clear_text() {
            document.getElementById("txt_Project").value = "";
            document.getElementById("txt_flag").value = "1";
           $("#txt_project").val(0);
           $("#drp_businessfield").val($("#drp_businessfield option:first").val());
           $("#drp_revenuemethod").val($("#drp_revenuemethod option:first").val());
           $("#drp_ProfitCenter").val($("#drp_ProfitCenter option:first").val());
           $("#drp_GCK").val($("#drp_GCK option:first").val());
           $("#drp_tradingpartner").val($("#drp_tradingpartner option:first").val());
           $("#drp_PartnerDepthStructure").val($("#drp_PartnerDepthStructure option:first").val());
           $("#drp_CPM").val($("#drp_CPM option:first").val());
           txt_Project
           document.getElementById("txt_ProjectName").value = "";
           //document.getElementById("txt_cmp").value = "";
           //document.getElementById("drp_revenuemethod").value = "";
           //document.getElementById("txt_profitcenter").value = "";
           //document.getElementById("txt_gck").value = "";
           //document.getElementById("drp_businessfield").value = "";
           //document.getElementById("drp_tradingpartner").value = "";
           //document.getElementById("txt_partnerdepth").value = "";
           //document.getElementById("txt_Original_oe_booking_year").value = "";
           document.getElementById("txt_comments").value = "";
           window.location.href = "HomePage.aspx";
        }
       
    </script>

</body>
    </html>
