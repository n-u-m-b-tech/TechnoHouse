<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TechWeb.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
    <li><a href="SignUp.aspx">Register</a></li>
    <li><a href="Login.aspx">Log In</a></li>
    <li><a href="Catalogue.aspx">Products</a>
        <li><a href="RegditProduct.aspx">Register Product</a></li>
        <li><a href="EditProduct.aspx">Edit Product</a></li>
    <li><a href="ContactUs.aspx">Contact Us</a></li>
    <li><a href="About.aspx">About</a></li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <article class="style1">
        <span class="image">
            <img src="images/icons/spotify.png" width="100" height="100" alt="" />
        </span>
        <a href="ViewProductPage.aspx">
            <h2>Spotify</h2>
            <div class="content">
                <p>I am the details of the product, bitch</p>
            </div>
        </a>
    </article>

     <article class="style1">
        <span class="image">
            <img src="images/icons/facebook.png" width="100" height="100" alt="" />
        </span>
        <a href="ViewProductPage.aspx">
            <h2>Spotify</h2>
            <div class="content">
                <p>I am the details of the product, bitch</p>
            </div>
        </a>
    </article>

     <article class="style1">
        <span class="image">
            <img src="images/icons/twitter.png" width="100" height="100" alt="" />
        </span>
        <a href="ViewProductPage.aspx">
            <h2>Spotify</h2>
            <div class="content">
                <p>I am the details of the product, bitch</p>
            </div>
        </a>
    </article>

     <article class="style1">
        <span class="image">
            <img src="images/icons/instagram.png" width="100" height="100" alt="" />
        </span>
        <a href="ViewProductPage.aspx">
            <h2>Spotify</h2>
            <div class="content">
                <p>I am the details of the product, bitch</p>
            </div>
        </a>
    </article>

     <article class="style1">
        <span class="image">
            <img src="images/icons/facebook.png" width="100" height="100" alt="" />
        </span>
        <a href="ViewProductPage.aspx">
            <h2>Spotify</h2>
            <div class="content">
                <p>I am the details of the product, bitch</p>
            </div>
        </a>
    </article>
</asp:Content>
 