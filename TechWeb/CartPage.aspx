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
        .auto-style15 {
            width: 107px;
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
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button4" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button5" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button6" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button7" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button8" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button9" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button10" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button11" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button12" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button13" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button14" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button15" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button16" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button17" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button18" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button19" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button20" runat="server" Text="-" Width="25px" OnClick="Button20_Click" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button21" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button22" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button23" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button24" runat="server" Text="-" Width="25px" OnClick="Button24_Click" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button25" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button26" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button27" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button28" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button29" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button30" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button31" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button32" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button33" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button34" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button35" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button36" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button37" runat="server" OnClick="Button3_Click" Text="+" Width="24px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button38" runat="server" Text="-" Width="25px" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;<table class="auto-style17" >
             
    <tr>
                    <td class="auto-style16">&nbsp;Cart Subtotal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R
                        <input id="Text4" class="auto-style15" type="text" /></td>
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
