<%@ Page Title="" Language="C#" MasterPageFile="~/TECHNO.Master" AutoEventWireup="true" CodeBehind="SearchUserPage.aspx.cs" Inherits="TechWeb.SearchUserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #txt {
            width: 647px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <header>
        <h1 >Edit User</h1>
    </header>
    <section>
        <div class="fields">
            <div class="field">
                 <input type="text" name="email" id="email" placeholder="Enter User Email" runat="server" /><br />
                 <asp:Button ID="btnEditUser" runat="server" OnClick="btnEditUser_Click" Text="Edit User" style="height: 26px" />
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
