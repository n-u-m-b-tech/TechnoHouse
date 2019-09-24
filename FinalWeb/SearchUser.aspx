<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="SearchUser.aspx.cs" Inherits="FinalWeb.SearchUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container bgwhite p-t-35 p-b-80">
    <h2><em>Search User</em></h2><br />
    <input type="text" name="email" id="email" placeholder="User E-mail" runat="server" class="auto-style1" /><br /> <br />                 
    <asp:Button ID="btnSearch" runat="server" Width="200" Height="30" OnClick="BtnSearch_Click" Text="Search" />
 </div>    
</asp:Content>
