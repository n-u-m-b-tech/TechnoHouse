<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="FinalWeb.SearchProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="container bgwhite p-t-35 p-b-80">
    <h2><em>Search Product</em></h2><br />

    <input type="text" name="txtname" id="proname" placeholder="Product Name" runat="server" class="auto-style1" /><br />
    <ul>                  
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
        </ul>

 </div> 
</asp:Content>
