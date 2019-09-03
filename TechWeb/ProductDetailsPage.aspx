<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="ProductDetailsPage.aspx.cs" Inherits="TechWeb.ProductDetailsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Image {
            margin-right:50%;
            width:456px;
            height:500px;
            background-color:lightgrey;
        }
        
        .dropd {}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <div id="product">
        <section id="Image" runat="server">
          
        </section>
        <br />

        <section id="details" runat="server">
           <asp:Label ID = "proname" runat="server" placeholder="name"></asp:Label><br />
            <asp:Label ID = "price" runat="server" placeholder="proprice"></asp:Label><br />
            <asp:Label ID = "decription" runat="server" placeholder="prodescription"></asp:Label><br />
            <input type="text" id="qty" runat="server" placeholder="Qty" />
           <asp:button ID="btnAddCart" runat="server" text="Add to Cart" class="btn" OnClick="BtnAddtoCart_Click" Width="86px"></asp:button>

        </section>
        <section id="Other details">
            <div class="fa-dropbox">
               <asp:Label ID="desrcipt" runat="server" Text="Put some here"  Width="100%" Height="100"></asp:Label>
            </div>

             <button class="dropd">Feature</button>
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
