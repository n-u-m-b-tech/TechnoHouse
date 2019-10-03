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
        
         <div class="submit-w3l">
			<asp:Button ID="btnSearch" runat="server"  BackColor="#CC0000" BorderColor="#666666" BorderWidth="2px" Text="Searc Product" Width="220px" OnClick="btnSearch_Click"/>
		</div>
         
</div>
     </div>
     </div>
 </div> 
</asp:Content>
