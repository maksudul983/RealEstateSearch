<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyerChoice.aspx.cs" Inherits="RealStateSolution.UI.BuyerChoice" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buyer's Choice</title>
    <link rel="stylesheet" href="../css/buyerchoice.css" />

    
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
                            <li><a href="#">About</a></li>
                            <li><a href="ContactUs.aspx">Contact</a></li>
                        </ul>
                        <a href="UserLogin.aspx" class="login_btn">Login</a>

                    </nav>
                </div>
            </header>
            <!--  end header section  -->

         

        <h1>What are you looking for?</h1>


        <div class="container">
            
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblPropertyType" runat="server" CssClass="label">PropertyType</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddPropertyType" CssClass="ddl" runat="server">
                            <asp:ListItem Value="-1" Text="Select Property Type"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Commercial"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Residential"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSize" runat="server" CssClass="label">Prefered Area Size</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSize" runat="server" placeholder="Enter area size" CssClass="text-box"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBudget" runat="server" CssClass="label">Maximum Budget</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBudget" placeholder="Enter maximum budget" runat="server" CssClass="text-box"> </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLocation" runat="server"  CssClass="label">Prefered Location</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLocation" CssClass="text-box" placeholder="Enter preferred location" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBed" runat="server" CssClass="label">No. Of. Bedroom</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBed" CssClass="text-box" placeholder="Enter no. of bedroom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBath" runat="server" CssClass="label">No. Of. Bathroom</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBath" CssClass="text-box" placeholder="Enter no. of bathroom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblContactInfo" CssClass="label" runat="server">Your Contact Address</asp:Label>
                    </td>
                    <td>
                        <textarea id="taContactInfo" runat="server" placeholder="Enter your contact address" class="text-area"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" CssClass="label" runat="server">Email</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" CssClass="text-box" placeholder="Enter email" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSendRequest" CssClass="button" runat="server" Text="Send Request" OnClick="btnSendRequest_Click" />
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
