<%@ Page Title="" Language="C#" Culture="zh-cn" MasterPageFile="~/shop/ShopMasterPage.master" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="shop_demo" %><%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<link href="css/bootstrap-combined.min.css" rel="stylesheet" />
	<link href="css/styles.css" rel="stylesheet" />
	<script src="http://maps.google.com/maps/api/js?libraries=adsense&amp;sensor=false"></script>
	<script src="//www.nicklitten.com/assets/js/map.js"></script>
	<script src="js/modernizr.js"></script>
	<script>
	    function initialize() {

	        var myLatlng = new google.maps.LatLng(33.9843004, -118.0964264, 17);

	        var mapOptions = {

	            zoom: 12,

	            center: myLatlng,

	            mapTypeId: google.maps.MapTypeId.ROADMAP,

	            mapTypeControl: 0

	        }

	        var map = new google.maps.Map(document.getElementById('map'), mapOptions);

	        var marker = new google.maps.Marker({

	            position: myLatlng,

	            map: map,

	            title: 'Location'

	        });

	    }

	    google.maps.event.addDomListener(window, 'load', initialize);


    </script>
	<script type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<div class="row">
				<div class="col-lg-12" style="height:30px;margin:20px 0 0 0;">
					<img src="../cn/img/logo-qing.png" style="height:30px;width:30px; margin-bottom:8px;"/>
					<asp:Label ID="lblTitle" runat="server"  CssClass="title"></asp:Label>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12" style="margin:0 0 20px 35px;">
					<asp:Label ID="lblSubtitle" runat="server"  CssClass="subtitle"></asp:Label>
					<a href="tel:8476608104" style="margin-left:8px; color:#4ACCC2">
						<asp:Label ID="lblTel" runat="server" ></asp:Label>
					</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<img src="img/c700x420.jpg" class="titleimage" />
				</div>
				<div class="col-md-4">
					<div id="map"></div>
					<div style="text-align:center">
						<asp:Button ID="btnBuy" runat="server" Text="Make Appointment" cssClass="btnBuy" OnClick="btnBuy_Click"/>
					</div>
				</div>
			</div>
			<!--./row-->
			<hr />
			<div class="row">
				<div class="col-lg-12" >
					<div class="panel panel-default">
						<div class="panel-heading" style="line-height: 1.2em;height: 40px;padding: 12px;">
							<div class="pull-left">
								<i class="fa fa-plus-circle" style="color:#ff9a16;"></i>&nbsp; Introduction
							</div>
						</div>
						<div class="panel-body">
							<div class="col-lg-12">
								<asp:Label ID="lblIntro" runat="server" CssClass="main-intro"></asp:Label>
								<asp:TextBox ID="txtIntro" runat="server" Visible="False" TextMode="MultiLine" CssClass="col-lg-12 col-md-12 col-xs-12 col-sm-12" Height="150px"></asp:TextBox>
								<br />
								<asp:Button ID="btnIntroEdit" runat="server" Text="Edit" CausesValidation="False" OnClick="btnIntroEdit_Click" CssClass="btnEdit" Visible="False" />
								<asp:Button ID="btnIntroSubmit" runat="server" Text="Confirm" OnClick="btnIntroSubmit_Click" CausesValidation="False" Visible="False" CssClass="btnEdit"/>
							</div>
						</div>
					</div>
				</div>
				<!--./col-lo-12-->
			</div>
			<div class="row">
				<div class="col-lg-12" >
					<div class="panel panel-default">
						<div class="panel-heading" style="line-height: 1.2em;height: 40px;padding: 12px;">
							<div class="pull-left">
								<i class="fa fa-plus-circle" style="color:#ff9a16;"></i>&nbsp; Details
							</div>
						</div>
						<div class="panel-body">
							<div id="myCarousel" class="carousel slide" data-interval="false">
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0"  class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
								</ol>
								<!-- Carousel items -->
								<div class="carousel-inner">
									<div class="item active">
										<div class="row-fluid" style="margin-top:20px;">
											<div class="span3">
												<img src="img/thumbnail1.jpg" alt="Image" style="max-width:100%;height:auto;" />
											</div>
											<div class="span3">
												<img src="img/thumbnail2.jpg" alt="Image" style="max-width:100%;" />
											</div>
											<div class="span3">
												<img src="img/thumbnail3.jpg" alt="Image" style="max-width:100%;" />
											</div>
											<div class="span3">
												<img src="img/thumbnail4.jpg" alt="Image" style="max-width:100%;" />
											</div>
										</div>
										<!--/row-fluid-->
									</div>
									<!--/item-->
									<div class="item">
										<div class="row-fluid" style="margin-top:20px;">
											<div class="span3">
												<img src="img/thumbnail5.jpg" alt="Image" style="max-width:100%;" />
											</div>
											<div class="span3">
												<img src="img/thumbnail6.jpg" alt="Image" style="max-width:100%;" />
											</div>
											<div class="span3">
												<img src="img/thumbnail7.jpg" alt="Image" style="max-width:100%;" />
											</div>
											<div class="span3">
												<img src="img/thumbnail8.jpg" alt="Image" style="max-width:100%;" />
											</div>
										</div>
										<!--/row-fluid-->
									</div>
									<!--/item-->
								</div>
								<!--/carousel-inner-->
								<a class="left carousel-control" href="#myCarousel" data-slide="prev" style="background:none">
									<span class='glyphicon glyphicon-chevron-left' style="left:20px;color:#4ACCC2;"></span>
								</a>
								<a class="right carousel-control" href="#myCarousel" data-slide="next" style="background:none">
									<span class='glyphicon glyphicon-chevron-right' style="right:20px; color:#4ACCC2"></span>
								</a>
							</div>
							<!--/myCarousel-->
							<div class="row">
								<ul class="ul-intro">
									<li class="col-xs-6  col-sm-3">中医针灸</li>
									<li class="col-xs-6  col-sm-3">中医推拿</li>
									<li class="col-xs-6  col-sm-3">中医减肥</li>
									<li class="col-xs-6  col-sm-3">中医养生</li>
									<li class="col-xs-6  col-sm-3">运动损伤</li>
									<li class="col-xs-6  col-sm-3">坐骨神经痛</li>
									<li class="col-xs-6  col-sm-3">中风瘫痪</li>
									<li class="col-xs-6  col-sm-3">花粉过敏</li>
									<li class="col-xs-6  col-sm-3">男科疾病</li>
									<li class="col-xs-6  col-sm-3">妇科疾病</li>
									<li class="col-xs-6  col-sm-3">中医戒烟</li>
									<li class="col-xs-6  col-sm-3">气功点穴</li>
									<li class="col-xs-6  col-sm-3">康复保健</li>
								</ul>
							</div>
							<!--./row-->
							<div class="row"></div>
						</div>
					</div>
				</div>
				<!--./col-lo-12-->
			</div>
			<div class="row">
				<div class="col-lg-12" >
					<div class="panel panel-default">
						<div class="panel-heading" style="line-height: 1.2em;height: 40px;padding: 12px;">
							<div class="pull-left">
								<i class="fa fa-plus-circle" style="color:#ff9a16;"></i>&nbsp; Expert
							</div>
						</div>
						<div class="panel-body">
							<div class="col-md-4" style="text-align:center;">
								<img src="img/placeholdr.jpg" style="width:auto;height:auto;max-width:100%;"/>
							</div>
							<div class="col-md-8">
								<p style="line-height:2em;margin-top:5%;">
									<span style="color:#4ACCC2; font-weight:bolder;">Name：</span>Jackie
								</p>
								<p style="line-height:2em;">
									<span style="color:#4ACCC2; font-weight:bolder;">Introduction：</span>Primis etiam pede fringilla penatibus potenti Dis odio arcu volutpat iaculis pulvinar viverra malesuada id enim scelerisque. Euismod ipsum elit per et fringilla aliquam posuere vel feugiat blandit et feugiat odio dis porttitor turpis.

