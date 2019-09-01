﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="TechWeb.Catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/Catalogue.css" rel="stylesheet" />
   
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">



    <br />

    <br />


    <br />
            <div class="container-fluid">
                <div class="row">
		            <div class="col-lg-3">
			            <h1 class="my-4">Category</h1>

                        

			            <div class="list-group">
				            <a href="#" class="list-group-item">Kitchen</a>
				            <a href="#" class="list-group-item">Bedroom</a>
				            <a href="#" class="list-group-item">Living Room</a>
				            <a href="#" class="list-group-item">Bathroom</a>
			            </div>
                        <br />
                        <br />

		            </div>
	                <!-- /.col-lg-3 -->

	            <div class="col-lg-9">

		            <!--Carousel-->
		            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">

			            <ol class="carousel-indicators">
				            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			            </ol>

			            <div class="carousel-inner" role="listbox">

				            <div class="carousel-item active">
					            <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
				            </div>

				            <div class="carousel-item">
					            <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
				            </div>

				            <div class="carousel-item">
					            <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
				            </div>
			            </div>

			            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				            <span class="sr-only">Previous</span>
			            </a>

			            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				            <span class="sr-only">Next</span>
				            <span class="carousel-control-next-icon" aria-hidden="true"></span>
			            </a>
		            </div>


                    <script async type="text/javascript" src="//userlike-cdn-widgets.s3-eu-west-1.amazonaws.com/3285c77dec11e1ff8c176503aa33b76e639ab2bfb1b4177d64dce841edcbb340.js"></script>
	            </div>                                  
            </div>
        </div>


    

            
                <%--<div class="card h-100 d-inline">
                    
                    <asp:HiddenField ID="prodID" runat="server" Value='<%#Eval("ID")%>' />

                    <div class="card-img-top">
                        <img src='<%#Eval("IMG_URL")%>' alt='<%#Eval("ID")%>'  style="width:100%; height: 100%" runat="server" />
                    </div>
                    
                    <div class='card-body' runat='server'>
                        <a href='AboutProduct.aspx?ID=<%#Eval("ID")%>' ><h1 id="pName" class="name" runat="server"><%#Eval("NAME")%></h1></a>
                        <p id="pPrice" class="price" runat="server">R <%#Eval("PRICE")%> </p>
                        <p id="pDesc" runat="server"><%# Eval("DECRIPTION")%></p>
                    </div>--%>
                    <p>
                        <asp:button Text="Add To Cart" runat="server" id="BtnCart" CommandName="AddToCart"></asp:button>
                        <asp:button Text="Add To Wishlist" runat="server" id="bBtnWishliist" CssClass="wishlist"></asp:button>
                        <asp:button Text="Remove Product" runat="server" id="btnRemove" CommandName="AddToCart"></asp:button>
                        <asp:button Text="Edit Product" runat="server" id="btnEdit" CssClass="wishlist"></asp:button>
                    </p>
  </asp:Content>
