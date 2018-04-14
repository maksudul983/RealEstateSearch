<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="RealStateSolution.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Real Estate Solution - Real Estate </title>
    <meta charset="utf-8" />

    <link href="../css/reset.css" rel="stylesheet" />
    <link href="../css/responsive.css" rel="stylesheet" />

    <script src="../scripts/jquery.js"></script>
    <script src="../scripts/main.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 16px;
            text-align: center;
        }

        .auto-style3 {
            text-align: center;
        }
        img{
            margin:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
        <section class="hero">
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




                    </nav>
                </div>
            </header>
            <!--  end header section  -->

            <section class="caption">
                <h2 class="caption">Find You Dream Home</h2>
                <h3 class="properties">Appartements - Houses </h3>
            </section>
        </section>
        <!--  end hero section  -->


        <section class="search">
            <div class="wrapper">

                <input type="text" id="search" name="search" placeholder="What are you looking for?" autocomplete="off" />
                <input type="submit" id="submit_search" name="submit search" />

                <a href="#" class="advanced_search_icon" id="advanced_search_btn"></a>
            </div>

            <div class="advanced_search">
                <div class="wrapper">
                    <span class="arrow"></span>
                    <div class="search_fields">
                        <input type="text" class="float" id="check_in_date" name="check_in_date" placeholder="Check In Date" autocomplete="off" />

                        <hr class="field_sep float" />

                        <input type="text" class="float" id="check_out_date" name="check_out_date" placeholder="Check Out Date" autocomplete="off" />
                    </div>
                    <div class="search_fields">
                        <input type="text" class="float" id="min_price" name="min_price" placeholder="Min. Price" autocomplete="off" />

                        <hr class="field_sep float" />

                        <input type="text" class="float" id="max_price" name="max_price" placeholder="Max. price" autocomplete="off" />
                    </div>
                    <input type="text" id="keywords" name="keywords" placeholder="Keywords" autocomplete="off" />
                    <input type="submit" id="submit_search2" name="submit search" />
                </div>
            </div>
            <!--  end advanced search section  -->
        </section>
        <!--  end search section  -->


        <section class="listings">
            <div class="wrapper">
                <%--  <ul class="properties_list">
                    <li>
                        <a href="#">
                            <img src="../img/property_1.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh </span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>

                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_2.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_3.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_1.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_2.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_3.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_1.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_2.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>1 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="../img/property_3.jpg" alt="" title="" class="property_img" />
                        </a>
                        <span class="price">BDT. 80 Lakh</span>
                        <div class="property_details">
                            <h1>
                                <a href="#">Navana Venus</a>
                            </h1>
                            <h2>kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
                        </div>
                    </li>
                </ul>--%>
                <asp:DataList ID="DataList1" runat="server" CssClass="mar" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("image") %>' Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelPName" runat="server" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("PropertyName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("PropertyID") %>' Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Button ID="ButtonView" runat="server" CommandName="view" Text="View" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>


                <%-- <asp:Repeater ID="Repeater1" runat="server" DataSourceID="Prop">
                    <ItemTemplate>
                        <ul class="properties_list">
                            <li>
                                <a href="Confirmation.aspx">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' alt="" class="property_img" />
                                </a>
                            
                            
                                <span class="price">BDT. 8000000 </span>
                                <div class="property_details">
                                    <h1>
                                        <a href="Confirmation.aspx">Navana Venus</a>
                                    </h1>
                                    <h2>2 bed, 2 bath
                                   
                                   <span class="property_location">(Dhanmondi)</span></h2>

                                </div>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>--%><%--<asp:SqlDataSource ID="Prop" runat="server" ConnectionString="<%$ ConnectionStrings:REDBConnectionString2 %>" SelectCommand="SELECT * FROM [Property]"></asp:SqlDataSource>--%>


                <h1>Property Locations</h1>
                <div style="padding: 10px; background: #40aadd; border-radius: 10px">
                    <div runat="server" id="map" style="width: 100%; height: 450px; background: yellow"></div>
                </div>
                <br />
                <span onclick="getMyLoc();" style="color: #1166bb; cursor: pointer;">Get Current Location</span>
                <br />
                <br />
                <div id="result">
                </div>
                <div class="more_listing">
                    <a href="#" class="more_listing_btn">View More Listings</a>
                </div>
            </div>
        </section>
        <!--  end listing section  -->

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



    <script>
        function onPosRec(position) {
            var lat = (position.coords.latitude);
            var lng = (position.coords.longitude);
            var div = document.getElementById("result");
            div.innerHTML = "Latitude : " + lat + " Longitude: " + lng;

        }

        function getMyLoc() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(onPosRec);
            }
        }


        //function myMap(lati, long) {
        //    var mapCanvas = document.getElementById("map");
        //    var mapOptions = {
        //        center: new google.maps.LatLng(lati, long), zoom: 10
        //    };
        //    var map = new google.maps.Map(mapCanvas, mapOptions);

        //    addMarker({ lat: lati, lng: long });
        //    function addMarker(coords) {
        //        var marker = new google.maps.Marker({
        //            position: coords,
        //            map: map,
        //            icon: coords.iconImage
        //        });
        //    }

        //}

        function myMap() {
            //var mapCanvas = document.getElementById("map");
            //var mapOptions = {
            //    center: new google.maps.LatLng(23.753350, 90.380211), zoom: 10
            //};
            //var map = new google.maps.Map(mapCanvas, mapOptions);
            //addMarker({ lat: 23.753350, lng: 90.380211 });
            //addMarker({ lat: 23.795508, lng: 90.353619 });



            //function addMarker(coords) {
            //    var marker = new google.maps.Marker({
            //        position: coords,
            //        map: map,
            //        icon: coords.iconImage
            //    });

            //    var infoWindow = new google.maps.InfoWindow({
            //        content: '<h1>Toma </h1>'
            //    });

            //    marker.addListener('click', function () {
            //        infoWindow.open(map, marker);
            //    });
            //}

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 10,
                center: new google.maps.LatLng(23.753350, 90.380211),
                //mapTypeId: 'roadmap'
            });

            var features = [
              {
                  position: new google.maps.LatLng(23.753350, 90.380211)
              },{
                  position: new google.maps.LatLng(23.752457, 90.378323)
             },
             {
                 position: new google.maps.LatLng(23.750728, 90.370926)
             },
              {
                  position: new google.maps.LatLng(23.754163, 90.380111)
              }
              ,
              {
                  position: new google.maps.LatLng(23.752870, 90.379033)
              },
              {
                  position: new google.maps.LatLng(23.753215, 90.378420)
              },
              {
                  position: new google.maps.LatLng(23.752740, 90.379338)
              }
            ];

            var names = ["Toma Haque Villa", "Navana Venus", "Bhuiya House", "Dominant Palace", "DomInno", "Khan House", "Khodeja Mohol"];
            var i = 0;
            var images = ["toma.PNG", "navana.jpg", "bhuiya.jpg", "Dominant.jpg", "domino.jpg", "khan.jpg", "khodeja.jpg"];
            var price = [7500000, 7000000, 90000000, 95000000, 11500000, 6700000, 77000000];

            // Create markers.
            features.forEach(function (feature) {
                var marker = new google.maps.Marker({
                    position: feature.position,
                    //icon: iconImage,
                    map: map
                });

                var infoWindow = new google.maps.InfoWindow({
                    content: "<div>" + "<img src='" + images[i] + "'style='width:110px'>" + "<h5 style='margin:0; color:#262c3a'>" + names[i] + "</h5>" + "<h6 style='margin:0; text-align:left; color:#262c3a'>BDT. " + price[i++] + "</h6>" + "<h6 style='margin:0;'>Two Bed | Two Bath</h6></div>"
                });

                marker.addListener('click', function () {
                    infoWindow.open(map, marker);
                });
            });

        }


    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsQ9QTEi7OMfqzLa4injg2pZ-VZRLWoiY&callback=myMap"></script>
</body>
</html>