Porttitor class elementum. Non placerat consectetuer magnis aenean varius nostra augue nec, sed dictum hac fringilla ornare malesuada luctus fames quis euismod sollicitudin auctor dui quis leo etiam pretium adipiscing nullam nisi sagittis mauris. Euismod amet sociosqu curabitur metus felis nisi.

Aenean interdum nonummy commodo tellus suscipit felis, pulvinar integer mi id quis ac est magna duis augue congue dolor amet tempor sollicitudin sem justo gravida.
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--./col-lo-12-->
			</div>
			<div class="row">
				<div class="col-lg-12" >
					<div class="panel panel-default">
						<div class="panel-heading" style="line-height: 1.2em;height: 40px;padding: 12px;">
							<div class="pull-left">
								<i class="fa fa-plus-circle" style="color:#ff9a16;"></i>&nbsp; Review
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12 col-md-3">
									<ajaxToolkit:Rating ID="Rating1" runat="server" StarCssClass="rating" FilledStarCssClass="fillstar" EmptyStarCssClass="emptystar" WaitingStarCssClass="waitstar"  OnChanged="Rating1_Changed" AutoPostBack="True"></ajaxToolkit:Rating>
								</div>
								<div class="col-xs-12 col-md-9">
									<asp:Label ID="lblRatingmsg" runat="server" CssClass="ratingmsg"></asp:Label>
								</div>
							</div>
							<!--./row-->
							<div class="row">
								<div class="col-xs-12 col-md-3"></div>
								<div class="col-xs-12 col-md-9">
									<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="col-lg-12" BackColor="#FDF7F3">
										<AlternatingRowStyle BackColor="#FDF7F3" />
										<Columns>
											<asp:TemplateField  SortExpression="Qingbohe_ReviewUser" HeaderText=" Comments：">
												<ItemTemplate>
													<span style="margin-top:5%;margin-bottom:5%;">
														<span style="width:40%; float:left;margin-left:1%;">User：
															<asp:Label ID="Label1" runat="server" Text='<%# Bind("Qingbohe_ReviewUser") %>'>
															</asp:Label>
														</span>
														<span style="width:50%;float:right;font-size:1em;color:#4ACCC2;font-style:italic;text-align:right;margin-right:1%;">
															<asp:Label ID="Label2" runat="server" Text='<%# Bind("Qingbohe_ReviewDate") %>'>
															</asp:Label>
														</span>
													</span>
													<br />
													<span class="col-xs-1">
														<span style="font-size:2em;color:#808080;clear:both;padding-top:-5%;">
															<i class="fa fa-quote-left"></i>
														</span>
													</span>
													<span class="col-xs-10" style="padding-top:2%;text-align:center;">
														<asp:Label ID="Label3" runat="server" Text='<%# Bind("Qingbohe_ReviewContent") %>'>
														</asp:Label>
													</span>
												</span>
												<span class="col-xs-1">
													<span style="font-size:2em;color:#808080;clear:both;padding-top:-5%;">
														<i class="fa fa-quote-right"></i>
													</span>
												</span>
											</ItemTemplate>
										</asp:TemplateField>
									</Columns>
									<EditRowStyle BackColor="#7C6F57" />
									<FooterStyle BackColor="#4ACCC2" Font-Bold="True" ForeColor="White" />
									<HeaderStyle BackColor="#4ACCC2" Font-Bold="True" ForeColor="White" />
									<PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
									<RowStyle BackColor="#E3EAEB" />
									<SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
									<SortedAscendingCellStyle BackColor="#F8FAFA" />
									<SortedAscendingHeaderStyle BackColor="#246B61" />
									<SortedDescendingCellStyle BackColor="#D4DFE1" />
									<SortedDescendingHeaderStyle BackColor="#15524A" />
								</asp:GridView>
							</div>
						</div>
						<!--./row-->
						<br />
						<asp:Panel ID="pnlReview" runat="server" Visible="False">
							<div class="col-md-3 hidden-xs"></div>
							<div class="col-xs-12 col-md-9">
								<asp:TextBox runat="server" TextMode="MultiLine" ID="txtReview" CssClass="review"></asp:TextBox>
								<br />
								<asp:Button ID="btnReviewSubmit" runat="server" Text="Submit" CssClass="btnSubmit" OnClick="btnReviewSubmit_Click" />
							</div>
						</asp:Panel>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Qingbohe_Demo_UserReview] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Qingbohe_Demo_UserReview] ([Qingbohe_ReviewUser], [Qingbohe_ReviewContent], [Qingbohe_ReviewDate]) VALUES (@Qingbohe_ReviewUser, @Qingbohe_ReviewContent, @Qingbohe_ReviewDate)" SelectCommand="SELECT * FROM [Qingbohe_Demo_UserReview]" UpdateCommand="UPDATE [Qingbohe_Demo_UserReview] SET [Qingbohe_ReviewUser] = @Qingbohe_ReviewUser, [Qingbohe_ReviewContent] = @Qingbohe_ReviewContent, [Qingbohe_ReviewDate] = @Qingbohe_ReviewDate WHERE [Id] = @Id">
							<DeleteParameters>
								<asp:Parameter Name="Id" Type="Int32" />
							</DeleteParameters>
							<InsertParameters>
								<asp:Parameter Name="Qingbohe_ReviewUser" Type="String" />
								<asp:Parameter Name="Qingbohe_ReviewContent" Type="String" />
								<asp:Parameter DbType="DateTime2" Name="Qingbohe_ReviewDate" />
							</InsertParameters>
							<UpdateParameters>
								<asp:Parameter Name="Qingbohe_ReviewUser" Type="String" />
								<asp:Parameter Name="Qingbohe_ReviewContent" Type="String" />
								<asp:Parameter DbType="DateTime2" Name="Qingbohe_ReviewDate" />
								<asp:Parameter Name="Id" Type="Int32" />
							</UpdateParameters>
						</asp:SqlDataSource>
					</div>
					<!--./panel body-->
				</div>
			</div>
		</div>
	</div>
	<!--./col-lo-12-->
