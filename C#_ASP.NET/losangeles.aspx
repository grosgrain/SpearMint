<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="losangeles.aspx.cs" Inherits="losangeles" %><%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<link href="css/styles.css" rel="stylesheet" />
	<script type="text/javascript">
	    window.onload = function () {
	        $("#homepage").removeClass("active");
	        $("#yangshengpin").removeClass("active");
	        $("#zhongyiguan").addClass("active");
	        $("#container").css("background-color", "#ffffff");
	    };
</script>
	<script src="js/List.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<!-- Title -->
			<div class="row">
				<div class="col-lg-12" style="height:50px;">
					<h3 style="margin-bottom:20px; color:#4ACCC2; font-weight:bolder;">
						<i class="fa fa-plus-circle" style="color:#ff9a16;"></i>&nbsp;Shops at Los Angeles
					</h3>
				</div>
			</div>
			<!-- /.row -->
			<div id="users">
				<div class="row">
					<div class=" col-sm-3 col-lg-3 col-md-3"></div>
					<!--this div is for placeholder purposes-->
					<div class=" col-sm-3 col-lg-3 col-md-3"></div>
					<!--this div is for placeholder purposes-->
					<div class="col-sm-3 col-lg-3 col-md-3">
						<div class="col-md-4" style="padding-top:10px;"></div>
						<div class="col-md-8" style="padding:0; padding-top:10px;">
							<input class="search form-control" placeholder="Search by Zipcode" />
						</div>
					</div>
					<div class="col-sm-3 col-lg-3 col-md-3" style="padding-top:10px; padding-right: 35px;">
						<asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
							<asp:ListItem Value="0">Sort by name</asp:ListItem>
							<asp:ListItem Value="1">Sort by popularity</asp:ListItem>
							<asp:ListItem Value="2">Sort by rating</asp:ListItem>
						</asp:DropDownList>
					</select>
				</div>
			</div>
			<hr />
			<div class="list text-center">
				<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
					<div class="thumbnail">
						<img src="shop/img/c700x420.jpg" alt=""/>
						<div class="caption">
							<h3 class="name">SpearMint Shop</h3>
							<p class="zip" style="display:none">90660</p>
							<ajaxToolkit:Rating ID="Qingboherating" runat="server" StarCssClass="rating" FilledStarCssClass="fillstar" EmptyStarCssClass="emptystar" WaitingStarCssClass="waitstar"  ReadOnly="True" Enabled="False" CssClass="generalrating"></ajaxToolkit:Rating>
							<div style="margin-top:50px">
								<a href="shop/demo.aspx" class="btn btn-primary">Enter</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
					<div class="thumbnail">
						<img src="/img/-blank.png" alt=""/>
						<div class="caption">
							<h3 class="name">Example 2</h3>
							<p class="zip" style="display:none">90223</p>
							<ajaxToolkit:Rating ID="Rating1" runat="server" StarCssClass="rating" FilledStarCssClass="fillstar" EmptyStarCssClass="emptystar" WaitingStarCssClass="waitstar"  ReadOnly="True" Enabled="False" CssClass="generalrating"></ajaxToolkit:Rating>
							<div style="margin-top:50px">
								<a href="#" class="btn btn-primary">Enter</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
					<div class="thumbnail">
						<img src="/img/-blank.png" alt=""/>
						<div class="caption">
							<h3 class="name">Feature Label</h3>
							<p class="zip" style="display:none">90111</p>
							<ajaxToolkit:Rating ID="Rating2" runat="server" StarCssClass="rating" FilledStarCssClass="fillstar" EmptyStarCssClass="emptystar" WaitingStarCssClass="waitstar"  ReadOnly="True" Enabled="False" CssClass="generalrating"></ajaxToolkit:Rating>
							<div style="margin-top:50px">
								<a href="#" class="btn btn-primary">Enter</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
					<div class="thumbnail">
						<img src="/img/-blank.png" alt=""/>
						<div class="caption">
							<h3 class="name">Feature Label</h3>
							<p class="zip" style="display:none">92334</p>
							<ajaxToolkit:Rating ID="Rating3" runat="server" StarCssClass="rating" FilledStarCssClass="fillstar" EmptyStarCssClass="emptystar" WaitingStarCssClass="waitstar"  ReadOnly="True" Enabled="False" CssClass="generalrating"></ajaxToolkit:Rating>
							<div style="margin-top:50px">
								<a href="#" class="btn btn-primary">Enter</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
					<div class="thumbnail">
						<img src="/img/-blank.png" alt=""/>
						<div class="caption">
							<h3>Feature Label</h3>
							<ajaxToolkit:Rating ID="Rating4" runat="server" StarCssClass="rating" FilledStarCssClass="fillstar" EmptyStarCssClass="emptystar" WaitingStarCssClass="waitstar"  ReadOnly="True" Enabled="False" CssClass="generalrating"></ajaxToolkit:Rating>
							<div style="margin-top:50px">
								<a href="#" class="btn btn-primary">Enter</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--./users-->
		<script src="http://listjs.com/no-cdn/list.js"></script>
		<script>
		    var options = {
		        valueNames: [
                    'zip'
		        ]
		    };
		    var userList = new List('users', options);
		    //@ sourceURL=pen.js
    </script>
	</ContentTemplate>
</asp:UpdatePanel>undefined</asp:Content>

