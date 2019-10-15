﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FinalWeb.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(images/slider/welcome.jpg);">
		<h2 class="l-text2 t-center">
		Login or Create an Account
		</h2>
	</section>

    <div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
            <h4 class="m-text26 p-b-36 p-t-15">Login Here </h4>	
               
             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="email" type="text" name="email" placeholder="Email" required="">
			</div>
               
			<div class="bo4 of-hidden size15 m-b-20">
             <input class="sizefull s-text7 p-l-22 p-r-22" id="pass" runat="server" type="password" name="password" placeholder="Password">
			</div>
		
                <br />
				<div class="size14 trans-0-4 m-b-10">
					 <asp:Button ID="BtnLogin" runat="server"  Text="Log In" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" OnClick="BtnLogin_Click"/>
				</div>
               <div>
                 <asp:Label ID="lblErrorMessage" runat="server" Text="Invalid User Credentials" ForeColor ="red"></asp:Label>
              </div>
                <p class="p-bottom-w3ls">Forgot Password?<a class="w3_play_icon1" href="ResetPassword.aspx"> Reset Password</a></p>
				<p class="p-bottom-w3ls">Are you a Techno House member?<a class="w3_play_icon1" href="UserRegistration.aspx">Register here</a></p>

		  </div>
          </div>
         </div>
    </div>
</asp:Content>
