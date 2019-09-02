<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TechWeb.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Login.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">

    <br><br><br><br><br><br><br><br><br>

    <div class="login-box">
        <h1>Login</h1>
        <div class="textbox">
            <i class="fa fa-user" aria-hidden="true"></i>
            <input type="text" name="txtemail" id="email" placeholder="Email-" runat="server" />
        </div>
        <div class="textbox">
            <i class="fa fa-lock" aria-hidden="true"></i>
            <input type="password" name="txtpass" id="pass" placeholder="Password" runat="server" />
        </div>    
        
        					  <!-- Remember me -->
	    <div class="form-check">
			<input type="checkbox" class="form-check-input" id="materialLoginFormRemember" />
			<label class="form-check-label" for="materialLoginFormRemember"><strong>Remember me</strong></label>
		</div>

        <br />

		<div>
		<!-- Forgot password -->
		    <a href="#">Forgot password?</a>
		</div>
        <br />
            <div>
	<!-- Sign in button -->
	     <asp:button ID="btnSignIn" runat="server" text="Sign in" class="btn"></asp:button>
                    
    <div>
         <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credential" ForeColor ="red"></asp:Label>
    </div>
    <div>
         <asp:Label ID="lblMsg" runat="server" Text="Login successful" ForeColor ="red"></asp:Label>            
    </div>
    <p><strong>Not a member?</strong>
		<a href="UserRegistration.aspx">Sign Up</a>
	</p>
    </div>
    </div>
                    

</asp:Content>
