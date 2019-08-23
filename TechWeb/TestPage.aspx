<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="TechWeb.TestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1, user-scale=no" />
</head>
<body>
    <div id="header" class="header">
        <div class="trim">
            <a href="https://image.freepik.com/free-vector/blue-smart-home-logo-design_1051-1738.jpg" class="left logo" title="Home">TECHNOHOUSE</a>
            <ul class="left links">
                <li class="separate">
                    <a href="Help.aspx" title="help">Help</a>
                </li>
                <li class="separate">
                    <a href="About.aspx" title="about">About Us</a>
                </li>
                
                <li class="separate">
                    <a href="Contact Us.aspx" title="contact">Contact Us</a>
                </li>    
            </ul>

            <ul class="right links">
                <li id="login-logout" class="separate">
                    <a rel="nofollow" href="Login.aspx" id="login" style="cursor:pointer;">Login</a> 
                </li>

                 <li id="register-link" class="separate">
                    <a rel="nofollow" href="SignUp.aspx" id="register" style="cursor:pointer;">Register</a> 
                </li>

                <li id="user-account" class="separate">
                <a rel="nofollow" href="UserAccount.aspx" id="account" style="cursor:pointer;">My Account</a> 
                    <ul id="dropdown" class="accountdrop" style="display:none">
                    <li>
                        <a rel="nofollow" href="UserProfile.aspx">My Account</a>
                    </li>    
                    </ul>
                   
                   
                </li>
            </ul>
        </div>
    </div>

    <div id="search-bar" class="search bar">
        <h1>I hold brief category and search bar bafwethu</h1>
    </div>

    <div id="delivery" class="delivery"><h3>Ask me about delivery and am your guy</h3></div>

    <div id="section" class="section">
        <h2>i hold all the left top categories, centre and right contents</h2>
    </div>



    <div id="newsletter" class="newsletter">
        <h2>signup and recieve 200 off</h2>
    </div>

    <div id="footer">
        <h2>i hold the footer</h2>
    </div>

</body>
</html>
