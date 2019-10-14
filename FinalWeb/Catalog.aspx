<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="FinalWeb.Catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
            //Function which will fire when user click on anchor tag
        function ExecuteCodeBehindClickEvent() {
            //Get the Button reference and trigger the click event
            document.getElementById("btnSubmit").click();
          
        }
    </script>
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(images/slider/smarthomerethink.png);">
		<h2 class="l-text2 t-center">
			Your Smart Home
		</h2>
		<p  class="m-text13 t-center">
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
								<a  href="Catalog.aspx?ID=ALL" class="s-text13 active1">
									All
								</a>
							</li>

							<li class="p-t-4">
								<a href="Catalog.aspx?ID=Kitchen" class="s-text13">
									Kitchen
								</a>
							</li>

							<li class="p-t-4">
								<a href="Catalog.aspx?ID=Living Room" class="s-text13">
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
							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">							
                              <asp:DropDownList ID="drpfiltprice" runat="server" OnSelectedIndexChanged="drpfiltprice_SelectedIndexChanged">
                                  <asp:ListItem>Select Price Range</asp:ListItem>
                                  <asp:ListItem>R0 - R2000</asp:ListItem>
                                  <asp:ListItem>R2000 - R4000</asp:ListItem>
                                  <asp:ListItem>R4000 - R6000</asp:ListItem>
                                  <asp:ListItem>R6000 - R8000</asp:ListItem>
                                  <asp:ListItem>R8000+</asp:ListItem>
                                </asp:DropDownList>
							</div>

							<div class="flex-sb-m flex-w p-t-16">
								<div class="w-size11">
									<!-- Button -->
									<asp:Button class="flex-c-m size4 bg7 bo-rad-15 hov1 s-text14 trans-0-4" runat="server" id="Filter" Text="Filter" onclick="BtnFilter_Click" />                              
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
                <div>
                    <a  id="btnSubmit" runat="server"></a>
                </div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
				
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
                                <asp:DropDownList ID="drpPrice" CssClass="selection-2" runat="server" OnSelectedIndexChanged="drpPrice_SelectedIndexChanged">
                                    <asp:ListItem >Select Price Sorting</asp:ListItem>
                                    <asp:ListItem>Ascending (Low to High)</asp:ListItem>
                                    <asp:ListItem>Descending (High to Low)</asp:ListItem>
                                </asp:DropDownList>
							</div>

						</div>

						<span class="s-text8 p-t-5 p-b-5">
							Showing 1–12 of 16 results
						</span>
					</div>

					<!-- Product -->
					<div class="row" id="view" runat="server">
                       
					</div>

				</div>
			</div>
		</div>
      
	</section>
</asp:Content>
