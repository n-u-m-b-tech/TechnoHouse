<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="InvoicePage.aspx.cs" Inherits="TechWeb.InvoicePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <div id="invoice-details" class="invoice">
        <table class="auto-style1">
            <tr>
                <td>Item #</td>
                 <td>Product Name</td>
                <td>Product Description</td>
                 <td>Qty</td>
                <td>Unit Price</td>
                <td>Amount</td>
            </tr>
        </table>
    </div>
</asp:Content>
