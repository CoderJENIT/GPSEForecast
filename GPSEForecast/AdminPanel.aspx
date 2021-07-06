<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="GPSEForecast.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/d7faa0ef04.js" crossorigin="anonymous"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <a class="btn btn-primary mt-5" href="HomePage.aspx">Go Back
            </a>
            <div class="head-box">
                <h1 class="admin-head">Admin panel</h1>
            </div>
            <div class="row">
                <%--<div class="col-md-3">
                    <div class="button-details">
                        <asp:Button ID="edit_Button" CssClass="admin-button" runat="server" Text="Edit Details" OnClick="edit_Button_Click" />
                    </div>
                </div>--%>
                <div class="col-md"></div>
                <div class="col-md-3">
                    <div class="button-details">
                        <button type="button" id="carry_button" class="admin-button" data-toggle="modal" data-target="#carry-over">Carry Over</button>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="button-details">
                        <button type="button" id="del_button" class="admin-button" data-toggle="modal" data-target="#delete-details">Delete Details</button>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="button-details">
                        <button type="button" id="mapping_button" class="admin-button" data-toggle="modal" data-target="#mapping-details">Mapping Details</button>
                    </div>
                </div>
                <div class="col-md"></div>

            </div>
        </div>


        <%--Carry Over Modal--%>

        <div class="modal fade carry-modal" id="carry-over" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Do You Want to Proceed ?</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
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
                                </div>
                                <br />
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

                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <b>Note:</b><br />  Please select the month, the data will automatically be carry forwarded from the previous one.
                            </div>
                            <div class="col-md-2"></div>
                        </div>

                    </div>


                    <div class="modal-footer">
                        <asp:Button ID="btn_proceed" Class="btn btn-primary" runat="server" Text="Proceed" OnClick="carry_button_Click" />

                    </div>



                </div>
            </div>
        </div>


        <%--Delete Details Modal--%>

        <div class="modal fade carry-modal" id="delete-details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Do You Want to Delete the Details ?</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-4">
                                <br />
                                <div class="input-group  input-group-sm mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">FY</div>
                                    </div>
                                    <asp:DropDownList ID="ddl_FY_del" CssClass="ddl dropdown-year" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <br />
                                <div class="input-group  input-group-sm mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">Period</div>
                                    </div>
                                    <asp:DropDownList ID="ddl_Period_del" CssClass="ddl dropdown-month" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>
                                </div>


                            </div>
                            <div class="col-md-2"></div>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="Delete_button" Class="btn btn-primary" runat="server" Text="Proceed" OnClick="Delete_button_Click" />
                    </div>



                </div>
            </div>
        </div>


        <%--Mapping Modal--%>


        <div class="modal fade" id="mapping-details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Upload Excel</h5>
        <asp:Button ID="bt_DowloadTemplate" runat="server" CssClass="btn-primary ml-5" Text="Download Template" OnClick="bt_DowloadTemplate_Click" />
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
          <div class="input-group">              
             <asp:FileUpload ID="UploadDoc" CssClass="form-control" runat="server" />
          </div>
      </div>
      <div class="modal-footer">
          
          <asp:Button ID="bt_UploadTemplate" runat="server" CssClass="btn-primary" Text="Upload Template" OnClick="bt_UploadTemplate_Click" />
      </div>
    </div>
  </div>
</div>



    </form>
</body>
</html>
