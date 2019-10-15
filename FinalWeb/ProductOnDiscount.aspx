<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="ProductOnDiscount.aspx.cs" Inherits="FinalWeb.ProductOnDiscount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- New Product -->
	<section class="newproduct bgwhite p-t-45 p-b-105">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Products On Discount
				</h3>
			</div>
           
			<div class="wrap-slick2">
				<div class="slick2" id="view" runat="server">
                  
                </div>
			</div>
          
		</div>
	</section>

</asp:Content>
