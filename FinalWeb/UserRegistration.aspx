<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="FinalWeb.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(images/slider/welcomeBack.jpg);">
		<h2 class="l-text2 t-center">
		Create and Account and become a Techno Member
		</h2>
	</section>

<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
          
              <h4 class="m-text26 p-b-36 p-t-15">Create An Account Here</h4>	

              <div class="bo4 of-hidden size15 m-b-20">
		      	  <input class="sizefull s-text7 p-l-22 p-r-22" id="title" runat="server" type="text" name="title" placeholder="Title" required="">
              </div>
             <div class="bo4 of-hidden size15 m-b-20">
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="name" runat="server" type="text" name="name" placeholder="Full Name(s)" required="">
             </div>

             <div class="bo4 of-hidden size15 m-b-20">
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="surname" runat="server" type="text" name="surname" placeholder="Surname" required="">
			 </div>

               <div class="bo4 of-hidden size15 m-b-20">
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="phone" runat="server" type="text" name="phone" placeholder="Phone Number(s)" required="">
			 </div>


              <div class="bo4 of-hidden size15 m-b-20">
		      	  <input class="sizefull s-text7 p-l-22 p-r-22" id="add1" runat="server" type="text" name="add1" placeholder="Address Line 1" required="">
                </div> 

              <div class="bo4 of-hidden size15 m-b-20">
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="add2" runat="server" type="text" name="add2" placeholder="Address Line 2" required=""><br />
             </div>

              <div class="bo4 of-hidden size15 m-b-20"> 
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="city" runat="server" type="text" name="city" placeholder="City" required="">
             </div>
                 
              <div class="bo4 of-hidden size15 m-b-20"> 
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="prov" runat="server" type="text" name="prov" placeholder="Province" required="">
           
              </div>

             <div class="bo4 of-hidden size15 m-b-20"> 
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="zip" runat="server" type="text" name="zip" placeholder="Zip Code" required="">
			</div>

               <div class="bo4 of-hidden size15 m-b-20">
		      	  <input class="sizefull s-text7 p-l-22 p-r-22" id="username" runat="server" type="text" name="username" placeholder="Username" required="">
                 </div>

              <div class="bo4 of-hidden size15 m-b-20">
                   <input class="sizefull s-text7 p-l-22 p-r-22" id="email" runat="server" type="text" name="email" placeholder="Email" required=""><br />
                   <asp:RegularExpressionValidator ID="emailValid" runat="server" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                  </div>
              <div class="bo4 of-hidden size15 m-b-20">    
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="pass" runat="server" type="password" name="pass" placeholder="Password" required="">
              </div>
              <div class="bo4 of-hidden size15 m-b-20"> 
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="confirm" runat="server" type="password" name="pass" placeholder="Confirm Password" required="">
                  <asp:CompareValidator ID="passconfirm" runat="server" ErrorMessage="Passwords Don't Match" ControlToCompare="pass" ControlToValidate="confirm"></asp:CompareValidator>
              </div>

              <div class="size14 trans-0-4 m-b-10">
					 <asp:Button ID="BtnRegister" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" runat="server" Text="Register"  OnClick="BtnRegister_Click"/>
			  </div>
              <div>
                 <asp:Label ID="lblErrorMessage" runat="server" Text="Something went wrong..couldn't register User. Please try again" ForeColor ="red"></asp:Label>
              </div>
          </div>
        </div>
    </div>
      </div>
</asp:Content>
