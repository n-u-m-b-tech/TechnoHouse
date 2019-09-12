<%@ Page Title="" Language="C#" MasterPageFile="~/TechMaster.Master" AutoEventWireup="true" CodeBehind="SearchUser.aspx.cs" Inherits="TechnoWeb.SearchUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #txt {
            width: 647px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
