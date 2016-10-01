<%@ Page Title="" Language="C#" MasterPageFile="~/cn/CnMasterPage.master" AutoEventWireup="true" CodeFile="userinfo.aspx.cs" Inherits="cn_userinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
	<!-- Custom styles -->
	<link href="css/heroic-features.css" rel="stylesheet" />
	<link href="css/userinfo-style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<!-- container section start -->
	<section id="container" class="">
		<!-- sidebar -->
		<div class="nav-collapse hidden-xs" id="sidebar" style="padding-right:0;padding-left:0;">
			<ul class="sidebar-menu" id="lg-menu">
				<li style="margin-top:50px; color:#4ACCC2" class="sideactive">
					<a class="" href="#">
						<span style="color:#fff;margin-left:10%;">Administration</span>
					</a>
				</li>
				<li class="sub-menu">
					<a href="personalinfo.aspx">
						<div style="width:26px;display:inline-block;">
							<i class="fa fa-user"></i>
						</div>
						<span>Information</span>
					</a>
				</li>
				<li class="sub-menu">
					<a href="passwordchange.aspx" class="">
						<div style="width:26px;display:inline-block;">
							<i class="fa fa-key"></i>
						</div>
						<span>Password</span>
					</a>
				</li>
				<li>
					<a class="" href="#">
						<div style="width:26px;display:inline-block;">
							<i class="fa fa-shopping-cart"></i>
						</div>
						<span>Order</span>
					</a>
				</li>
				<li>
					<a class="" href="#">
						<div style="width:26px;display:inline-block;">
							<i class="fa fa-calendar-plus-o"></i>
						</div>
						<span>Appointment</span>
					</a>
				</li>
				<li>
					<a class="" href="#">
						<div style="width:26px;display:inline-block;">
							<i class="fa fa-cubes"></i>
						</div>
						<span>Address</span>
					</a>
				</li>
				<li class="sub-menu">
					<a href="#" class="">
						<i class="fa fa-wrench"></i>
						<span>Suggestions</span>
						<span class="menu-arrow arrow_carrot-right"></span>
					</a>
				</li>
			</ul>
		</div>
		<!-- /sidebar -->
		<!-- tiny only nav-->
		<ul class="visible-xs" style="background-color:#263353; padding:10px;margin:0; width:15%; top:50px;margin-left:-15px;position:fixed; text-align:center; font-size:1.5em;z-index:5;height:100%;">
			<li style="padding:5px ; margin-left:-5px;">
				<a href="#featured" class="text-center">
					<i class="fa fa-user"></i>
				</a>
			</li>
			<li style="padding:5px ; margin-left:-5px;">
				<a href="#featured" class="text-center">
					<i class="fa fa-key"></i>
				</a>
			</li>
			<li style="padding:5px ; margin-left:-5px;">
				<a href="#featured" class="text-center">
					<i class="fa fa-shopping-cart"></i>
				</a>
			</li>
			<li style="padding:5px ; margin-left:-5px;">
				<a href="#stories" class="text-center">
					<i class="fa fa-calendar-plus-o"></i>
				</a>
			</li>
			<li style="padding:5px ; margin-left:-5px;">
				<a href="#" class="text-center">
					<i class="fa fa-cubes"></i>
				</a>
			</li>
			<li style="padding:5px ; margin-left:-5px;">
				<a href="#" class="text-center">
					<i class="fa fa-wrench"></i>
				</a>
			</li>
		</ul>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!--overview start-->
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header" style="color:#ff9a16">
							<i class="fa fa-laptop" style="color:#ff9a16;margin-top:2px;"></i> Administration
						</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
						<a href="personalinfo.aspx">
							<div class="info-box blue-bg">
								<i class="fa fa-user"></i>
								<div class="count">Personal Information</div>
							</div>
							<!--/.info-box-->
						</a>
					</div>
					<!--/.col-->
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
						<div class="info-box yellow-bg">
							<i class="fa fa-shopping-cart"></i>
							<div class="count">Order Managment</div>
						</div>
						<!--/.info-box-->
					</div>
					<!--/.col-->
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="info-box pink-bg">
							<i class="fa fa-calendar-plus-o"></i>
							<div class="count">Appointment Managment</div>
						</div>
						<!--/.info-box-->
					</div>
					<!--/.col-->
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="info-box lime-bg">
							<i class="fa fa-cubes"></i>
							<div class="count">Shipping
								<br/> Address
							</div>
						</div>
						<!--/.info-box-->
					</div>
					<!--/.col-->
				</div>
				<!--/.row-->
				<div class="row">
					<div class="col-md-6 portlets" >
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="pull-left">My QR Code</div>
							</div>
							<div class="panel-body" style="margin:auto auto; text-align:center; vertical-align:middle; padding:67.5px 0">
								<asp:Image ID="myqrcode" runat="server" Height="200px" Width="200px"  />
							</div>
						</div>
					</div>
					<div class="col-md-6 portlets">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="pull-left">My Information</div>
							</div>
							<div class="panel-body">
								<div class="padd">
									<div class="form quick-post">
										<div class="form-horizontal" style="text-align:left">
											<div class="form-group">
												<label class="col-lg-4" for="content" style="padding-left:10%; width:30%">User Name:</label>
												<div class="col-lg-4" style="display:inline-block">
													<asp:Label ID="lblUser" runat="server"></asp:Label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-4" for="content" style="padding-left:10%; width:30%">Address:</label>
												<div class="col-lg-4" style="display:inline-block">
													<asp:Label ID="lblAddress" runat="server"></asp:Label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-4" for="content" style="padding-left:10%; width:30%">City:</label>
												<div class="col-lg-4" style="display:inline-block">
													<asp:Label ID="lblCity" runat="server"></asp:Label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-4" for="content" style="padding-left:10%; width:30%">State:</label>
												<div class="col-lg-4" style="display:inline-block">
													<asp:Label ID="lblState" runat="server"></asp:Label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-4" for="content" style="padding-left:10%; width:30%">Phone:</label>
												<div class="col-lg-4" style="display:inline-block">
													<asp:Label ID="lblPhone" runat="server"></asp:Label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-4" for="content" style="padding-left:10%; width:30%">E-mail:</label>
												<div class="col-lg-4" style="display:inline-block">
													<asp:Label ID="lblEmail" runat="server"></asp:Label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- project team & activity end -->
						</div>
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->
	<!-- Javascript -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<!--[if lt IE 10]>
	<script src="assets/js/placeholder.js"></script>
	<![endif]-->
</asp:Content>

