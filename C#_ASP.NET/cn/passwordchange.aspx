<%@ Page Title="" Language="C#" MasterPageFile="~/cn/CnMasterPage.master" AutoEventWireup="true" CodeFile="passwordchange.aspx.cs" Inherits="cn_passwordchange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
	<!-- Custom styles -->
	<link href="css/userinfo-style.css" rel="stylesheet" />
	<link href="css/heroic-features.css" rel="stylesheet" />
	<link href="assets/css/form-elements.css" rel="stylesheet" />
	<script type="text/javascript">
	    function Exit() {

	        document.getElementById('<%=this.Master.FindControl("btnExit").ClientID%>').click();

        }

	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<section id="container" class="">
				<!-- sidebar -->
				<div class="nav-collapse hidden-xs" id="sidebar" style="padding-right:0;padding-left:0;">
					<ul class="sidebar-menu" id="lg-menu">
						<li style="margin-top:50px; color:#4ACCC2">
							<a  href="../cn/userinfo.aspx">
								<span style="color:#fff;margin-left:10%;">Administration</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="../cn/personalinfo.aspx"  class="sideactive">
								<div style="width:26px;display:inline-block;">
									<i class="fa fa-user"></i>
								</div>
								<span>Personal Information</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="#" class="">
								<div style="width:26px;display:inline-block;">
									<i class="fa fa-key"></i>
								</div>
								<span>Change Password</span>
							</a>
						</li>
						<li>
							<a class="" href="#">
								<div style="width:26px;display:inline-block;">
									<i class="fa fa-shopping-cart"></i>
								</div>
								<span>Order Management</span>
							</a>
						</li>
						<li>
							<a class="" href="#">
								<div style="width:26px;display:inline-block;">
									<i class="fa fa-calendar-plus-o"></i>
								</div>
								<span>Appointment Management</span>
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
						<div class="row">
							<div class="col-lg-12">
								<h3 class="page-header" style="color:#ff9a16">
									<i class="fa fa-laptop" style="color:#ff9a16;margin-top:2px;"></i> Change Password
								</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-8 col-sm-offset-2 form-box" >
								<div class="panel panel-default">
									<div class="panel-heading">
										<div class="pull-left">Change Password</div>
									</div>
									<div class="panel-body">
										<div class="padd">
											<div class="form quick-post">
												<div class="form-horizontal" style="text-align:left;">
													<div class="form-group">
														<div  class="col-md-4">
															<label style="padding-top:3%">Old password:</label>
														</div>
														<div class="col-md-4">
															<asp:TextBox ID="txtOldpassword" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your old password" ControlToValidate="txtOldpassword" ForeColor="#FF5050"></asp:RequiredFieldValidator>
															<br />
															<asp:Label ID="lblOldpasswordmsg" runat="server" ForeColor="#FF5050"></asp:Label>
														</div>
													</div>
													<div class="form-group">
														<div  class="col-md-4">
															<label style="padding-top:3%">New password:</label>
														</div>
														<div class="col-md-4">
															<asp:TextBox ID="txtNewpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your new password" ControlToValidate="txtNewpassword" ForeColor="#FF5050"></asp:RequiredFieldValidator>
															<br />
															<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Your password must have 8 - 20 characters, including at least a number and a letter. Symbols are not allowed." ControlToValidate="txtNewPassword" ForeColor="#FF5050" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,20})$"></asp:RegularExpressionValidator>
														</div>
													</div>
													<div class="form-group">
														<div  class="col-md-4">
															<label style="padding-top:3%">Comfirm password：</label>
														</div>
														<div class="col-md-4">
															<asp:TextBox ID="txtNewpassword2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please reenter your password"  ControlToValidate="txtNewpassword2" ForeColor="#FF5050"></asp:RequiredFieldValidator>
															<br />
															<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The password and the confirmation you typed do not match." ControlToValidate="txtNewpassword2" ControlToCompare="txtNewpassword" ForeColor="#FF5050"></asp:CompareValidator>
														</div>
													</div>
													<div  style="text-align:center">
														<asp:Button ID="btnChangepsw" runat="server" Text="Submit" CssClass="btnSignin"  OnClick="btnChangepsw_Click"  />
													</div>
												</div>
											</div>
										</div>
									</div>
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
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>

