<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SafeHouse.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   	<title>Safe House Portal</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	  
 <script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.all.min.js
"></script>
<link href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.min.css
" rel="stylesheet">

</head>
  <form id="login" runat="server">
	<body class="img js-fullheight" style="background-image: url(assets/img/intro-bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Safe House Portal</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Have an account?</h3>
		      	<form action="#" class="signin-form">
		      		<div class="form-group">
					<asp:TextBox ID="txtUserName" placeholder="UserName" runat="server" class="form-control" required></asp:TextBox>
		      		</div>
	            <div class="form-group">

					<asp:TextBox ID="txtpassword" runat="server" placeholder="Password" TextMode="Password" class="form-control" required></asp:TextBox>
	            </div>
	            <div class="form-group">

				<asp:Button ID="btnSubmit" runat="server" Text="Sign In" class="form-control btn btn-primary submit px-3" OnClick="btnSubmit_Click"  />
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		       
								</div>
								<div class="w-50 text-md-right">
									
									<a href="index.aspx" style="color: #fff">Back</a> |
									<a href="Sign Up.aspx" style="color: #fff">Sign Up</a> 
								</div>
	            </div>
	          </form>
	          <div class="social d-flex text-center">
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
		</form>
</body>
</html>
