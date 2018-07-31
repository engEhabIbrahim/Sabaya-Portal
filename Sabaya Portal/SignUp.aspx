<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Sabaya_Portal.SignUp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>انشاء حساب جديد</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<%--<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>--%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendorSignUp/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendorSignUp/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendorSignUp/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendorSignUp/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendorSignUp/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendorSignUp/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/utilSignUp.css">
	<link rel="stylesheet" type="text/css" href="assets/css/mainSignUp.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #999999;">

	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('assets/img/bg-01SignUp.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-59">
						حساب جديد
					</span>

					<div class="wrap-input100 validate-input" data-validate="يجب ادخال الاسم">
						<span class="label-input100">الاسم الكامل</span>
						<input class="input100" type="text" name="name" placeholder="الاسم ...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "يجب ادخال ايميل صالح: ex@abc.xyz">
						<span class="label-input100">البريد الاكتروني</span>
						<input class="input100" type="text" name="email" placeholder="البريد الالكتروني ...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="يجب ادخال اسم المستخدم">
						<span class="label-input100">اسم المستخدم </span>
						<input class="input100" type="text" name="username" placeholder="اسم المستخدم ...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "يجب ادخال الرقم السري">
						<span class="label-input100">الرقم السري</span>
						<input class="input100" type="text" name="pass" placeholder="*************">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "يجب تاكيد الرقم السري">
						<span class="label-input100">تاكيد الرقم السري</span>
						<input class="input100" type="text" name="repeat-pass" placeholder="*************">
						<span class="focus-input100"></span>
					</div>

                    <div class="wrap-input100 " >
						<span class="label-input100">رقم الجوال</span>
						<input class="input100" type="text" name="Phone" placeholder="اختياري">
						<span class="focus-input100"></span>
					</div>

                    <%--<div class="wrap-input100 " >--%>
						<span class="label-input100">الموقع</span>
                         <select class="form-control"  style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top: 0px; direction:rtl">
                            <option value="Riyad"  >الرياض</option>
                            <option value="Geda" >جدة</option>
                            <option value="Baten" >الباطن</option>
                        </select>
                       
					<%--</div>--%>
                   
 					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									 اوافق علي
									<a href="#" class="txt2 hov1">
										سياية الخصوصية
									</a>
								</span>
							</label>
						</div>


					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								انشاء الحساب
							</button>
						</div>

						<a href="LoginPage.aspx" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							تسجيل الدخول 
							<i class="fa fa-long-arrow-left m-l-5"></i>

							
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

<!--===============================================================================================-->
	<script src="assets/vendorSignUp/jquery/jquery-3.2.1.min.js"></script>
<%--<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<!--===============================================================================================-->
	<script src="assets/vendorSignUp/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendorSignUp/bootstrap/js/popper.js"></script>
	<script src="assets/vendorSignUp/bootstrap/js/bootstrap.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendorSignUp/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendorSignUp/daterangepicker/moment.min.js"></script>
	<script src="assets/vendorSignUp/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendorSignUp/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="assets/js/mainSignUp.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>

<!-- Mirrored from colorlib.com/etc/lf/Login_v13/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 29 Jul 2018 20:52:30 GMT -->
</html>

