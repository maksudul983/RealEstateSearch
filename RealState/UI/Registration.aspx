<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RealStateSolution.UI.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="../css/registration.css" />

   


</head>
<body>

    


    <form id="form1" runat="server">
        <div class="container">
            <h1>Registration</h1>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblUserType" runat="server" CssClass="label">User Type</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl1" runat="server" CssClass="ddl">
                            <asp:ListItem Text="Select User" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Buyer" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Seller" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="ddl1" InitialValue="-1" runat="server" ErrorMessage="User type required">&nbsp;
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblname" runat="server" CssClass="label">Username</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter username" CssClass="text-box"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv2" ControlToValidate="txtUsername" runat="server" ErrorMessage="Username required">&nbsp;
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblFullName" runat="server" CssClass="label">Full Name</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="text-box" placeholder="Enter full name"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv3" ControlToValidate="txtFullname" runat="server" ErrorMessage="Fullname required">&nbsp;
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" CssClass="label">Email</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" TextMode="Email" placeholder="Enter email" CssClass="text-box" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv4" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email required">&nbsp;
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpassword" runat="server" CssClass="label">Password</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="text-box" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv5" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password required">&nbsp;
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblConfirmPassword" runat="server" CssClass="label">Confirm Password</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="text-box" TextMode="Password" placeholder="Enter confirm password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv6" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="Confirm password required">&nbsp;
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cv1" runat="server" ErrorMessage="Password sould be match" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword">&nbsp;</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPhoneNumber" runat="server" CssClass="label">Phone Number</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneNumber" TextMode="Number" runat="server" CssClass="text-box" placeholder="Enter phone number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv7" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone number required">&nbsp;</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnRegistration" Text="Registration" CssClass="button" runat="server" OnClick="btnRegistration_Click" />
            <br />
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </div>

        <div class="validation-summary">
            <asp:ValidationSummary ID="vs1" runat="server" />
        </div>
    </form>
</body>
</html>
