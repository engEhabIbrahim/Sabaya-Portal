<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Sabaya_Portal.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>ChangePassword</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<%--<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>--%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!--===============================================================================================-->

</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('assets/img/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-49">
 تغيير كلمه المرور				</span>
					<div class="wrap-input100 validate-input m-b-23" data-validate = "كلمه المرور الجديده">
						<span class="label-input100"  >كلمه المرور الجديده</span>
                        <asp:TextBox ID="txtNewPassword" runat="server"  class="input100" placeholder="قم بكتابة كلمه المرور الجديده " TextMode="Password"></asp:TextBox>
<%--						<input class="input100" type="text" name="NewPassword" placeholder="قم بكتابة كلمه المرور الجديده ">--%>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                    
					<div class="wrap-input100 validate-input m-b-23" data-validate = "إعاده إدخال كلمه المرور">
						<span class="label-input100">إعاده إدخال كلمه المرور</span>
                        <asp:TextBox ID="txtConfirmNewPassword" class="input100" runat="server" placeholder="قم بكتابة كلمه المرور الجديده " TextMode="Password"></asp:TextBox>
<%--						<input class="input100" type="text" name="ConfirmNewPassword" placeholder="قم بكتابة كلمه المرور الجديده ">--%>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
                          <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
                ErrorMessage="كلمتا السر لا تتطابقان "
                ControlToValidate="txtConfirmNewPassword" ForeColor="Red" 
                ControlToCompare="txtNewPassword"
                Display="Dynamic" Type="String" Operator="Equal" Text="*">
            </asp:CompareValidator>
					</div>
					

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                            	<button id="btnsavenewpass" runat="server"  onserverclick="btnsavenewpass_Click"  class="login100-form-btn">
								حفظ
							</button>
                            
<%--                            <asp:Button ID="btnsavenewpass" runat="server"  Text="حفظ" OnClick="btnsavenewpass_Click" class="login100-form-btn" />--%>
						<%--	<button class="login100-form-btn">
								
							</button>--%>
               
						</div>
                                         <asp:ValidationSummary ID="ValidationSummary1" 
            ForeColor="Red" runat="server" />
                             <asp:Label ID="lblMessage" runat="server">
            </asp:Label>
					</div>

                    
              
                           

                           
				
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="assets/js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>
