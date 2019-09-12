<%@ Page Title="" Language="C#" MasterPageFile="~/TECHNO.Master" AutoEventWireup="true" CodeBehind="NewCartPage.aspx.cs" Inherits="TechWeb.NewCartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">


        .auto-style10 {
            width: 112px;
            border:1px solid gray;
            border-radius:8px;
        }
        .auto-style13 {
            width: 119px;
        }
        .auto-style16 {
            width: 528px;
        }
        .auto-style17 {
            width: 274px;
            margin-right: 0px;
            border:2px solid gray;
            border-radius: 8px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>
           <asp:Table ID="cartTable" runat="server" Width="100%"> 
    <asp:TableRow>
        <asp:TableCell>Product Name</asp:TableCell>
        <asp:TableCell>Product Description</asp:TableCell>
        <asp:TableCell>Quantity</asp:TableCell>
        <asp:TableCell>Total</asp:TableCell>
        <asp:TableCell>Remove</asp:TableCell>
    </asp:TableRow>
    </asp:Table> 
        <br />
        &nbsp;<table class="auto-style17" >
             
        <tr>
             <td class="auto-style16">&nbsp;Cart Subtotal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R
                         id="Text4" class="auto-style15" type="text" /></td>
        </tr>
        <tr>
             <td class="auto-style16">Shipping&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **FREE**</td>
        </tr>
        <tr>
             <td class="auto-style16">You Save&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R<input id="Text2" class="auto-style10" type="text" /></td>
        </tr>
        <tr>
             <td class="auto-style16">
             <hr />
             </td>
        </tr>
                <tr>
                    <td class="auto-style16">You Pay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R<input id="Text1" class="auto-style13" type="text" /></td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="Button1" runat="server" Text="CHECKOUT >" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" Text="ADD MORE ITEMS" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>


</asp:Content>

