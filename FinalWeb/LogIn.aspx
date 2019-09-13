<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FinalWeb.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<!--<link rel="stylesheet" href="css/CustomCss.css" />-->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
           <div style="align-content:center">
            <h2  style="text-align:center"><em>Log In Here/ Create An Account</em></h2><br />

				<div>
					<input type="text" name="Username" id="email" runat="server" placeholder="Enter UserName " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				<div>
					<input type="password" name="Password" id="pass" runat="server"  placeholder="Password" required="" />
				<div class="icon-w3">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
				</div>
				</div>
				</div>
                <br />
				<p class="p-bottom-w3ls">Are you a Techno House member?<a class="w3_play_icon1" href="UserRegistration">Register here</a></p><br />

				<div class="submit-w3l">
					 <asp:Button ID="BtnLogin" runat="server"  BackColor="#CC0000" BorderColor="#666666" BorderWidth="2px" Text="Log In" Width="220px" OnClick="BtnLogin_Click"/>
				</div>

		  </div>
          </div>
         </div>
        </div>
    </div>

</asp:Content>
