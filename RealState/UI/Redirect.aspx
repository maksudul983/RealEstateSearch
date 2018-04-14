<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirect.aspx.cs" Inherits="RealState.UI.Redirect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redirect</title>
    <style>
        p{
            font:bold 14px consolas;
        }
        a{
            text-decoration:none;
        }
        a:hover{
            text-decoration:underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Redirect to <a href="UserLogin.aspx" target="_blank">Login Page</a></p>
        </div>
    </form>
</body>
</html>
