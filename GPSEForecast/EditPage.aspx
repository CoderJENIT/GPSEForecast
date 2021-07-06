<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="GPSEForecast.EditPage" %>

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
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="edit-form">

                        <div class="edit-info">
                            <h2 class="edit-title">Edit Details of <asp:Label ID="lbl_Proj_name" CssClass="proj-label" runat="server"></asp:Label>
                            </h2> 
                        </div>
                        
                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Booked Value</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_booked_value" type="text" class="form-control"/>
                       </div>

                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Sales to date</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_sales_to_date" type="text" class="form-control"/>
                      </div>

                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Backlog</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_backlog" type="text" class="form-control"/>
                      </div>

                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Sales</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_sales" type="text" class="form-control"/>
                      </div>

                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Costs</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_costs" type="text" class="form-control"/>
                      </div>

                        
                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Accurals</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_accurals" type="text" class="form-control"/>
                      </div>

                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Margin</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_margin" type="text" class="form-control"/>
                      </div>

                        <div class="input-group  input-group mb-4">
                          <div class="input-group-prepend">
                            <div class="input-group-text">Status</div>
                          </div>
                          <asp:TextBox runat="server" id="txt_status" type="text" class="form-control"/>
                      </div>


                        

                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>

            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-2">
                    <div class="button-details">
                        <asp:Button ID="save_button" CssClass="edit-page-btn btn-save" runat="server" Text="Save" OnClick="save_button_Click" />
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="button-details">
                        <asp:Button ID="cancel_button" CssClass="edit-page-btn btn-cancel" runat="server" Text="Cancel" OnClick="cancel_button_Click"/>
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="button-details">
                        <asp:Button ID="del_Button" CssClass="edit-page-btn btn-black" runat="server" Text="Delete" OnClick="del_Button_Click"/>
                    </div>
                </div>

                <div class="col-md-4"></div>
            </div>

        </div>
    </form>
</body>
</html>
