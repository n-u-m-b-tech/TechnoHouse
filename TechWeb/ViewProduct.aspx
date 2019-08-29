<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="TechWeb.ViewProduct" %>

<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title> Process Payment:</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scale=no" />

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
            <!--Main Contents-->
            <div id="main">
                <div class="inner">
                    <section>
                        <form id="form1" runat="server">
                              <div class="left-top">
                                <div class="product-pic-left">
                                    <img src="<%=url%>" width="300" height="300" alt="" />
                                </div>
                                <div class="product-details-right">
                                <div class="fields">
                                    <div class="field">
                                     <h2><%=name%></h2>
                                    </div>
                                    <asp:HyperLink id="brandlink" runat="server"><%=brand%></asp:HyperLink>
                                    <div>
                                        <div class="label">
                                            <h3>I am you eligibility</h3>
                                            <h3>I am your delivery option</h3>
                                            <h3>I am your all</h3> 
                                        </div>
                                    </div>
                                </div>    
                                </div>
                              </div>
                            <div class="right-top">
                                <div id="order">
                                    <h3><%=price%></h3>
                                    <h4>delivery type</h4>
                                     <div class="actions">
                                      <asp:Button ID="BtnCheckout" runat="server" type="checkout" Text="Add to Cart" class="primary" OnClick="BtnRegister_Click" />
                                </div>
                                </div>
                                <div id="other offers"></div>
                            </div>
                            <div class="center-bottom">
                              <h3></h3>
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
                            <li><a href="https://www.facebook.com"><img src="images/icons/facebook.svg" alt="Facebook" width="30" height="30" /></a></li>
                            <li><a href="https://www.instagram.com"><img src="images/icons/instagram.svg" alt="Instagram" width="30" height="30" /></a></li>
                            <li><a href="https://www.twitter.com"><img src="images/icons/twitter.svg" alt="Twitter" width="30" height="30" /></a></li>
                            <li><a href="https://www.youtube.com"><img src="images/icons/youtube.svg" alt="YouTube" width="30" height="30" /></a></li>
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