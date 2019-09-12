<%@ Page Title="" Language="C#" MasterPageFile="~/TECHNO.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="TechWeb.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
