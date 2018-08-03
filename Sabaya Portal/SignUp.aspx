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
    <script>
        function CheckBoxRequired_ClientValidate(sender, e) {
            e.IsValid = jQuery(".AcceptedAgreement input:checkbox").is(':checked');
        }
    </script>
    <!--========================================== check if user name exists =====================================================-->
            
    <style>
        #MyCheckBox{
            float:left;
        }
    </style>
</head>
<body style="background-color: #999999;">
                   

	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('assets/img/bg-01SignUp.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-59">
						حساب جديد
					</span>
					<div class="wrap-input100 " >
						<span class="label-input100">الاسم الكامل</span>
						<input class="input100" type="text" name="name" id="txtFullName" placeholder="الاسم ..." runat="server">
						<span class="focus-input100"></span>
                        <asp:RequiredFieldValidator id="TitleRequiredValidator" runat="server"
                                      ControlToValidate="txtFullName" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
					</div>

					<div class="wrap-input100 " >
						<span class="label-input100">البريد الاكتروني</span>
						<input class="input100" type="text" name="email" id="txtEmail" placeholder="البريد الالكتروني ..." runat="server">
						<span class="focus-input100"></span>
                          <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                                      ControlToValidate="txtEmail" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="البريد الالكتروني غير صالح"
                            ControlToValidate="txtEmail" ForeColor="red"
                                      Display="Dynamic"
                                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                        </asp:RegularExpressionValidator>
					</div>

					<div class="wrap-input100 " >
						<span class="label-input100">اسم المستخدم </span>
						<input class="input100" type="text" name="username" id="txtUserName" placeholder="اسم المستخدم ..." runat="server">
						<span class="focus-input100"></span>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                                      ControlToValidate="txtUserName" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
                        <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtUserName" ID="RegularExpressionValidator3" 
                            ValidationExpression = "^[\s\S]{3,}$" runat="server"
                             ForeColor="red" ErrorMessage="لا يجب ان يقل اسم المستخدم عن 3 احرف"></asp:RegularExpressionValidator>
                        <div id="test"></div>
					</div>

					<div class="wrap-input100 " >
						<span class="label-input100">الرقم السري</span>
						<input class="input100" type="password" name="pass" id="txtPassword" placeholder="*************" runat="server">
						<span class="focus-input100"></span>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                                      ControlToValidate="txtPassword" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
                        <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtPassword" ID="RegularExpressionValidator2" 
                          ForeColor="red"   ValidationExpression = "^[\s\S]{8,}$" runat="server" ErrorMessage="لا يجب ان يقل الرقم السري عن 8 احرف او ارقام"></asp:RegularExpressionValidator>
					</div>
                  

					<div class="wrap-input100 " >
						<span class="label-input100">تاكيد الرقم السري</span>
						<input class="input100" type="password" name="repeat-pass" id="txtConfirmPassword" placeholder="*************" runat="server">
						<span class="focus-input100"></span>
                          <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                                      ControlToValidate="txtConfirmPassword" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
                        
                        <asp:CompareValidator ID="comparevalidateor" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                            ForeColor="red"
                                      Display="Dynamic" ErrorMessage="الرقم السري غير متطابق"></asp:CompareValidator>
                        
					</div>

                   <%-- <div class="wrap-input100 " >
						<span class="label-input100">رقم الجوال</span>
						<input class="input100" type="text" name="Phone" id="txtPhoneNumber" placeholder="اختياري" runat="server">
						<span class="focus-input100"></span>
					</div>--%>

                    <%--<div class="wrap-input100 " >--%>
						<span class="label-input100">تسجيل ك </span>
                         <select class="form-control" id="DrpUserType" name="LocationSelect"  style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top: 0px; direction:rtl" runat="server">
                            <option value="مشجع او مشجعة"  >مشجع او مشجعة</option>
                            <option value="المنتميات-الفرق والنوادي الرياضية" >المنتميات-الفرق والنوادي الرياضية</option>
                            <option value="سيدة اعمال - مستثمرة" >سيدة اعمال - مستشمرة</option>
                        </select>
                       
					<%--</div>--%>
                   
 					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<%--<input class="input-checkbox100" id="CheckboxPrivacy" type="checkbox" name="remember-me" runat="server" >--%>
                            <label class="label-checkbox100" for="ckb1" style="display:inline;">
								<span class="txt1">
									 اوافق علي
									<a href="#" class="txt2 hov1">
										الشروط والاحكام
									</a>
								</span>
							</label>
                          <asp:CheckBox runat="server" ID="MyCheckBox" CssClass="AcceptedAgreement"  />
                            <br />
                            <asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true"
                            OnServerValidate="CheckBoxRequired_ServerValidate" ForeColor="red"
                            ClientValidationFunction="CheckBoxRequired_ClientValidate">عليك الموافقة علي الشروط والاحكام من اجل الاستكمال</asp:CustomValidator>
                            
						</div>


					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                           
							<button id="btnSignUp" runat="server" OnClientClick="return check()" onserverclick="btnSignUp_Click"  class="login100-form-btn">
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
    <script>
            $(document).ready(function () {
                $('#txtUserName').keyup(function () {
                var userName = $(this).val();
                if (userName.length >= 3) {
                    $.ajax({
                        url: 'RegistrationService.asmx/UserNameExists',
                        method: 'post',
                        data: { userName: userName },
                        dataType: 'json',
                        success: function (data) {
                            var divElement = $('#test');
                            if (data.UserNameInUse) {
                                divElement.text(data.UserName + ' مستخدم بالفعل');
                                divElement.css('color', 'red');
                            }
                            else {
                                divElement.text(data.UserName + ' متاح')
                                divElement.css('color', 'green');
                            }
                        },
                        error: function (err) {
                            alert(err);
                        }
                    });
                } 
                });
            
            });
                </script>
</body>

<!-- Mirrored from colorlib.com/etc/lf/Login_v13/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 29 Jul 2018 20:52:30 GMT -->
</html>

