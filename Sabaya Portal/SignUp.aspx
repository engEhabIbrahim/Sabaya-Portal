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
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
      <script>
          function CheckBoxRequired_ClientValidate(sender, e) {
              e.IsValid = jQuery(".AcceptedAgreement input:checkbox").is(':checked');
          }

          $(document).ready(function () {
              $('#UserImg').on('change', function () {
                  readPath(this);
              });
          });

          function readPath(input) {
              if (input.files && input.files[0]) {
                  var reader = new FileReader();
                  reader.onload = function (e) {
                      $('#Image1').attr('src', e.target.result);
                  }
                  reader.readAsDataURL(input.files[0]);
              }
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
					<span class="login100-form-title p-b-59" style="text-align:center">
						حساب جديد
					</span>
					<div class="wrap-input100 " style="text-align:right" >
						<span class="label-input100">الاسم الكامل</span>
						<input class="input100" type="text" name="name" id="txtFullName" placeholder="الاسم ..." runat="server">
						<span class="focus-input100"></span>
                        <asp:RequiredFieldValidator id="TitleRequiredValidator" runat="server"
                                      ControlToValidate="txtFullName" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
					</div>

					<div class="wrap-input100 " style="text-align:right" >
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

					<div class="wrap-input100 " style="text-align:right" >
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
           
					<div class="wrap-input100 " style="text-align:right" >
                    <span class="label-input100">البلد  </span><br />
                     <asp:DropDownList ID="DropCountry"  class=" form-control  "  runat="server"  OnSelectedIndexChanged ="DropCountry_Changed" style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top:0px; direction:rtl" AutoPostBack = "true"></asp:DropDownList>
                    </div>
                    	<div class="wrap-input100 "  runat="server" id="divgov" style="text-align:right" visible="false">
                                <asp:Repeater ID="rptCustomers" runat="server" OnItemDataBound="OnItemDataBound">

        <ItemTemplate>
          
            
                                  <asp:Label ID="lblGovID" Visible="false" runat="server" Text='<%# Eval("GovID") %>' />
                                <asp:Label ID="lblGOVName" Visible="false" class="label-input100" runat="server" Text='<%# Eval("GovName") %>' />

                    <asp:DropDownList ID="ddlCountries" AppendDataBoundItems="true" DataTextField="CityName"  class=" form-control" style="margin-top:2px; margin-bottom:5px; padding-bottom:0px;padding-top:0px; direction:rtl" 
                  DataValueField="CITYID" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged" >
                    </asp:DropDownList>
           
          
        </ItemTemplate>
      
    </asp:Repeater>
        <asp:Label ID="Label1" runat="server" class="label-input100"  ForeColor="Red" Font-Size="X-Large"  Visible="false"  Text="Label"></asp:Label>
                    </div>
                 <div class="wrap-input100 " runat="server" style="text-align:right" id="divgov2" visible="false">

              <asp:Label ID="Lblcity2" runat="server" Text="المحافظه " class="label-input100"></asp:Label><br />
             <input class="input100" type="text" name="name"  id="TxtGov" placeholder="المحافظه ..." runat="server"/>
</div>
                                        	<div class="wrap-input100 " style="text-align:right"  runat="server" id="divgov3" visible="false">
                                            <span class="label-input100" id="lblselectedgov">المدينه  </span><br />

                                                <asp:DropDownList ID="displayselectedgov" runat="server" class=" form-control" OnSelectedIndexChanged="displayselectedgov_SelectedIndexChanged" style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top:0px; direction:rtl" AutoPostBack = "true" >              

                                                </asp:DropDownList>
                                            
                                                
                                                </div>


					<div class="wrap-input100 " style="text-align:right" >
						<span class="label-input100">الرقم السري</span>
						<input class="input100" type="password" name="pass" id="txtPassword" placeholder="*************" runat="server">
						<span class="focus-input100"></span>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                                      ControlToValidate="txtPassword" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
                        <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtPassword" ID="RegularExpressionValidator2" 
                          ForeColor="red"   ValidationExpression = "^[\s\S]{8,}$" runat="server" ErrorMessage="لا يجب ان يقل الرقم السري عن 8 احرف او ارقام"></asp:RegularExpressionValidator>
					</div>
                  

					<div class="wrap-input100 " style="text-align:right" >
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
					<div class="wrap-input100 " style="text-align:right" >
						<span class="label-input100">إضافه صوره</span><br /><br /> 
                            <asp:FileUpload ID="UserImg" runat="server" /><br /> <span style="color:Green;" class="label-input100">* إختياري </span>

                   <asp:Image ID="Image1"  runat="server"   Height="200" Width="300" />
                            </div>
					<div class="wrap-input100 " style="text-align:right" >
						<span class="label-input100">سيره ذاتيه</span><span style="color:Green;" class="label-input100">* إختياري </span><br /><br />
                        <asp:TextBox ID="txtbio" class="input100" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>

                    
                        <div class="container">
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    ?
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal" style="text-align:right" >
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">  مرحبا بك/ي في صبايا الجيل الرياضي</h4>
          <button type="button" class="close" data-dismiss="modal" style="float:left;">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         <span style="font-size:larger;color:red;">مشجعين</span><br />
        <span style="font-size:medium;">تشجيع-معرفه كل جديد-الانضمام والمشاركه بالفعاليات الرياضيه</span><br />

         <span style="font-size:larger;color:red;" >مستثمرين</span><br />
         <span style="font-size:medium;">تشجيع-معرفه كل جديد-الانضمام والمشاركه بالفعاليات الرياضيه - إضافه الاعلانات لمنشآتكم بالدعم والرعايه (مباشره مع الفرق والاعضاء ) لإقامه الفعاليات والبطولات</span><br />

        <span style="font-size:larger;color:red;">فريق -أعضاء -لاعبات </span><br />
           <span style="font-size:medium;">هذا الخيار فقط للفرق واللاعبات الفرديه وعند التسجيل يلزم مراسلتنا لتفعيل العضويه</span><br />



        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
                            </div>

						        <div class="wrap-input100 " style="text-align:right" >

						<span class="label-input100" >تسجيل ك </span>
     




<asp:RadioButtonList id="RBUsertype" class="label-input100" runat="server">
            <asp:ListItem>مشجعة</asp:ListItem>
            <asp:ListItem>مشجع </asp:ListItem>
            <asp:ListItem>منتميه إلي-الفرق والنوادي الرياضية</asp:ListItem>
            <asp:ListItem>منتمي إلي-الفرق والنوادي الرياضية</asp:ListItem>
            <asp:ListItem>سيدة اعمال - مستثمرة</asp:ListItem>
            <asp:ListItem>رجل اعمال - مستثمر</asp:ListItem>
         </asp:RadioButtonList>
                                                </div>
<%--                         <select class="form-control" id="DrpUserType" name="LocationSelect"  style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top: 0px; direction:rtl" runat="server">
                            <option value="مشجعة"  > مشجعة</option>
                              <option value="مشجع"  >مشجع </option>
                            <option value="منتميه إلي-الفرق والنوادي الرياضية" >منتميه إلي-الفرق والنوادي الرياضية</option>
                             <option value="منتمي إلي-الفرق والنوادي الرياضية" >منتمي إلي-الفرق والنوادي الرياضية</option>
                          <option value="سيدة اعمال- مستثمرة" >سيدة اعمال - مستثمرة</option>
                             <option value="رجل اعمال- مستثمر" >رجل اعمال - مستثمر</option>

                        </select>--%>
                       
					<%--</div>--%>
                   
 					<div class="flex-m w-full p-b-33" style="text-align:right">
						<div class="contact100-form-checkbox">
                            <label class="label-checkbox100" for="ckb1" style="display:inline;">
								<span class="txt1" >
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
	    function gtag() { dataLayer.push(arguments); }
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
                            alert(JSON.stringify(err));

                        }
                    });
                }
            });

        });
                </script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>

<!-- Mirrored from colorlib.com/etc/lf/Login_v13/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 29 Jul 2018 20:52:30 GMT -->
</html>

