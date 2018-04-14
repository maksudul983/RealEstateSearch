<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Property.aspx.cs" Inherits="RealStateSolution.UI.Property" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Property</title>
    <link rel="stylesheet" href="../css/buyerchoice.css" />
    <link rel="stylesheet" href="../css/property.css" />


    <link href="../css/reset.css" rel="stylesheet" />
    <link href="../css/responsive.css" rel="stylesheet" />
    <style>
        body {
            background: #f1f2f3 !important;
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

        <div class="container">
            <h1>Fill up Property Information for Sell</h1>
            <table>
                <tr>
                    <td style="width: 230px">
                        <asp:Label ID="lblPropertyType" runat="server" CssClass="label">Property Type</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlpropertytype" CssClass="ddl" runat="server">
                            <asp:ListItem Text="Select property type" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Commercial" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Residential" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPropertyName" runat="server" CssClass="label">Property Name</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPropertyName" CssClass="text-box" placeholder="Enter property name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPropertyAddress" runat="server" CssClass="label">Property Address</asp:Label>
                    </td>
                    <td>
                        <textarea id="ta" class="text-area" placeholder="Enter property address" runat="server"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="width: 100px; float: left; margin-top: 100px;">
                            <asp:Label ID="lblRealLocation" runat="server" CssClass="label">Real Location</asp:Label>
                        </div>
                        <div style="margin-right: 37px; margin-top: 20px;">
                            <div id="dvMap" style="width: 209px; height: 150px; border: 3px solid #aaa; float: right; margin-bottom: 20px;">
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblImage" runat="server" CssClass="label">Property Image</asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="fuImage" CssClass="file" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDescription" runat="server" CssClass="label">Property Description</asp:Label>
                    </td>
                    <td>
                        <textarea id="ta1" runat="server" placeholder="Enter property description" class="text-area"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBed" runat="server" CssClass="label">No. Of Bedroom</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBed" CssClass="text-box" TextMode="Number" placeholder="No of bedroom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBath" runat="server" CssClass="label">No. Of Bathroom</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBath" CssClass="text-box" TextMode="Number" placeholder="No of Bathroom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPrice" runat="server" CssClass="label">Property Price</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrice" TextMode="Number" CssClass="text-box" placeholder="Enter property price" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button" OnClick="btnSave_Click" />
            <br />
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </div>
        <asp:HiddenField ID="hf1" runat="server" Value=""/>
        <asp:HiddenField ID="hf2" runat="server" Value="" />

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsQ9QTEi7OMfqzLa4injg2pZ-VZRLWoiY&callback=myMap"></script>

    <script>
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(23.753350, 90.380211),
                zoom: 10,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var latlngbounds = new google.maps.LatLngBounds();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            google.maps.event.addListener(map, 'click', function (e) {
                var latitude = e.latLng.lat();
                var longitude = e.latLng.lng();
                document.getElementById("<%=hf1.ClientID%>").value = latitude;
                document.getElementById("<%=hf2.ClientID%>").value = longitude;

                alert("Latitude: " + e.latLng.lat() + "\r\nLongitude: " + e.latLng.lng());
            });
        }
    </script>
</body>
</html>
