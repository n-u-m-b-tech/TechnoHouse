﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TechWeb.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
    <li id="uregister" runat="server"><a href="UserRegistration.aspx">Register</a></li>
    <li id="login" runat="server"><a href="LoginPage.aspx">Log In</a></li>
    <li><a href="Catalogue.aspx">Products</a>
        <li id="register" runat="server"><a href="ProductRegistration.aspx">Register Product</a></li>
        <li id="edit" runat="server"><a href="SearchProduct.aspx">Edit Product</a></li>
    <li><a href="ContactUs.aspx">Contact Us</a></li>
    <li><a href="About.aspx">About</a></li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
     <section id="catalog" runat="server">

     </section>

</asp:Content>
 