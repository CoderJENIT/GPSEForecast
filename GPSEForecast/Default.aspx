<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GPSEForecast.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error</title>
    <style>
        .error-box{
            padding:80px 100px;
            display:flex;
            align-items:center;
            justify-content:center;
            flex-direction:column;
        }
        .error-message{
            font-size:30px;
            text-transform:capitalize;
            font-weight:600;
            padding:20px;
            margin-bottom:20px;
        }
        .home-button{
            height:35px;
            width:120px;
            color:white;
            background-color:#003c75;
            display:flex;
            align-items:center;
            justify-content:center;
            border-radius:50px;
            text-decoration:none;
            margin-bottom:30px;
        }
        .home-button:hover{
            background-color:#003fed;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="error-box">
        <h3 class="error-message">
            Somethig went wrong, please try agaian later
        </h3> 
        
            <a class="home-button" href="HomePage.aspx">
                Click Here
            </a> to go back
    </div>
    </form>
</body>
</html>
