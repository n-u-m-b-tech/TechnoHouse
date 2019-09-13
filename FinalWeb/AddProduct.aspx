<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="FinalWeb.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
          
              <h2><em>Add Product</em></h2><br />
          <div>
                <input type="text" name="txtname" id="name" placeholder="Product Name" runat="server" /><br /><br />          
                <input type="text" name="txtdescription" id="description" placeholder="Product Desription" runat="server" /><br /><br />
                <input type="text" name="txtbrand" id="brand" placeholder="Product Brand" runat="server" /><br /><br />
                <input type="text" name="txtmanufact" id="manufacturer" placeholder="Product Manufacturer" runat="server" /><br /><br />
                <input type="text" name="txtcategory" id="category" placeholder="Product Category" runat="server" /><br /><br />
                <input type="text" name="txtprice" id="price" placeholder="Product Price" runat="server" /><br /><br />
                <input type="text" name="txtdiscount" id="discount" placeholder="Product Discount" runat="server" /><br /><br />
                <input type="text" name="txtquantity" id="quantity" placeholder="Product Quantity" runat="server" /><br /><br />
                <input type="text" name="txtactive" id="active" placeholder="Is it still sold?" runat="server" /><br /><br />
                <input type="text" name="txturl" id="url" placeholder="Product URL" runat="server" /><br /><br />            
          <ul class="actions">
            <li>
                <asp:Button ID="BtnRegister" runat="server" type="register" Text="Register" class="primary" OnClick="BtnRegister_Click" />
            </li>
          </ul>
        </div>
        </div>
        </div>
    </div>
    </div>
</asp:Content>