</div>
<asp:Panel ID="pnlMask" runat="server" Visible="false" CssClass="mask"></asp:Panel>
<asp:Panel ID="pnlBombBox" runat="server" Visible="false" CssClass="bomb_box">
	<asp:Button ID="btnClosebomp" runat="server" Text="X" OnClick="btnClosebomp_Click" CssClass="close" />
	<div style="text-align: left; margin:10px 5px;">
		<asp:Label ID="lblCalendar" runat="server" Text="Select Date" CssClass="lblCalendar"></asp:Label>
	</div>
	<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" Font-Names="YouYuan" Font-Size="12pt" ForeColor="#FF6600" Height="200px" Width="100%" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" OnSelectionChanged="Calendar1_SelectionChanged">
		<DayHeaderStyle ForeColor="#336666" Height="1px" BackColor="#99CCCC" />
		<NextPrevStyle Font-Size="12pt" ForeColor="#CCCCFF" HorizontalAlign="Left" />
		<OtherMonthDayStyle ForeColor="#999999" />
		<SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
		<SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
		<TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="16pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
		<TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
		<WeekendDayStyle BackColor="#CCCCFF" />
	</asp:Calendar>
	<div style="margin: 10px auto;">
		<asp:Label ID="lblCalendarmsg" runat="server" Text="---------"></asp:Label>
	</div>
	<div style="margin: 10px auto;">
	</asp:Panel>
	<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

