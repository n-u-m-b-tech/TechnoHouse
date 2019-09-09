<%@ Page Title="" Language="C#" MasterPageFile="~/TECHNO.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TechWeb.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<ul>
    <li><a href="HomePage.aspx">Home</a></li>
            <li id="produ" runat="server"><a>Products</a>
                <ul>
                    <li><a href="Catalogue.aspx?ID=Kitchen">Kitchen</a></li>
                    <li><a href="Catalogue.aspx?ID=Bath Room":>Bathroom</a></li>
                    <li><a href="Catalogue.aspx?ID=Bed Room">Bedroom</a></li>
                    <li><a href="Catalogue.aspx?ID=Living Room">Living Room</a></li>
                </ul>
            </li>
            <li><a id="productmanangement" runat="server">Product Management</a>
                <ul>
                    <li id="proedit" runat="server"><a href="SearchProduct.aspx">Edit Product</a></li>
                    <li id="proreg" runat="server"><a href="SearchUser.aspx">Add Product</a></li>
                    <!--<li><a>Remove Product</a></li>-->
                    <li id ="stats" runat="server"><a>View Stats</a></li>
                    <li id="rat" runat="server"><a>View Ratings</a></li>
                </ul>
            </li>
            <li><a id="usermanagement" runat="server"> User Management</a>
                <ul>
                   <li id="uedit" runat="server"><a href="SearchUser.aspx">Edit User</a></li>
                    </ul>
              </li>
              <li id="login" runat="server"><a href="LoginPage.aspx">Login</a></li>
                <li id="uregister" runat="server"><a href="UserRegistration.aspx">Register</a></li>
            <li><a href="ContactPage.aspx">Contact</a></li>
            <li><a href="#">About Us</a></li>      
            <li id="logout" runat="server"><a href="logoutPage.aspx">LogOut</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="catalog" runat="server">

     </section>
</asp:Content>
