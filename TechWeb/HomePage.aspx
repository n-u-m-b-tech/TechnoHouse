<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TechWeb.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
    <!--<li id="uregister1" runat="server"><a href="UserRegistration.aspx">Register</a></li>
    <li id="login1" runat="server"><a href="LoginPage.aspx">Log In</a></li>
    <li><a href="Catalogue.aspx">Products</a>
        <li id="register" runat="server"><a href="ProductRegistration.aspx">Register Product</a></li>
        <li id="edit" runat="server"><a href="SearchProduct.aspx">Edit Product</a></li>
    <li><a href="ContactUs.aspx">Contact Us</a></li>
    <li><a href="About.aspx">About</a></li> -->

    <!------->
    <li><a href="HomePage.aspx">Home</a></li>
            <li id="produ" runat="server"><a>Products</a>
                <ul>
                    <li><a href="Catalogue.aspx">Kitchen</a></li>
                    <li><a href="Catalogue.aspx":>Bathroom</a></li>
                    <li><a href="Catalogue.aspx">Bedroom</a></li>
                    <li><a href="Catalogue.aspx">Living Room</a></li>
                </ul>
            </li>
            <li><a>Product Management</a>
                <ul>
                    <li id="proedit" runat="server"><a href="SearchProduct.aspx">Edit Product</a></li>
                    <li id="proreg" runat="server"><a href="SearchUser.aspx">Add Product</a></li>
                    <!--<li><a>Remove Product</a></li>-->
                    <li><a>View Stats</a></li>
                    <li><a>View Ratings</a></li>
                </ul>
            </li>
            <li><a> User Management</a>
                <ul>
                     <li id="login" runat="server"><a href="LoginPage.aspx">Login</a></li>
                   <li id="uregister" runat="server"><a href="UserRegistration.aspx">Register</a></li>
                   <li id="uedit" runat="server"><a href="UserRegistration.aspx">Edit User</a></li>
                    </ul>
              </li> 
            <li><a href="ContactPage.aspx">Contact</a></li>
            <li><a href="#">About Us</a></li>      
            <li id="logout" runat="server"><a href="HomePage.aspx">LogOut</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
     <section id="catalog" runat="server">

     </section>

</asp:Content>
 