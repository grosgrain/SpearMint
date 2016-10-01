<%@ Page Title="" Language="C#" MasterPageFile="~/cn/CnMasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="cn_register" %><%@ Import Namespace="System.Data.SqlClient" %><%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- CSS -->
	<link rel="stylesheet" href="assets/css/style.css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/heroic-features.css" rel="stylesheet" />
	<link rel="stylesheet" href="assets/css/form-elements.css"/>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
	    function myTextChanged() {

	        document.getElementById('<%=Button1.ClientID%>').click(); //inpute file

        }

	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:ScriptManager ID="ScriptManager1" runat="server" />
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<div class="col-sm-6 col-sm-offset-3 form-box">
				<div class="form-top">
					<div class="form-top-left">
						<h3 style="color:#ff9a16;">Register</h3>
					</div>
					<div class="form-top-right">
						<i class="fa fa-pencil-square-o"></i>
					</div>
					<div id="registerform">
						<div class="form-group">
							<div class="registerformlabel">
								<asp:Label ID="lblUser" runat="server" Text="*User Name：" Font-Bold="True" ></asp:Label>
							</div>
							<asp:TextBox ID="txtUser" runat="server"  CssClass="form-control" ></asp:TextBox>
							<asp:Label ID="lblUsermsg" runat="server" ForeColor="#0099FF"></asp:Label>
							<asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click" CssClass="sr-only" CausesValidation="false" />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a username!" ControlToValidate="txtUser" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Username should only contains letters, numbers, underline and dash!" ControlToValidate="txtUser" ValidationExpression="^[\u4e00-\u9fa5A-Za-z0-9-_]*$" ForeColor="#FF5050"></asp:RegularExpressionValidator>
						</div>
						<div class="form-group">
							<div class="registerformlabel">
								<asp:Label ID="lblPassword" runat="server" Text="*Password：" CssClass="registerformlabel" Font-Bold="True"></asp:Label>
							</div>
							<asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a password" ControlToValidate="txtPassword" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<br />
							<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Your password must have 8 - 20 characters, including at least a number and a letter. Symbols are not allowed." ControlToValidate="txtPassword" ForeColor="#FF5050" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,20})$"></asp:RegularExpressionValidator>
						</div>
						<div class="form-group">
							<div class="registerformlabel">
								<asp:Label ID="lblPassword2" runat="server" Text="*Retype Password：" CssClass="registerformlabel" Font-Bold="True"></asp:Label>
							</div>
							<asp:TextBox ID="txtPassword2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please reenter your password" ControlToValidate="txtPassword2" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<br />
							<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The password and the confirmation you typed do not match." ControlToValidate="txtPassword2" ControlToCompare="txtPassword" ForeColor="#FF5050"></asp:CompareValidator>
						</div>
						<div class="form-group">
							<div class="registerformlabel">
								<asp:Label ID="lblAddress" runat="server" Text="*Address：" CssClass="registerformlabel" Font-Bold="True"></asp:Label>
							</div>
							<asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your address" ControlToValidate="txtAddress" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<br />
						</div>
						<div class="form-group">
							<div CssClass="registerformlabel">
								<asp:Label ID="lblCity" runat="server" Text="*City：" CssClass="registerformlabel" Font-Bold="True"></asp:Label>
							</div>
							<asp:TextBox ID="txtCity" runat="server" CssClass="form-control" ></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your city" ControlToValidate="txtCity" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<br />
						</div>
						<div class="form-group">
							<div CssClass="registerformlabel">
								<asp:Label ID="Label1" runat="server" Text="*State：" CssClass="registerformlabel" Font-Bold="True"></asp:Label>
							</div>
							<asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Font-Names="Arial">
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
							<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please select a state" ControlToValidate="DropDownList1" InitialValue="0" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<br />
						</div>
						<div class="form-group">
							<div class="registerformlabel">
								<asp:Label ID="lblPhone" runat="server" Text="*Phone：" CssClass="registerformlabel" Font-Bold="True"></asp:Label>
							</div>
							<asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter your phone number" ControlToValidate="txtPhone" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<br />
							<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Wrong phone number format!" ControlToValidate="txtPhone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ForeColor="#FF5050"></asp:RegularExpressionValidator>
						</div>
						<div class="form-group">
							<div class="registerformlabel">
								<asp:Label ID="lblEmail" runat="server" Text="*E-mail：" CssClass="registerformlabel" Font-Names="Arial" Font-Bold="True"></asp:Label>
							</div>
							<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter your E-mail address" ControlToValidate="txtEmail" ForeColor="#FF5050"></asp:RequiredFieldValidator>
							<br />
							<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Wrong email format!" ControlToValidate="txtEmail" ForeColor="#FF5050" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$">
							</asp:RegularExpressionValidator>
						</div>
						<div style="display:inline;">
							<asp:Button runat="server" Text="Submit" CssClass="btnSignin" OnClick="Register_Click"  ID="Register" />
							<asp:Button runat="server" Text="Back" CssClass="btnGoback"  ID="Goback" OnClick="Goback_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Javascript -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<!--[if lt IE 10]>
	<script src="../assets/js/placeholder.js"></script>
	<![endif]-->
    </ContentTemplate>
    
	</asp:UpdatePanel>

</asp:Content>

