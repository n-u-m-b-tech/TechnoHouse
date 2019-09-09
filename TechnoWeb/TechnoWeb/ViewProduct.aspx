<%@ Page Title="" Language="C#" MasterPageFile="~/TechMaster.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="TechnoWeb.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/custom.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <br /><br /><br /><br />
    <div class="container2">
   <section class="product">
        <div id="Image" runat="server" class="left-cont">
        <img src="images/products/echobee4.png" width="500" height="500"/>  
        </div>
       <br />
        <div id="details" class="right-cont" runat="server" >    
            <br />
            <br />
            <input  type="text" name="title" value="Echobee" class="text-info" runat="server" /><br />
            <br />
            <input type="text" name="description" value="Echobeee" class="text-info" runat="server" /><br /><br />
            <input type="text" name="price" value="R 3000" class="text-center"  runat="server" /><br />
            <br />

            <asp:Button ID="BtnAddToCart" runat="server" BackColor="#CC0000" BorderColor="#666666" BorderWidth="2px" Text="Add To Cart" Width="220px" />
            <br />
    
    </div>
       </section>
        </div>
    </form>
</asp:Content>
