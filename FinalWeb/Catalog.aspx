<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="FinalWeb.Catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(images/heading-pages-02.jpg);">
		<h2 class="l-text2 t-center">
			Your Smart Home
		</h2>
		<p class="m-text13 t-center">
			New Arrrival Of Home Smart 	Devices</p>
	</section>


	<!-- Content page -->
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">
							Categories
						</h4>

						<ul class="p-b-54">
							<li class="p-t-4">
								<a href="Catalog.aspx?ID=ALL" class="s-text13 active1">
									All
								</a>
							</li>

							<li class="p-t-4">
								<a href="Catalog.aspx?ID=Kitchen" class="s-text13">
									Kitchen
								</a>
							</li>

							<li class="p-t-4">
								<a href="Catalog.aspx?ID=LivingRoom" class="s-text13">
									Living Room
								</a>
							</li>

							<li class="p-t-4">
								<a href="Catalog.aspx?ID=BathRoom" class="s-text13">
									Bath Room
								</a>
							</li>

							<li class="p-t-4">
								<a href="Catalog.aspx?ID=BedRoom" class="s-text13">
									Bed Room
								</a>
							</li>
						</ul>

						<!--  -->
						<h4 class="m-text14 p-b-32">
							Filters
						</h4>

						<div class="filter-price p-t-22 p-b-50 bo3">
							<div class="m-text15 p-b-17">
								Price
							</div>

							<div class="wra-filter-bar">
								<div id="filter-bar"</div>
							</div>

							<div class="flex-sb-m flex-w p-t-16">
								<div class="w-size11">
									<!-- Button -->
									<asp:Button class="flex-c-m size4 bg7 bo-rad-15 hov1 s-text14 trans-0-4" runat="server" id="Filter" Text="Filter" onclick="btnFilter_Click" />
									
								
								</div>

								<div class="s-text3 p-t-10 p-b-10">
									Range: R<span id="value-lower" >0</span> - R<span id="value-upper" >10 000</span>
								</div>
							</div>
						</div>

						<div class="search-product pos-relative bo4 of-hidden">
							<input class="s-text7 size6 p-l-23 p-r-50" type="text" name="search-product" placeholder="Search Products...">

							<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
								<i class="fs-12 fa fa-search" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
				
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-2" name="sorting">
									<option id="pricelist" runat="server" OnClick="selected" AutoPostBack="True" >Default Sorting</option>
									<option id="ascend" runat="server" OnClick="selected">Price: low to high </option>
									<option id="descend" runat="server" OnClick="selected">Price: high to low</option>
								</select>
							</div>

							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-2" name="sorting">
									<option>Price</option>
									<option id="first"  runat="server">R 0.00 - R50.00</option>
									<option id="second"  runat="server">R 50.00 - R100.00</option>
									<option id="third"  runat="server">R 100.00 - R150.00</option>
									<option id="fourth" runat="server">R 150.00 - R200.00</option>
									<option id="fifth" runat="server">R 200.00+</option>

								</select>
							</div>
						</div>

						<span class="s-text8 p-t-5 p-b-5">
							Showing 1–12 of 16 results
						</span>
					</div>

					<!-- Product -->
					<div class="row" id="view" runat="server">
                       
					</div>

					<!-- Pagination -->
					<div class="pagination flex-m flex-w p-t-26">
						<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
						<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
