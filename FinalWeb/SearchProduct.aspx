<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="FinalWeb.SearchProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container bgwhite p-t-35 p-b-80">
   <div class="flex-w flex-sb">
    <div class="w-size13 p-t-30 respon5">
     <div class="wrap-slick3 flex-sb flex-w">
       <h4 class="m-text26 p-b-36 p-t-15">Search For A Product</h4>	
         <div class="bo4 of-hidden size15 m-b-20">
            <input class="sizefull s-text7 p-l-22 p-r-22" id="proname" runat="server" type="text" name="proname" placeholder="Product Name" required="">
          </div>
        
                     <div class="size14 trans-0-4 m-b-10">
					 <asp:Button ID="btnSearch" runat="server" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" Text="Serch Product"  OnClick="btnSearch_Click"/>
		</div>
         
</div>
     </div>
     </div>
 </div> 
</asp:Content>
