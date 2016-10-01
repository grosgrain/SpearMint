<%@ Page Title="" Language="C#" MasterPageFile="~/cn/CnMasterPage.master" AutoEventWireup="true" CodeFile="personalinfo.aspx.cs" Inherits="cn_personalinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
	<!-- Custom styles -->
	<link href="css/heroic-features.css" rel="stylesheet" />
	<link href="assets/css/form-elements.css" rel="stylesheet" />
	<link href="css/userinfo-style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<section id="container" class="">
				<!-- sidebar -->
				<div class="nav-collapse hidden-xs" id="sidebar" style="padding-right: 0; padding-left: 0;">
					<ul class="sidebar-menu" id="lg-menu">
						<li style="margin-top:50px; color:#4ACCC2">
							<a  href="../cn/userinfo.aspx">
								<span style="color:#fff;margin-left:10%;">Administration</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="#"  class="sideactive">
								<div style="width:26px;display:inline-block;">
									<i class="fa fa-user"></i>
								</div>
								<span>Information</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="../cn/passwordchange.aspx" class="">
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
						<div class="row">
							<div class="col-lg-12">
								<h3 class="page-header" style="color:#ff9a16">
									<i class="fa fa-laptop" style="color:#ff9a16;margin-top:2px;"></i> Personal Information
								</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-8 col-sm-offset-2 form-box" >
								<div class="panel panel-default">
									<div class="panel-heading">
										<div class="pull-left">Change Personal Information</div>
									</div>
									<div class="panel-body">
										<div class="padd">
											<div class="form quick-post">
												<div class="form-horizontal" style="text-align:left;">
													<div class="form-group">
														<div  class="col-md-4">
															<label>User Name:</label>
														</div>
														<div class="col-md-4">
															<asp:Label ID="lblUser" runat="server"></asp:Label>
														</div>
													</div>
													<div class="form-group">
														<div  class="col-md-4">
															<label>Address:</label>
														</div>
														<div class="col-md-4">
															<asp:Label ID="lblAddress" runat="server"></asp:Label>
															<asp:TextBox ID="txtAddress" runat="server" Visible="False" CssClass="form-control"></asp:TextBox>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入您的地址！" ControlToValidate="txtAddress" ForeColor="#FF5050"></asp:RequiredFieldValidator>
														</div>
													</div>
													<div class="form-group">
														<div  class="col-md-4">
															<label>City:</label>
														</div>
														<div class="col-md-4">
															<asp:Label ID="lblCity" runat="server"></asp:Label>
															<asp:TextBox ID="txtCity" runat="server" Visible="False" CssClass="form-control"></asp:TextBox>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入所在城市！" ControlToValidate="txtCity" ForeColor="#FF5050"></asp:RequiredFieldValidator>
														</div>
													</div>
													<div class="form-group">
														<div  class="col-md-4">
															<label>State:</label>
														</div>
														<div class="col-md-4">
															<asp:Label ID="lblState" runat="server"></asp:Label>
															<asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Font-Names="Arial" Visible="False">
																<asp:ListItem Selected="True" Value="0">Select State</asp:ListItem>
																<asp:ListItem Value="AL">Alabama (AL) </asp:ListItem>
																<asp:ListItem Value="AK">Alaska (AK)</asp:ListItem>
																<asp:ListItem Value="AZ">Arizona (AZ) </asp:ListItem>
																<asp:ListItem Value="AR ">Arkansas (AR) </asp:ListItem>
																<asp:ListItem Value="CA">California (CA) </asp:ListItem>
																<asp:ListItem Value="CO">Colorado (CO)</asp:ListItem>
																<asp:ListItem Value="CT">Connecticut (CT) </asp:ListItem>
																<asp:ListItem Value="DE">Delaware (DE)</asp:ListItem>
																<asp:ListItem Value="FL">Florida (FL) </asp:ListItem>
																<asp:ListItem Value="GA">Georgia (GA) </asp:ListItem>
																<asp:ListItem Value="HI">Hawaii (HI)</asp:ListItem>
																<asp:ListItem Value="ID"> Idaho (ID)</asp:ListItem>
																<asp:ListItem Value="IL">Illinois (IL) </asp:ListItem>
																<asp:ListItem Value="IN">Indiana (IN) </asp:ListItem>
																<asp:ListItem Value="IA">Iowa (IA) </asp:ListItem>
																<asp:ListItem Value="KS">Kansas (KS) </asp:ListItem>
																<asp:ListItem Value="KY">Kentucky (KY) </asp:ListItem>
																<asp:ListItem Value="LA">Louisiana (LA) </asp:ListItem>
																<asp:ListItem Value="ME">Maine (ME) </asp:ListItem>
																<asp:ListItem Value="MD">Maryland (MD) </asp:ListItem>
																<asp:ListItem Value="MA">Massachusetts (MA) </asp:ListItem>
																<asp:ListItem Value="MI">Michigan (MI) </asp:ListItem>
																<asp:ListItem Value="MN">Minnesota (MN) </asp:ListItem>
																<asp:ListItem Value="MS">Mississippi (MS) </asp:ListItem>
																<asp:ListItem Value="MO">Missouri (MO) </asp:ListItem>
																<asp:ListItem Value="MT">Montana (MT) </asp:ListItem>
																<asp:ListItem Value="NE">Nebraska (NE) </asp:ListItem>
																<asp:ListItem Value="NV">Nevada (NV) </asp:ListItem>
																<asp:ListItem Value="NH">New Hampshire (NH) </asp:ListItem>
																<asp:ListItem Value="NJ">New Jersey (NJ) </asp:ListItem>
																<asp:ListItem Value="NM">New Mexico (NM) </asp:ListItem>
																<asp:ListItem Value="NY">New York (NY) </asp:ListItem>
																<asp:ListItem Value="NC">North Carolina (NC) </asp:ListItem>
																<asp:ListItem Value="ND">North Dakota (ND) </asp:ListItem>
																<asp:ListItem Value="OH">Ohio (OH) </asp:ListItem>
																<asp:ListItem Value="OK">Oklahoma (OK) </asp:ListItem>
																<asp:ListItem Value="OR">Oregon (OR) </asp:ListItem>
																<asp:ListItem Value="PA">Pennsylvania (PA) </asp:ListItem>
																<asp:ListItem Value="RI">Rhode Island (RI) </asp:ListItem>
																<asp:ListItem Value="SC">South Carolina (SC) </asp:ListItem>
																<asp:ListItem Value="SD">South Dakota (SD) </asp:ListItem>
																<asp:ListItem Value="TN">Tennessee (TN) </asp:ListItem>
																<asp:ListItem Value="TX">Texas (TX) </asp:ListItem>
																<asp:ListItem Value="UT">Utah (UT) </asp:ListItem>
																<asp:ListItem Value="VT">Vermont (VT) </asp:ListItem>
																<asp:ListItem Value="VA">Virginia (VA) </asp:ListItem>
																<asp:ListItem Value="WA">Washington (WA) </asp:ListItem>
																<asp:ListItem Value="WV">West Virginia (WV) </asp:ListItem>
																<asp:ListItem Value="WI">Wisconsin (WI) </asp:ListItem>
																<asp:ListItem Value="WY">Wyoming (WY)</asp:ListItem>
															</asp:DropDownList>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please selet your state" ControlToValidate="DropDownList1" ValidateRequestMode="Inherit" ForeColor="#FF5050" InitialValue="0"></asp:RequiredFieldValidator>
														</div>
													</div>
													<div class="form-group">
														<div  class="col-md-4">
															<label>Phone:</label>
														</div>
														<div class="col-md-4">
															<asp:Label ID="lblPhone" runat="server"></asp:Label>
															<asp:TextBox ID="txtPhone" runat="server" Visible="False" CssClass="form-control"></asp:TextBox>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your phone number" ControlToValidate="txtPhone" ForeColor="#FF5050"></asp:RequiredFieldValidator>
															<br />
															<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong phone number format!" ControlToValidate="txtPhone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ForeColor="#FF5050"></asp:RegularExpressionValidator>
														</div>
													</div>
													<div class="form-group">
														<div  class="col-md-4">
															<label>E-mail：</label>
														</div>
														<div class="col-md-4">
															<asp:Label ID="lblEmail" runat="server"></asp:Label>
															<asp:TextBox ID="txtEmail" runat="server" Visible="False" CssClass="form-control"></asp:TextBox>
														</div>
														<div class="col-md-4">
															<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your E-mail address" ControlToValidate="txtEmail" ForeColor="#FF5050"></asp:RequiredFieldValidator>
															<br />
															<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Wrong email format!" ControlToValidate="txtEmail" ForeColor="#FF5050" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$">
															</asp:RegularExpressionValidator>
														</div>
													</div>
													<div  style="text-align:center">
														<asp:Button ID="btnChange" runat="server" Text="Change" CssClass="btnSignin" OnClick="btnChange_Click" CausesValidation="False" />
														<asp:Button ID="btnChangeinfo" runat="server" Text="Submit" CssClass="btnSignin" Visible="False" OnClick="btnChangeinfo_Click" />
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

