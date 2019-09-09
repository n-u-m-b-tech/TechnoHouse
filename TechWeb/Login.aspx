<%@ Page Title="" Language="C#" MasterPageFile="~/TECHNO.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TechWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="css/login.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="main-agileits">
 <!--form-stars-here-->
    <br /><br />
		<div class="form-w3-agile">
			<h2><b>LOGIN HERE</b></h2>
			<form action="#" method="post">
				<div class="form-sub-w3">
					<input type="text" name="Username" placeholder="Customer number or username " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="Password" placeholder="Password" required="" />
				<div class="icon-w3">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
				</div>
				</div>
				<p class="p-bottom-w3ls">Are you a Techno House member?<a class="w3_play_icon1" href="UserRegistration">Register here</a></p>
				
				<div class="submit-w3l">
					 <asp:Button ID="BtnLogin" runat="server" BackColor="#CC0000" BorderColor="#666666" BorderWidth="2px" Text="Log In" Width="220px" />
				</div>
			</form>
		</div>
  <!--//form-ends-here-->
</div> 


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
