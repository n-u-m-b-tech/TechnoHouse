<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="TrackOrder.aspx.cs" Inherits="FinalWeb.TrackOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/TrackOrder.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(images/image.jpg);">
		<h2 class="l-text2 t-center">
		Tracking Order
		</h2>
	</section>

    <div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
            <h4 class="m-text26 p-b-36 p-t-15">Track Order Here </h4>	
               
             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="ordernum" type="text" name="order" placeholder="Order Number" required="">
			</div>
               

    	<div class="size14 trans-0-4 m-b-10">
		 <asp:Button ID="BtnTrack" runat="server"  Text="Track ORder" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" OnClick="BtnTrack_Click" />
		</div>
               <div>
                 <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor ="black"></asp:Label> 
              </div>
        <div id="loaded" runat="server">
          
            </div>
       

      <div>
          
   </div>

              </div>
             </div>
            </div>
           </div>
</asp:Content>
