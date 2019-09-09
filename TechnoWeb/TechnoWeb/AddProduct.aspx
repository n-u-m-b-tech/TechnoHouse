<%@ Page Title="" Language="C#" MasterPageFile="~/TechMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="TechnoWeb.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-agileits">
 <!--form-stars-here-->
    <br /><br />
		<div class="form-w3-agile">
			<h2><b>Add new Product</b></h2>
			<form action="#" method="post">
				<div class="form-sub-w3">
					<input type="text" name="name" placeholder="Enter Product Name" required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>
				
                <div class="form-sub-w3">
					<input type="text" name="description" placeholder="Enter Product Description" required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="brand" placeholder="Enter Product Brand " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="manufacturer" placeholder="Enter Product Manufacturer " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="category" placeholder="Enter Product Category " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="quantity" placeholder="Enter Product Quantity " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="price" placeholder="Enter Product Price " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="discount" placeholder="Enter Product Discount " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="active" placeholder="Is the product still available?" required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

                <div class="form-sub-w3">
					<input type="text" name="url" placeholder="Image url " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>

				<div class="submit-w3l">
					 <asp:Button ID="BtnAddToCart" runat="server" BackColor="#CC0000" BorderColor="#666666" BorderWidth="2px" Text="Submit" Width="220px" />
				</div>
			</form>
		</div>
  <!--//form-ends-here-->
</div>
</asp:Content>
