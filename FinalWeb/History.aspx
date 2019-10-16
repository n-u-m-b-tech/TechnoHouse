<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="FinalWeb.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(images/image.jpg);">
		<h2 class="l-text2 t-center">
		View Past Invoices
		</h2>
	</section>

    <div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
            <h4 class="m-text26 p-b-36 p-t-15">My Invoices </h4>	

                <div id="loaded" runat="server">
          
            </div>

       <div class="size14 trans-0-4 m-b-10">
		 <asp:Button ID="BtnDone" runat="server"  Text="Done" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" OnClick="BtnDone_Click" />
	  </div>

              </div>
             </div>
            </div>
        </div>
</asp:Content>
