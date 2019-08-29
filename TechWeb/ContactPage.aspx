<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="TechWeb.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
     <table class="auto-style1">
            <tr>
                <td>Fisrt Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtfName" class="auto-style4" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtlName" class="auto-style4" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Country</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtCountry" class="auto-style3" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtSubject" class="auto-style2" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnSubmit" runat="server" Height="31px" Text="Submit" Width="121px" OnClick="btnSubmit_Click" />
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
</asp:Content>
