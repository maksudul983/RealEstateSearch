<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Property Details.aspx.cs" Inherits="RealState.Property_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <link href="../css/reset.css" rel="stylesheet" />
    <link href="../css/responsive.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
    </style>
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
                            <li><a href="#">About</a></li>
                            <li><a href="ContactUs.aspx">Contact</a></li>
                        </ul>
                        <a href="UserLogin.aspx" class="login_btn">Login</a>
                       

                    </nav>
                </div>
            </header>
            <!--  end header section  -->

    <div>
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("image") %>' Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("PropertyID") %>' Visible="False"></asp:Label>
&nbsp;<table class="auto-style1">
                                <tr>
                                    <td>Property Type:-</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="LabelPropertyType" runat="server" Text='<%# Eval("PropertyType") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>Property Name:-</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="LabelPropertyName" runat="server" Text='<%# Eval("PropertyName") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>Address:-</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="LabelPropertyAddress" runat="server" Text='<%# Eval("PropertyAddress") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>Descriprion</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Labeldescription" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>Bed Rooms:-</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="LabelNoOfBedRoom" runat="server" Text='<%# Eval("No_Of_BedRoom") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>Bathroom:-</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="LabelNoOfBathRoom" runat="server" Text='<%# Eval("No_Of_BathRoom") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>Price:-</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Labelprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="ButtonRequest" runat="server" CommandName="request" style="text-align: center" Text="Request To Buy" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="LabelMessage" runat="server" Text="."></asp:Label>
    </div>

         <footer>
            <div class="wrapper footer">
                <ul>
                    <li class="links">
                        <ul>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">Terms</a></li>
                            <li><a href="#">Policy</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </li>

                    <li class="links">
                        <ul>
                            <li><a href="#">Appartements</a></li>
                            <li><a href="#">Houses</a></li>
                            <li><a href="#">Villas</a></li>

                            <li><a href="#">...</a></li>
                        </ul>
                    </li>

                    <li class="links">
                        <ul>
                            <li><a href="#">Dhaka</a></li>
                            <li><a href="#">Chittagong</a></li>
                            <li><a href="#">Khulna</a></li>
                            <li><a href="#">Shylet</a></li>
                            <li><a href="#">...</a></li>
                        </ul>
                    </li>

                    <li class="about">
                        <p>Real Estate System</p>
                        <ul>
                            <li><a href="http://facebook.com/rahat.maksud" class="facebook" target="_blank"></a></li>
                            <li><a href="http://twitter.com/MaksudulRahat" class="twitter" target="_blank"></a></li>
                            <li><a href="http://plus.google.com/+MaksudulIslamRahat" class="google" target="_blank"></a></li>
                            <li><a href="#" class="skype"></a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="copyrights wrapper">
                Copyright © 2017  All Rights Reserved by Maksudul Islam
            </div>
        </footer>
        <!--  end footer  -->


    </form>
</body>
</html>
