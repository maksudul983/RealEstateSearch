<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RES.UI.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Contact Us</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet"/>
        <link rel="stylesheet" href="../css/form.css" />


        <link href="../css/reset.css" rel="stylesheet" />
    <link href="../css/responsive.css" rel="stylesheet" />

    
          <script src="../scripts/form.js"> </script>

</head>
<body>

  
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


    <div class="container">
            <div id="form-main">
                <div id="form-div">
                    <form class="montform" id="reused_form" >
                        <p class="name">
                            <input name="name" type="text" class="feedback-input" runat="server" placeholder="Name" id="name" />
                         
                        </p>
                        <p class="email">
                            <input name="email" type="email"  class="feedback-input" id="email" runat="server" placeholder="Email" />
                        </p>
                        <p class="text">
                            <textarea name="message" class="feedback-input" id="comment" runat="server" placeholder="Message"></textarea>
                        </p>
                        <div class="submit">
                            <button type="submit" runat="server" class="button-blue">SUBMIT</button>
                            <div class="ease"></div>
                        </div>
                    </form>
                    <div id="error_message" style="width:100%; height:100%; display:none; ">
                        <h4>
                            Error
                        </h4>
                        Sorry there was an error sending your form. 
                    </div>
                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h2>Success! Your Message was Sent Successfully.</h2> </div>
                </div>
            </div>
        </div>

    


</body>
</html>
