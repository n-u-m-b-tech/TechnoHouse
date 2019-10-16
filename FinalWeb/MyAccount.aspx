<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="FinalWeb.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(images/image.jpg);">
		<h2 class="l-text2 t-center">
		    My Account Information
		</h2>
	</section>

    <div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
        <div style="width:  45%; float:left; height:300px; background:gray; margin:10px">
        <h4 class="s-text12 p-b-30" style="color:black">
			        General Information
		        </h4>
                <ul>
                    <li class="p-b-9"><a href="#" class="s-text7">Personal Details</a></li>
                </ul>
        </div>

        <div style="width: 50%; float:left; height:300px; background:gray; margin:10px">

            <h4 class="s-text12 p-b-30" style="color:black">
			        Orders and Cart
		        </h4>
                <ul>
                    <li class="p-b-9" ><a href="TrackOrder.aspx" class="s-text7">Track Order</a></li>
                    <li class="p-b-9"><a href="History.aspx" class="s-text7">Invoices</a></li>
                     <li class="p-b-9"><a href="ShoppingCart.aspx" class="s-text7">My Cart</a></li>
                </ul>
        </div>
        </div>
       </div>
      </div>
     </div>
</asp:Content>
