<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="TechWeb.Catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/Catalogue.css" rel="stylesheet" />
     <link href="css/Login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="sty.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <br><br><br><br><br><br><br><br><br>
    <div class="container">
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="images/logo.png" width="70" height="70" >
                        <img class="pic-2" src="#">
                    </a>
                    <span class="product-trend-label">Trend</span>
                    <ul class="social">
                        <li><a href="CartPage.aspx" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                        <li><a href="#" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>
                       <!--Remove this Mash-->
                        <li><a href="#" data-tip="Compare"><i class="fa fa-random"></i></a></li>
                        <li><a href="ProductDetailsPage.aspx" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="#">Men's Blazer</a></h3>
                    <div class="price">$21.00</div>
                </div>
            </div>
        </div>      
    </div>
</div>
                <script async type="text/javascript" src="//userlike-cdn-widgets.s3-eu-west-1.amazonaws.com/3285c77dec11e1ff8c176503aa33b76e639ab2bfb1b4177d64dce841edcbb340.js"></script>
  </asp:Content>
