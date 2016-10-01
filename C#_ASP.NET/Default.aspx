<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="row">
		<div class="col-md-3 hidden-xs">
			<div class="list-group" style="height:300px;">
				<a href="#" class="list-group-item asideitem" id="asideitem1">Shops				    
					<ul>
						<li>
							<div>Los Angeles</div>
						</li>
						<li>
							<div>Chicago</div>
						</li>
						<li>
							<div>New York</div>
						</li>
					</ul>
				</a>
				<a href="#" class="list-group-item asideitem" id="asideitem2">Products					
					<ul>
						<li>
							<div>Product A</div>
						</li>
						<li>
							<div>Product B</div>
						</li>
						<li>
							<div>Product C</div>
						</li>
					</ul>
				</a>
				<a href="#" class="list-group-item asideitem" id="asideitem3">Services					
					<ul>
						<li>
							<div>Service A</div>
						</li>
						<li>
							<div>Service B</div>
						</li>
					</ul>
				</a>
			</div>
		</div>
		<div class="col-md-9 hidden-xs">
			<div class="row carousel-holder">
				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img class="slide-image" src="http://placehold.it/800x300" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="http://placehold.it/800x300" alt="">
									</div>
									<div class="item">
										<img class="slide-image" src="http://placehold.it/800x300" alt="">
									</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>
			</div>
			<hr class="hidden-xs"/ >
		</div>
    </div>
	<div class="row">
		<div class="col-lg-12" style="height:50px;">
			<h3 style="margin-bottom:20px; color:#4ACCC2; font-weight:bolder;">
				<i class="fa fa-plus-circle" style="color:#ff9a16;"></i>&nbsp;Most Popular Shop
			</h3>
		</div>
	</div>
	<div class="row" id="city">
		<ul>
			<li id="tag1" class="testClass" style="cursor:pointer;" >Los Angeles</li>
			<li id="tag2" style="cursor:pointer;">Chicago</li>
			<li id="tag3" style="cursor:pointer;">&nbsp;New York&nbsp;</li>
		</ul>
	</div>
	<div id="display1">
		<div class="row text-center">
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt=""/>
					<div class="caption">
						<h3>Feature Label</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<p>
							<a href="#" class="btn btn-primary">Enter</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt=""/>
					<div class="caption">
						<h3>Feature Label</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<p>
							<a href="#" class="btn btn-primary">Enter</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt=""/>
					<div class="caption">
						<h3>Feature Label</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<p>
							<a href="#" class="btn btn-primary">Enter</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt=""/>
					<div class="caption">
						<h3>Feature Label</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<p>
							<a href="#" class="btn btn-primary">Enter</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="display2" style="display:none;">
		<div class="row text-center">
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
		</div>
    </div>
	<div id="display3" style="display:none;">
		<div class="row text-center">
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
			<div class="col-sm-3 col-lg-3 col-md-3 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
						<div class="caption">
							<h3>Feature Label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<p>
								<a href="#" class="btn btn-primary">Enter</a>
							</p>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12" style="height:50px;">
			<h3 style="margin-bottom:20px; color:#4ACCC2; font-weight:bolder;">
				<i class="fa fa-plus-circle" style="color:#ff9a16;"></i>&nbsp;Most Popular Products
			</h3>
		</div>
	</div>
	<div class="row" style="margin-top:20px; margin-bottom:0; text-align:center;">
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
					</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
					</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
					</div>
				</a>
		</div>
	</div>
	<div class="row" style="margin-bottom:0; text-align:center;">
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
	</div>
	<div class="row" style="text-align:center;">
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
		<div class="col-sm-4 col-md-2 drug" >
			<a href="#">
				<div class="thumbnail" style="margin:0;padding:0; border-radius:0; ">
					<img src="http://placehold.it/800x600" alt="">
						<div class="caption" style="margin:0;">
							<h5>Feature Label</h5>
						</div>
				</div>
				</a>
		</div>
	</div>
	<hr />
</asp:Content>

