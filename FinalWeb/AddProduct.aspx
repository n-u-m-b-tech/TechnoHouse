<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="FinalWeb.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container bgwhite p-t-35 p-b-80">
<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
            <h4 class="m-text26 p-b-36 p-t-15">Add Product </h4>	
               
             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="name" type="text" name="name" placeholder="Product Name" required="">
			</div>
            
             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="description" type="text" name="name" placeholder="Product Description" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="brand" type="text" name="name" placeholder="Product Brand" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="manufacturer" type="text" name="name" placeholder="Product Manufacturer" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="category" type="text" name="name" placeholder="Product Category" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="price" type="text" name="name" placeholder="Product Price" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="discount" type="text" name="name" placeholder="Product Discount" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="quantity" type="text" name="name" placeholder="Product Quantity" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="active" type="text" name="name" placeholder="Product Available" required="">
			</div>

             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="url" type="text" name="name" placeholder="Image URL" required="">
			</div>

            <div class="submit-w3l">
					 <asp:Button ID="BtnRegister" runat="server"  BackColor="#CC0000" BorderColor="#666666" BorderWidth="2px" Text="Add Product" Width="220px" OnClick="BtnRegister_Click"/>
				</div>
        </div>
        </div>
    </div>
    </div>
</asp:Content>
