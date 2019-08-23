<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="Techno_Web.Register" %>

<!DOCTYPE html>

<html>
    <head xmlns="http://www.w3.org/1999/xhtml">
        <title> User Registration</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scale=no" />
        <style type="text/css">
            .auto-style2 {
                width: 671px;
            }
            .auto-style3 {
                width: 265px;
            }
            .auto-style4 {
                width: 262px;
                margin-left: 6px;
            }
            .auto-style5 {
                margin-left: 360px;
            }
            .auto-style6 {
                margin-left: 320px;
            }
            .auto-style7 {
                margin-left: 240px;
            }
            .auto-style8 {
                width: 128px;
                margin-left: 8px;
            }
            .auto-style9 {
                width: 308px;
            }
            .auto-style10 {
                width: 272px;
            }
            .auto-style11 {
                width: 274px;
            }
            .auto-style12 {
                width: 699px;
            }
            .auto-style13 {
                width: 696px;
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
            <!--Main Contents-->
            <div id="main">
                <div class="inner">
                    <header>
                        <h1 class="auto-style6">Create An Account</h1>
                     
                        <a class="auto-style7"><i>Please fill out your information to creat an account</i></a>
                    </header>
                    <section>
                        <form id="form1" runat="server">
                              <div class="fields">
                                  <div class="field half"> 
                                      <h3><i>Full Name</i></h3>
                                      <input type="text" name="txttitle" id="title" placeholder="Title" runat="server" /><asp:RequiredFieldValidator ID="idrequire" runat="server" ErrorMessage="*" ControlToValidate="title"></asp:RequiredFieldValidator>
                                      <input type="text" name="txtname" id="name" placeholder="Full Name" runat="server" /><asp:RequiredFieldValidator ID="namerequire" runat="server" ErrorMessage="*" ControlToValidate="name"></asp:RequiredFieldValidator>
                                      <input type="text" name="txtsurname" id="surname" placeholder="Last Name" runat="server" /><asp:RequiredFieldValidator ID="surnamerequire" runat="server" ErrorMessage="*" ControlToValidate="surname"></asp:RequiredFieldValidator>
                                      <br />
                                      <h3>Physical Address</h3>
                                      <input type="text" name="txtadd1" id="add1" placeholder="Address Line1" runat="server" class="auto-style13" /><asp:RequiredFieldValidator ID="add1require" runat="server" ErrorMessage="*" ControlToValidate="add1"></asp:RequiredFieldValidator>
                                     
                                      <br />
                                     
                                      <br />
                                      <input type="text" name="txtadd2" id="add2" placeholder="Address Line2" runat="server" class="auto-style12" /><asp:RequiredFieldValidator ID="add2require" runat="server" ErrorMessage="*" ControlToValidate="add2"></asp:RequiredFieldValidator>
                                      <br />
                                      <br />
                                      <input type="text" name="txtcity" id="city" placeholder="City" runat="server" class="auto-style3" /><asp:RequiredFieldValidator ID="cityrequire" runat="server" ErrorMessage="*" ControlToValidate="city"></asp:RequiredFieldValidator>
                                      <input type="text" name="txtprov" id="prov" placeholder="Province" runat="server" class="auto-style4" /><asp:RequiredFieldValidator ID="provrequire" runat="server" ErrorMessage="*" ControlToValidate="prov"></asp:RequiredFieldValidator>
                                      <input type="text" name="txtzip" id="zip" placeholder="Zip Code" runat="server" class="auto-style8" /><asp:RequiredFieldValidator ID="ziprequire" runat="server" ErrorMessage="*" ControlToValidate="zip"></asp:RequiredFieldValidator>
                                      <br />
                                      <h3>Email Address</h3>
                                      <input type="text" name="txtemail" id="email" placeholder="Email" runat="server" class="auto-style2" /><asp:RequiredFieldValidator ID="emailrequitre" runat="server" ErrorMessage="*" ControlToValidate="email"></asp:RequiredFieldValidator>
                                      <asp:RegularExpressionValidator ID="regexprss" runat="server" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                                      <br />
                                      <br />
                                      <input type="text" name="txtconfirmmail" id="mailcom" placeholder="Confirm Email" runat="server" class="auto-style2" /><asp:RequiredFieldValidator ID="confirmrequire" runat="server" ErrorMessage="*" ControlToValidate="mailcom"></asp:RequiredFieldValidator>
                                      <asp:CompareValidator ID="mailcompr" runat="server" ErrorMessage="Emails Don't Match" ControlToCompare="email" ControlToValidate="mailcom"></asp:CompareValidator>
                                      <br />
                                      <br />
                                      <input type="text" name="txtusername" id="username" placeholder="UserName" runat="server" class="auto-style9" /><asp:RequiredFieldValidator ID="userrequire" runat="server" ErrorMessage="*" ControlToValidate="username"></asp:RequiredFieldValidator>
                                      <br />
                                      <br />
                                      <input type="password" name="txtpass" id="pass" placeholder="Password" runat="server" class="auto-style10" /><asp:RequiredFieldValidator ID="passrequire" runat="server" ErrorMessage="*" ControlToValidate="pass"></asp:RequiredFieldValidator>
                                      <br />
                                      <br />
                                      <input type="password" name="txtconfirm" id="confirm" placeholder="Confirm Password" runat="server" class="auto-style11" /><asp:RequiredFieldValidator ID="passconfirmrequire" runat="server" ErrorMessage="*" ControlToValidate="confirm"></asp:RequiredFieldValidator>
                                      <asp:CompareValidator ID="passcomprr" runat="server" ErrorMessage="Passwords Don't Match" ControlToCompare="pass" ControlToValidate="confirm"></asp:CompareValidator>
                                      <br />
                                  </div>

                              </div>
                            <ul class="actions">
                                <li class="auto-style5">
                                    <asp:Button ID="BtnRegister" runat="server" type="register" Text="Register" class="primary" OnClick="BtnRegister_Click" />
                                </li>
                            </ul>
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
                            <li><a href="#" class="icon brands style2 fa-twitter"> <span class="label">Twitter</span></a></li>
                            <li><a href="#" class="icon brands style2 fa-facebook"> <span class="label">Facebook</span></a></li>
                            <li><a href="#" class="icon brands style2 fa-instagram"> <span class="label">Instagram</span></a></li>
                            <li><a href="#" class="icon solid style2 fa-phone"><span class="label">PSSDDhone</span></a></li>
                            <li><a href="#" class="icon solid style2 fa-envelope"><span class="label">Email</span></a></li>
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