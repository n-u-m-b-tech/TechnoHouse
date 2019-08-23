<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TechWeb.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />


	<!-- Bootstrap css -->
	<link href="Content/bootstrap.min.css" rel="stylesheet" />
	<link href="Content/font-awesome.min.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Lobster|Quicksand" rel="stylesheet" />

	<link href="css/form.css" rel="stylesheet" />

    <title>Sign In</title>
</head>
<body >
    <form id="form1" runat="server">
        <div class="container" >
			<div class="card">

			  <h5 class="card-header info-color white-text text-center py-4">
				<strong>Login</strong>
			  </h5>
			  <div class="card-body px-lg-5 pt-0" id="content">

				<!-- Form -->
				<div class="text-center" style="color: #b200ff;">

				  <!-- Email -->
				  <div class="md-form input-container">
					<input placeholder="Email" type="Email" id="Email" runat="server" class="form-control" />
				  </div>

				  <!-- Password -->
				  <div class="md-form">
                    <input placeholder="Password" type="password" id="Password" runat="server" class="form-control" />
                  </div>
                    <br />
				  <div class="d-flex justify-content-around">

					<div>
					  <!-- Remember me -->
					  <div class="form-check">
						<input type="checkbox" class="form-check-input" id="materialLoginFormRemember" />
						<label class="form-check-label" for="materialLoginFormRemember"><strong>Remember me</strong></label>
					  </div>

					</div>


					<div>
					  <!-- Forgot password -->
					  <a href="#">Forgot password?</a>
					</div>
				  </div>
                    <br />
				  <!-- Sign in button -->
				  <asp:button ID="btnSignIn" runat="server" text="Sign in" OnClick="btnSignIn_Click" CssClass="btn"></asp:button>      
                    <div>
                     
                    </div>
                    <div>
                        <asp:Label ID="lblMsg" runat="server" Text="Login successful" ForeColor ="red"></asp:Label>
                
                    </div>
                    <br />
				  <!-- Register -->
				  <p><strong>Not a member?</strong>
					<a href="UserRegister">Sign Up</a>
				  </p>                    
				</div>
				<!-- Form -->
			  </div>
			</div>
			<!-- Material form login -->
        </div>

    </form>
    <!-- Bootstrap js -->
	<script src="scripts/jquery-3.3.1.min.js"></script>
	<script src="scripts/popper.min.js"></script>
	<script src="scripts/bootstrap.min.js"></script>
</body>
</html>

