<%@ Page Title="" Language="C#" MasterPageFile="~/cn/CnMasterPage.master" AutoEventWireup="true" CodeFile="forgotpsw.aspx.cs" Inherits="cn_forgotpsw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- CSS -->
	<link rel="stylesheet" href="assets/css/form-elements.css"/>
	<link rel="stylesheet" href="assets/css/style.css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/heroic-features.css" rel="stylesheet" />
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3 form-box">
			<div class="form-top">
				<div class="form-top-left">
					<h3 style="color:#ff9a16">Find your password</h3>
				</div>
				<div class="form-top-right">
					<i class="fa fa-lock"></i>
				</div>
			</div>
			<div class="form-bottom">
				<div role="form" class="login-form">
					<div class="form-group">
						<asp:Label ID="lblTypeEmail" runat="server" Text="E-mail：" Font-Names="Arial"></asp:Label>
						<asp:TextBox ID="txtTypeEmail" runat="server" CssClass="form-control" Height="50px" placeholder="Email Address"></asp:TextBox>
					</div>
					<div  style="text-align:center">
						<asp:Button ID="btnTypeEmail" runat="server" CssClass="btnSignin" Text="SUBMIT" OnClick="btnTypeEmail_Click" />
					</div>
					<br />
					<asp:Label ID="lblfailmsg" runat="server" ForeColor="#FF5050"></asp:Label>
					<br />
					<div style="margin-top:20px;">
						<asp:Button ID="btnCancel" runat="server" Text="BACK TO HOME" CssClass="btnCancel" OnClick="btnCancel_Click" />
						<asp:Label ID="geli" runat="server" Text="|" CssClass="btnCancel"></asp:Label>
						<asp:Button ID="btnRelogin" runat="server" Text="LOGIN" CssClass="btnCancel" OnClick="btnRelogin_Click"/>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3 social-login">
			<h3>Login With:</h3>
			<div class="social-login-buttons" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
				<a class="btn btn-link-2" href="#">
					<i class="fa fa-facebook"></i> Facebook
	                        	
				</a>
				<a class="btn btn-link-2" href="#">
					<i class="fa fa-twitter"></i> Twitter
	                        	
				</a>
				<a class="btn btn-link-2" href="#">
					<i class="fa fa-google-plus"></i> Google Plus
	                        	
				</a>
			</div>
		</div>
	</div>
	<!-- Javascript -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<!--[if lt IE 10]>
	<script src="assets/js/placeholder.js"></script>
	<![endif]-->
</asp:Content>


