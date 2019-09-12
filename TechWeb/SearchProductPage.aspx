<%@ Page Title="" Language="C#" MasterPageFile="~/TECHNO.Master" AutoEventWireup="true" CodeBehind="SearchProductPage.aspx.cs" Inherits="TechWeb.SearchProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 784px;
            height: 25px;
            margin-bottom: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Wrapper -->
<%--        <div class="is-preload" id="wrapper">

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
                </header>--%>
            <div id="main">
                <div class="inner">
                    <header>
                        <h1 >Search Product</h1>
                    </header>
                    <section>
                        <form id="form1" runat="server">
                              <div class="fields">
                                  <div class="field">
                                      <input type="text" name="txtname" id="proname" placeholder="Product Name" runat="server" class="auto-style1" /><br />
                                       &nbsp;<asp:Button ID="btnEditProduct" runat="server" OnClick="btnEditProduct_Click" Text="Edit Product" style="height: 26px" />
                                  </div>
                               </div>
                             </form>
                    </section>
                </div>
            </div> 

</asp:Content>
