<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Techno_Web.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
     <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1, user-scale=no" />
     <link href="css/Techno.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 485px;
        }
        #container {
            height: 600px;
        }
        #catalogue {
            background-color:darkgoldenrod;
            height: 600px;
            width: 200px;
            float: left;
        }
        #contents {
            width: 778px;
            background-color:aqua;
            height: 595px;
            margin-top: 4px;
            float:right
        }
    </style>
</head>
<body class="is-preload">
    <form id="form1" runat="server">
    <!--Wrapper-->
    <div id="wrapper">
            <!-- Header-->
            <header id="header">  
            <!---Menu -->
                 <!-- Logo -->
                <a href="index.html" class="logo">
                    <span class="symbol">
                        <img src="images/logo.png"  width="70" height="70" alt="" /></span>
                </a>
                <input id="txtSearch" type="search" placeholder="Search" runat="server" class="auto-style1"/><asp:Button ID="BtnSearch" runat="server" Text="Search" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </header>
           <br />   
        <nav id="navigator">
                <ul>
                    <li><a href="SignUp.aspx">Register</a></li>
                    <li><a href="Login.aspx">Log In</a></li>
                    <li><a href="Catalogue.aspx">Products</a></li>
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                    <li><a href="About.aspx">About</a></li>
                </ul>
        </nav>

        <section id="container">
            <div id="catalogue">

                <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="198px">
                    <asp:ListItem>CATEGORY</asp:ListItem>
                    <asp:ListItem>BATH</asp:ListItem>
                    <asp:ListItem>KITCHEN</asp:ListItem>
                    <asp:ListItem>LOUNGE</asp:ListItem>
                    <asp:ListItem>BEDROOM</asp:ListItem>
                </asp:DropDownList>

            </div>
            <div id="contents">

            </div>
        </section>


        <footer id="footer"> <div class="inner">
                    <section>
                      <h2> Follow Us</h2>
                        <ul class="icons">
                            <li><a href="#" class="icon brands style2 fa-twitter"> <span class="label">Twitter</span></a></li>
                            <li><a href="#" class="icon brands style2 fa-facebook"> <span class="label">Facebook</span></a></li>
                            <li><a href="#" class="icon brands style2 fa-instagram"> <span class="label">Instagram</span></a></li>
                            <li><a href="#" class="icon solid style2 fa-envelope"><span class="label">Email</span></a></li>
                        </ul>
                    </section>
                </div>
        </footer>
    </div>
    </form>
</body>
</html>