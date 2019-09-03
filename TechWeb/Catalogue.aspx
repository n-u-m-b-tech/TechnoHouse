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
                        <img class="pic-1" src="img-1.jpg">
                        <img class="pic-2" src="img-2.jpg">
                    </a>
                    <span class="product-trend-label">Trend</span>
                    <ul class="social">
                        <li><a href="#" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                        <li><a href="#" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>
                        <li><a href="#" data-tip="Compare"><i class="fa fa-random"></i></a></li>
                        <li><a href="#" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="#">Men's Blazer</a></h3>
                    <div class="price">$21.00</div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="img-3.jpg">
                        <img class="pic-2" src="img-4.jpg">
                    </a>
                    <span class="product-trend-label">Trend</span>
                    <span class="product-discount-label">-20%</span>
                    <ul class="social">
                        <li><a href="#" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                        <li><a href="#" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>
                        <li><a href="#" data-tip="Compare"><i class="fa fa-random"></i></a></li>
                        <li><a href="#" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="#">Women's Button Top</a></h3>
                    <div class="price discount"><span>$17.00</span> $13.60</div>
                </div>
            </div>
        </div>
           
           
           
           <div class="col-md-3 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="img-5.jpg">
                        <img class="pic-2" src="img-6.jpg">
                    </a>
                    <span class="product-trend-label">Trend</span>
                    <span class="product-discount-label">-20%</span>
                    <ul class="social">
                        <li><a href="#" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                        <li><a href="#" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>
                        <li><a href="#" data-tip="Compare"><i class="fa fa-random"></i></a></li>
                        <li><a href="#" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="#">Women's Button Top</a></h3>
                    <div class="price discount"><span>$17.00</span> $13.60</div>
                </div>
            </div>
        </div> 
           
            
              <div class="col-md-3 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="img-7.jpg">
                        <img class="pic-2" src="img-8.jpg">
                    </a>
                    <span class="product-trend-label">Trend</span>
                    <span class="product-discount-label">-20%</span>
                    <ul class="social">
                        <li><a href="#" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                        <li><a href="#" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>
                        <li><a href="#" data-tip="Compare"><i class="fa fa-random"></i></a></li>
                        <li><a href="#" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="#">Women's Button Top</a></h3>
                    <div class="price discount"><span>$17.00</span> $13.60</div>
                </div>
            </div>
        </div>
    </div>
</div>
            <%--<div class="container">
                <div class="row">
		            <div class="col-md-3 col-sm-6">
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
		            </div>--%>


                    <script async type="text/javascript" src="//userlike-cdn-widgets.s3-eu-west-1.amazonaws.com/3285c77dec11e1ff8c176503aa33b76e639ab2bfb1b4177d64dce841edcbb340.js"></script>



    

            
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
                    <%--<p>
                        <asp:button Text="Add To Cart" runat="server" id="BtnCart" CommandName="AddToCart"></asp:button>
                        <asp:button Text="Add To Wishlist" runat="server" id="bBtnWishliist" CssClass="wishlist"></asp:button>
                        <asp:button Text="Remove Product" runat="server" id="btnRemove" CommandName="AddToCart"></asp:button>
                        <asp:button Text="Edit Product" runat="server" id="btnEdit" CssClass="wishlist"></asp:button>
                    </p>--%>
  </asp:Content>
