<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RealStateSolution.admin.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../css/adminLogin.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Login</h1>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter username" CssClass="text-box"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="txtUsername" runat="server" ErrorMessage="Username required">&nbsp;</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter password" TextMode="Password" CssClass="text-box"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password required">&nbsp;</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" CssClass="button" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </div>
        <div class="validation-summary">
            <asp:ValidationSummary ID="vs1" runat="server" />
        </div>
    </form>
</body>
</html>
