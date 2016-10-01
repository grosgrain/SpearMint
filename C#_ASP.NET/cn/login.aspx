<%@ Page Title="" Language="C#" MasterPageFile="~/cn/CnMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="cn_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- CSS -->
	<link rel="stylesheet" href="assets/css/form-elements.css"/>
	<link rel="stylesheet" href="assets/css/style.css"/ >
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
		<div class="col-sm-6 col-sm-offset-3 form-box">
			<div class="form-top">
				<div class="form-top-left">
					<h3 style="color:#ff9a16">User Login</h3>
					<p>Please enter you username and password</p>
				</div>
				<div class="form-top-right">
					<i class="fa fa-lock"></i>
				</div>
			</div>
			<div class="form-bottom">
				<div role="form" class="login-form">
					<div class="form-group">
						<asp:Label ID="lblUser" runat="server" Text="User Name" CssClass="sr-only" ></asp:Label>
						<asp:TextBox ID="txtUser" runat="server"  CssClass="form-username form-control" placeholder="Please enter your user name" Height="50px"  ></asp:TextBox>
					</div>
					<div class="form-group">
						<asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="sr-only" ></asp:Label>
						<asp:TextBox ID="txtPassword" runat="server"  CssClass="form-password form-control" placeholder="Please enter your password" Height="50px" TextMode="Password"></asp:TextBox>
					</div>
					<div class="row">
						<div class="col-lg-9">
							<div class="form-group">
								<asp:Label ID="lblcheck" runat="server" Text="Security Code" CssClass="sr-only" ></asp:Label>
								<asp:TextBox ID="txtcheck" runat="server"  CssClass="form-control" placeholder="Please enter the code on the right(Case Sensitive)." Height="50px"></asp:TextBox>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="form-group">
								<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/cn/ValidateCode.aspx" Width="100%" Height="50px" />
							</div>
						</div>
					</div>
					<!--./row-->
					<asp:Label ID="lblErrormsg" runat="server" ForeColor="#FF5050" ></asp:Label>
					<div  style="text-align:center">
						<asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btnSignin" OnClick="btnLogin_Click" />
						<asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btnSignin" OnClick="btnRegister_Click" />
					</div>
					<div style="margin-top:20px;">
						<asp:Button ID="btnCancel" runat="server" Text="Back to Home" CssClass="btnCancel" OnClick="btnCancel_Click" />
						<asp:Label ID="geli" runat="server" Text="|" CssClass="btnCancel"></asp:Label>
						<asp:Button ID="btnForgetPsw" runat="server" Text="Forget your password?" CssClass="btnCancel" OnClick="btnForgetPsw_Click"/>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="margin-bottom:20px;"></div>
		<!-- Javascript -->
		<script src="assets/js/jquery-1.11.1.min.js"></script>
		<script src="assets/js/jquery.backstretch.min.js"></script>
		<script src="assets/js/scripts.js"></script>
		<!--[if lt IE 10]>
		<script src="assets/js/placeholder.js"></script>
		<![endif]-->
	</asp:Content>

