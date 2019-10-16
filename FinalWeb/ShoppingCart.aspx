<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="FinalWeb.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(images/image.jpg);">
		<h2 class="l-text2 t-center">
			 Shopping Cart
		</h2>
	</section>
	
	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
		<div class="container">
			<!-- Cart item -->
			<div class="container-table-cart pos-relative">
				<div class="wrap-table-shopping-cart bgwhite" id="shopcart" runat="server">
					
				</div>
			</div>

			<div class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
				<div class="flex-w flex-m w-full-sm">
					<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
						<!-- Button -->
						<button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
							Continue Shopping
						</button>
					</div>

              <div class="flex-c-m p-t-44 p-t-30-xl">
					<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
						<span class="m-text10 p-b-1 days">
							00
						</span>

						<span class="s-text5">
							days
						</span>
					</div>

					<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
						<span class="m-text10 p-b-1 hours">
							24
						</span>

						<span class="s-text5">
							hrs
						</span>
					</div>

					<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
						<span class="m-text10 p-b-1 minutes">
							00
						</span>

						<span class="s-text5">
							mins
						</span>
					</div>

					<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
						<span class="m-text10 p-b-1 seconds">
							00
						</span>

						<span class="s-text5">
							secs
						</span>
					</div>
				</div>
				</div>

			<!--	<div class="size10 trans-0-4 m-t-10 m-b-10">
					<!-- Button -->
					<!--<button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
						Update Cart
					</button>
				</div> -->
			</div>

			<!-- Total -->
			<div class="bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
				<h5 class="m-text20 p-b-24">
					Cart Totals
				</h5>

				<!--  -->
				<div class="flex-w flex-sb-m p-b-12" id="total" runat="server">
					
				</div>

				<!--  -->
				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="s-text18 w-size19 w-full-sm">
						Shipping:
					</span>

					<div class="w-size20 w-full-sm">
						<div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-size21 m-t-8 m-b-12">
						<select class="selection-2" name="country" id="selection" runat="server">
								<option>Select the type of courier...</option>
								<option>Standard courier services (R50)</option>
								<option>Overnight service (R75)</option>
								<option>Same Day express (R100)</option>
                            </select>
						
                            <br />
                            <br />
						
                        <asp:CheckBox ID="tut" runat="server" Text="Will Require Tutorials for using the product" />

                        </div>
						<span class="s-text19">
							Calculate Shipping
						</span>

					<div class="size15 trans-0-4">
					<!-- Button -->
                    <asp:Button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" ID="UPDATETOTAL" runat="server" Text="Update" OnClick="Update_Click" />
				</div>
					</div>
				</div>

				<!--  -->
				<div class="flex-w flex-sb-m p-t-26 p-b-30">
					<span class="m-text22 w-size19 w-full-sm">
						Total:
					</span>

					<span class="m-text21 w-size20 w-full-sm" id="subtotall" runat="server">
					
					</span>
				</div>

				<div class="size15 trans-0-4">
					<!-- Button -->
                    <asp:Button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" ID="CheckOut" runat="server" Text="Proceed To Check Out" OnClick="CheckOut_Click" />
				</div>
			</div>
		</div>
	</section>
</asp:Content>
