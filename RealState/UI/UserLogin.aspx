<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="RealStateSolution.UI.UserLogin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <link rel="stylesheet" href="../css/adminLogin.css"/>
       <link href="../css/reset.css" rel="stylesheet" />
    <link href="../css/responsive.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
         <header>
                <div class="wrapper">
                    <a href="#" class="hamburger"></a>
                    <nav>
                        <ul>

                            <li><a href="Index.aspx">Home</a></li>
                            <li><a href="BuyerChoice.aspx">Buy</a></li>
                            <li><a href="Property.aspx">Sell</a></li>
                            <li><a href="About.aspx">About</a></li>
                            <li><a href="ContactUs.aspx">Contact</a></li>
                        </ul>
                        <a href="UserLogin.aspx" class="login_btn">Login</a>
                        <a href="../null.aspx" class="login_btn">Logout</a>



                    </nav>
                </div>
            </header>
            <!--  end header section  -->

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

            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </div>
        <div class="registration-link">
            <p>Don't have an account? <a href="Registration.aspx" target="_blank">Click here</a></p>
        </div>
        <div class="validation-summary">
            <asp:ValidationSummary ID="vs1" runat="server" />
        </div>

       


    </form>
</body>
</html>
