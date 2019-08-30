<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="EditProductPage.aspx.cs" Inherits="TechWeb.EditProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <div class="fields">
        <h2>Edit Product</h2>
        <section>
            <img alt="" src='<%#Eval("url")%>'  width="150" height="150"/>
            </section>
            <div class="field">
                <input type="text" name="txtname" id="name" placeholder="Product Name" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtdescription" id="description" placeholder="Product Desription" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtbrand" id="brand" placeholder="Product Brand" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtmanufact" id="manufacturer" placeholder="Product Manufacturer" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtcategory" id="category" placeholder="Product Category" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtprice" id="price" placeholder="Product Price" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtdiscount" id="discount" placeholder="Product Discount" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtquantity" id="quantity" placeholder="Product Quantity" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txtactive" id="active" placeholder="Is it still sold?" runat="server" />
            </div>
            <div class="field">
                <input type="text" name="txturl" id="url" placeholder="Product URL" runat="server" />
            </div>
        </div>
        <ul class="actions">
        <li>
            <asp:Button ID="BtnEdit" runat="server" type="edit" Text="Submit" class="primary" OnClick="BtnEdit_Click" />
        </li>
    </ul>
</asp:Content>
