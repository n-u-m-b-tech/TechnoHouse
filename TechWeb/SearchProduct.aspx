<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="TechWeb.SearchProduct" %>

<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title> Register or Edit Product</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scale=no" />

        <style type="text/css">
            .auto-style1 {
                width: 784px;
                height: 25px;
                margin-bottom: 29px;
            }
        </style>

        </head>
    <body class="is-preload">
        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header-->
            <header id="header">  
            <!---Menu -->
            <nav id="menu">
                <h2>Techno House</h2>
                <ul>
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="Login.aspx">Log In</a></li>
                    <li><a href="Catalogue.aspx">Products</a></li>
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                    <li><a href="About.aspx">About</a></li>
                </ul>
                </nav>
                </header>
            <div id="main">
                <div class="inner">
                    <header>
                        <h1 >Edit Product</h1>
                    </header>
                    <section>
                        <form id="form1" runat="server">
                              <div class="fields">
                                  <div class="field">
                                      <input type="text" name="txtname" id="txt" placeholder="Product Name" runat="server" class="auto-style1" /><br />
&nbsp;<asp:Button ID="btnEditProduct" runat="server" OnClick="btnEditProduct_Click" Text="Edit Product" />
                                  </div>
                               </div>
                             </form>
                    </section>
                </div>
            </div> 
            
            <!--Footer-->
            <footer id="footer">
                <div class="inner">
                    <section>
                      <h2> Follow Us</h2>
                        <ul class="icons">
                            <li><a href="https://www.facebook.com"><img src="images/icons/facebook.png" alt="Facebook" width="30" height="30" /></a></li>
                            <li><a href="https://www.instagram.com"><img src="images/icons/instagram.png" alt="Instagram" width="30" height="30" /></a></li>
                            <li><a href="https://www.twitter.com"><img src="images/icons/twitter.png" alt="Twitter" width="30" height="30" /></a></li>
                            <li><a href="https://www.youtube.com"><img src="images/icons/youtube.png" alt="YouTube" width="30" height="30" /></a></li>
                            </ul>
                    </section>
                </div>
            </footer>
        </div>

     <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
   </body>
</html>
