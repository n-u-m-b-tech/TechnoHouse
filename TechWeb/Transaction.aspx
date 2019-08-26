<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="TechWeb.Transaction" %>

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
                              <div class="container-left">
                                  <h2>Process payment</h2>
                                
                                  <h4>Credit/Cheque Card</h4>
                   
                                  <div class="field">
                                       <asp:Label ID="lblnumber" runat="server" class="label" Text="Card Number"></asp:Label>
                                      <br />
                                      <input type="text" name="txtcard" id="cardnum"  runat="server" />
                                       <asp:RequiredFieldValidator ID="rqdcardnum" runat="server" ErrorMessage="*" ControlToValidate="cardnum"></asp:RequiredFieldValidator>
                                  </div>
                                  <div class="field">
                                      <asp:Label ID="lblname" runat="server" class="label" Text="Card Holder Name"></asp:Label>
                                      <br />
                                      <input type="text" name="txtname" id="name" runat="server" />
                                      <asp:RequiredFieldValidator ID="rqdholder" runat="server" ErrorMessage="*" ControlToValidate="name"></asp:RequiredFieldValidator>
                                  </div>
                                  <div class="dropdown">
                                      <asp:Label ID="lblmonth" runat="server" class="label" Text="Expiry Month"></asp:Label>
                                      <br />
                                      <asp:DropDownList ID="drpdate" runat="server">
                                          <asp:ListItem>01 - January</asp:ListItem>
                                          <asp:ListItem>02 - February</asp:ListItem>
                                          <asp:ListItem>03 - March</asp:ListItem>
                                          <asp:ListItem>04 - April</asp:ListItem>
                                          <asp:ListItem>05 - May</asp:ListItem>
                                          <asp:ListItem>06 - June</asp:ListItem>
                                          <asp:ListItem>07 - July</asp:ListItem>
                                          <asp:ListItem>08 - August</asp:ListItem>
                                          <asp:ListItem>09 - September</asp:ListItem>
                                          <asp:ListItem>10 - October</asp:ListItem>
                                          <asp:ListItem>11 - November</asp:ListItem>
                                          <asp:ListItem>12 - December</asp:ListItem>
                                      </asp:DropDownList>
                                     
                                      <asp:RequiredFieldValidator ID="rqdmonth" runat="server" ErrorMessage="*" ControlToValidate="drpdate"></asp:RequiredFieldValidator>
                                     
                                  </div>
                                  <br />
                                  <div class="field">
                                      <asp:Label ID="lblyear" runat="server" class="label" Text="Expire Year"></asp:Label>
                                      <br />
                                      <input type="text" name="txtyear" id="year" runat="server" />
                                      <asp:RequiredFieldValidator ID="rqdyear" runat="server" ErrorMessage="*" ControlToValidate="year"></asp:RequiredFieldValidator>
                                  </div>
                                  <div class="field">
                                      <asp:CheckBox ID="checksave" Text ="Save my card information" runat="server" />
                                  </div>
                              </div>
                            <div class="container-right">
                                <p>Confirm your order</p>
                                 <div class="cart-up">
                                     <div >

                                     </div>
                                 </div>
                                <div class="deliv-down">
                                    <p>Delivery </p>
                                    <div class="field">
                                       <asp:Label ID="lblship" runat="server" class="label" Text="Choose a shipping method"></asp:Label>
                                      <br />
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>Standard Shipping - R20</asp:ListItem>
                                            <asp:ListItem>Express Shipping - R40</asp:ListItem>
                                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="cardnum"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />

                                        <div class="field">
                                       <asp:Label ID="lblTutor" runat="server" class="label" Text="Select Tutorial Package"></asp:Label>
                                      <br />
                                        <asp:DropDownList ID="drpttu" runat="server">
                                            <asp:ListItem>Standard Tutorial - R20</asp:ListItem>
                                            <asp:ListItem>Express Turial - R40</asp:ListItem>
                                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="cardnum"></asp:RequiredFieldValidator>
                                  </div>
                                    <br />
                                    <div class="field">
                                       <asp:Label ID="lbldiscount" runat="server" class="label" Text="Add Discount Code"></asp:Label>
                                      <br />
                                      <input type="text" name="txtcard" id="Text2"  runat="server" />
                                        <asp:Button ID="BtnDiscount" runat="server" Text="Use" OnClick="BtnDiscount_Click" />
                                        </div>

                                </div>
                                </div>
                             <ul class="actions">
                                <li>
                                    <asp:Button ID="BtnOrder" runat="server" type="register" Text="Order" class="primary" OnClick="BtnRegister_Click" />
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
