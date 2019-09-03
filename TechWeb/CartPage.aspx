<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="TechWeb.CartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">


        .auto-style1 {
            width: 100%;
            border: 1px solid gray;
            border-radius: 8px;
        }
        .auto-style2 {
            width: 406px;
            border: 1px solid gray;
            border-radius: 4px;
        }
        .auto-style3 {
            width: 72px;
              border: 1px solid gray;
            border-radius: 4px;
        }
        .auto-style4 {
            width: 406px;
            height: 23px;
     
        }
        .auto-style5 {
            width: 72px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 32px;
        }
        .auto-style7 {
            height: 23px;
            width: 98px;
        }
        .auto-style8 {
            width: 98px;
            text-align:center;
        }
        .auto-style9 {
            height: 23px;
            width: 112px;
        }
        .auto-style10 {
            width: 112px;
            border:1px solid gray;
            border-radius:8px;
        }
        .auto-style11 {
            width: 32px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
 <div>
            <br />
            <br />
            MY CART<br />
            <br />
            <table class="auto-style1" >
                <tr>
                    <td class="auto-style4">PRODUCT</td>
                    <td class="auto-style5">PRICE</td>
                    <td class="auto-style7">QUANTITY</td>
                    <td class="auto-style9">&nbsp;TOTAL</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="plus" runat="server" OnClick="BtnPlus_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="minus" runat="server" Text="-" Width="25px" OnClick="BtnMinus_Click" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
 
            </table>
            <br />
&nbsp;&nbsp;
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
                        <asp:Button ID="Button1" runat="server" Text="CHECKOUT >" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" Text="ADD MORE ITEMS" />
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
