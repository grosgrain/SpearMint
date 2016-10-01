<%@ Page Title="" Language="C#" MasterPageFile="~/cn/CnMasterPage.master" AutoEventWireup="true" CodeFile="success.aspx.cs" Inherits="cn_success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- CSS -->
	<link rel="stylesheet" href="assets/css/form-elements.css"/>
	<link rel="stylesheet" href="assets/css/style.css"/>
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
		<div class="col-sm-6 col-sm-offset-3 form-box" style="height:600px;">
			<div class="form-top" style="border-radius:5px;">
				<div class="form-top-left" style="margin-top:20px;">
					<h3 style="color:#ff9a16">Congradulations! You have succesfully registered!</h3>
				</div>
				<div class="form-top-right">
					<i class="fa fa-smile-o"></i>
				</div>
				<asp:Label ID="lblSuccessmsg" runat="server"></asp:Label>
			</div>
		</div>
	</div>
</asp:Content>



