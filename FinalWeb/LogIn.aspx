<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FinalWeb.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--<link rel="stylesheet" href="css/CustomCss.css" />-->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
            <h4 class="m-text26 p-b-36 p-t-15">Login or Create An Account </h4>	
               
             <div class="bo4 of-hidden size15 m-b-20">
				<input class="sizefull s-text7 p-l-22 p-r-22" runat="server" id="email" type="text" name="email" placeholder="Email" required="">
			</div>
               
			<div class="bo4 of-hidden size15 m-b-20">
             <input class="sizefull s-text7 p-l-22 p-r-22" id="pass" runat="server" type="password" name="password" placeholder="Password">
			</div>
		
                <br />
				<div class="submit-w3l">
					 <asp:Button ID="BtnLogin" runat="server"  BackColor="#CC0000" BorderColor="#666666" BorderWidth="5px" Text="Log In" Height="30px" Width="220px" OnClick="BtnLogin_Click"/>
				</div>

				<p class="p-bottom-w3ls">Are you a Techno House member?<a class="w3_play_icon1" href="UserRegistration.aspx">Register here</a></p>

		  </div>
          </div>
         </div>
    </div>
</asp:Content>
