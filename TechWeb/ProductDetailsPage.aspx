<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="ProductDetailsPage.aspx.cs" Inherits="TechWeb.ProductDetailsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Image {
            margin-right:50%;
            width:456px;
            height:500px;
            background-color:lightgrey;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <div id="product">
        <section id="Image">

        </section>
        <br />

        <section id="details">
            <asp:Label ID="proname" runat="server" Text="Put name here"></asp:Label><br />
            <asp:Label ID="price" runat="server" Text="Put price here"></asp:Label><br />
            <asp:Label ID="decription" runat="server" Text="Put description here"></asp:Label><br />
            <input type="text" id="qty" runat="server" placeholder="Qty" />
            <asp:Button ID="BtnAddCart" runat="server" Text="Add to Cart" OnClick="BtnAddtoCart_Click" />
        </section>
        <section id="Other details">
            <button class="dropd">Description</button>
            <div class="fa-dropbox">
               <asp:Label ID="desrcipt" runat="server" Text="Put some here"  Width="100%" Height="100"></asp:Label>
            </div>

             <button class="dropd">Features</button>
            <div class="fa-dropbox">
                <asp:Label ID="features" runat="server" Text="Put some here" Width="100%" Height="100"></asp:Label>
            </div>
             
             <button class="dropd">Reviews</button>
            <div class="fa-dropbox">
               <asp:Label ID="review" runat="server" Text="Put some here" Width="100%" Height="100"></asp:Label>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyContent" runat="server">

</asp:Content>
