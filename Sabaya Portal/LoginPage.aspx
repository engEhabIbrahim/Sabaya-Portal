<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Sabaya_Portal.LoginPage" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<title>تسجيل الدخول</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-signin-client_id" content="919756516055-682kvh760f2firpofek9ekrcqvqb72c3.apps.googleusercontent.com">

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
                         <%--Facebook Login Javascript SDK--%>
   <script>
window.fbAsyncInit = function() {
    // FB JavaScript SDK configuration and setup
    FB.init({
        appId: '252384942242729', // FB App ID
      cookie     : true,  // enable cookies to allow the server to access the session
      xfbml      : true,  // parse social plugins on this page
      version    : 'v2.8' // use graph api version 2.8
    });
    
    // Check whether the user already logged in
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            //display user data
            getFbUserData();
        }
    });
};

// Load the JavaScript SDK asynchronously
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

// Facebook login with JavaScript SDK
function fbLogin() {
    FB.login(function (response) {
        if (response.authResponse) {
            // Get and display the user profile data
            getFbUserData();
        } else {
            document.getElementById('status').innerHTML = 'User cancelled login or did not fully authorize.';
        }
    }, {scope: 'email'});
}

// Fetch the user profile data from facebook
function getFbUserData(){
    FB.api('/me', {locale: 'en_US', fields: 'id,first_name,last_name,email,link,gender,locale,picture'},
    function (response) {
        //document.getElementById('fbLink').setAttribute("onclick","fbLogout()");
        //document.getElementById('fbLink').innerHTML = 'Logout from Facebook';
        document.getElementById('status').innerHTML = ' سيتم تحويلك للصفحة الرئيسية في غضون ثواني ' + response.first_name + '!';
        //document.getElementById('userData').innerHTML = '<p><b>FB ID:</b> '+response.id+'</p><p><b>Name:</b> '+response.first_name+' '+response.last_name+'</p><p><b>Email:</b> '+response.email+'</p><p><b>Gender:</b> '+response.gender+'</p><p><b>Locale:</b> '+response.locale+'</p><p><b>Picture:</b> <img src="'+response.picture.data.url+'"/></p><p><b>FB Profile:</b> <a target="_blank" href="'+response.link+'">click to view profile</a></p>';
        localStorage.setItem('FacebookFullName', response.first_name + ' ' + response.last_name);
        localStorage.setItem('FacebookEmail', response.email);
        localStorage.setItem('FacebookGender', response.gender);
        localStorage.setItem('IsFacebookUser', true);


        FB.Event.subscribe('auth.login', function () {
            window.location.href = 'index.aspx?FullName='+ response.first_name + ' ' + response.last_name+'';
        });



    });
}

// Logout from facebook
function fbLogout() {
    FB.logout(function() {
        document.getElementById('fbLink').setAttribute("onclick","fbLogin()");
        document.getElementById('fbLink').innerHTML = '<img src="fblogin.png"/>';
        document.getElementById('userData').innerHTML = '';
        document.getElementById('status').innerHTML = 'تم تسجيل خروجك بنجاح من فيس بوك';
    });
}
</script>
    <!--===============================================================================================-->
                         <%--Google Login Javascript SDK--%>
 <%--<script>
        function onSuccess(googleUser) {
            var profile = googleUser.getBasicProfile();
            gapi.client.load('plus', 'v1', function () {
                var request = gapi.client.plus.people.get({
                    'userId': 'me'
                });
                //Display the user details
                request.execute(function (resp) {
                    localStorage.setItem('GoogleFullName', resp.displayName);
                    localStorage.setItem('GoogleEmail', resp.emails[0].value);
                    localStorage.setItem('GoogleGender', resp.gender);
                    document.getElementById('status').innerHTML = ' سيتم تحويلك للصفحة الرئيسية في غضون ثواني ' + resp.displayName + '!';
                    window.location.href = 'index.aspx?FullName=' + resp.displayName ;


                });
            });
        }
        function onFailure(error) {
            alert(error);
        }
        function renderButton() {
            gapi.signin2.render('gSignIn', {
                'scope': 'profile email',
                //'width': 240,
                //'height': 50,
                //'longtitle': true,
                //'theme': 'dark',
                'onsuccess': onSuccess,
                'onfailure': onFailure
            });
        }
        window.onbeforeunload = function (e) {
            gapi.auth2.getAuthInstance().signOut();
        };
       //function signOut() {
       //     var auth2 = gapi.auth2.getAuthInstance();
       //     auth2.signOut().then(function () {
       //         $('.userContent').html('');
       //         $('#gSignIn').slideDown('slow');
       //     });
       // }
    </script>--%>
    <script>
        function onLoadGoogleCallback() {
            gapi.load('auth2', function () {
                auth2 = gapi.auth2.init({
                    client_id: '919756516055-682kvh760f2firpofek9ekrcqvqb72c3.apps.googleusercontent.com',
                    cookiepolicy: 'single_host_origin',
                    scope: 'profile'
                });

                auth2.attachClickHandler(element, {},
                  function (googleUser) {
                      localStorage.setItem('GoogleFullName',googleUser.getBasicProfile().getName());
                      localStorage.setItem('GoogleEmail', googleUser.getBasicProfile().getEmail());
                      localStorage.setItem('IsGoogleUser', true);
                      document.getElementById('status').innerHTML = ' سيتم تحويلك للصفحة الرئيسية في غضون ثواني ' + googleUser.getBasicProfile().getName() + '!';
                      window.location.href = 'index.aspx?FullName=' + googleUser.getBasicProfile().getName();

                  }, function (error) {
                      console.log('Sign-in error', error);
                  }
                  );
            });

            element = document.getElementById('gSignIn');
        }
        window.onbeforeunload = function (e) {
            gapi.auth2.getAuthInstance().signOut();
        };

    </script>
</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('assets/img/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-49">
						تسجيل الدخول
					</span>

					<div class="wrap-input100" >
						<span class="label-input100">اسم المستخدم</span>
						<input class="input100" type="text" name="username" placeholder="قم بكتابة اسم المستخدم" runat="server" id="txtUserNameLogin">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                                      ControlToValidate="txtUserNameLogin" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
					</div>

					<div class="wrap-input100" >
						<span class="label-input100">الرقم السري</span>
						<input class="input100" type="password" name="pass" placeholder="الرقم السري" runat="server" id="txtPasswordLogin">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                                      ControlToValidate="txtPasswordLogin" ForeColor="red"
                                      Display="Dynamic" ErrorMessage="مطلوب"  />
					</div>
                    <div class="row">
					<div class="text-right p-t-8 p-b-31">
						<a href="ForgetPassword.aspx">
							نسيت كلمة السر ؟
						</a>
					</div>
                  <div class="text-left p-t-8 p-b-31" >
						<div class="contact100-form-checkbox">
							<label class="label-checkbox100" for="ckb1" >
								<span class="txt1">
									 تذكرني
								</span>
							</label>
                          <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" >

						</div>


					</div>
                        </div>
                    <div class="row">
                        <div id="LoginErrorMessage" runat="server" style="position: relative;bottom: 25px;margin: 0 auto;color: red;">
                        </div>
                    </div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button id="btnLogin" runat="server" onserverclick="btnLogin_Click" class="login100-form-btn" >
								تسجيل الدخول
							</button>
						</div>
					</div>

					<div class="txt1 text-center p-t-54 p-b-20">
						<span>
							أو قم بالدخول عبر
						</span>
					</div>
                    
              
                           

                           
					<div class="flex-c-m">
						<a href="javascript:void(0);" onclick="fbLogin()" id="fbLink" class="login100-social-item bg1">
							<i class="fa fa-facebook"></i>
						</a>

						<%--<a href="#" class="login100-social-item bg2" >
							<i class="fa fa-twitter"></i>
						</a>--%>

						<a href="#" class="login100-social-item bg3" id="gSignIn">
							<i class="fa fa-google"></i>
                            <script src="https://apis.google.com/js/platform.js?onload=onLoadGoogleCallback" async defer></script>
						</a>
					</div>
                    <!-- HTML for render Google Sign-In button -->
<%--                        <div id="gSignIn"></div>--%>
                        <!-- HTML for displaying user details -->
<%--                        <div class="userContent"></div>--%>
                     <!-- Display user profile data -->
                            <%--<div id="userData"></div>--%>
                    
                    <!-- Display login status -->
                            <div id="status"></div>

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							او قم بالتسجيل عبر
						</span>

						<a href="SignUp.aspx" class="txt2">
							اشتراك
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>
    <div>
        <input type="text" id="txtFaceBookFullName" style="display:none" runat="server" />
        <input type="text" id="txtFaceBookEmail" style="display:none" runat="server" />
        <input type="text" id="txtFaceBookGender" style="display:none" runat="server" />
        <input type="text" id="txtFaceBookLocale" style="display:none" runat="server" />

    </div>

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
    <%--<script src="https://apis.google.com/js/client:platform.js?onload=renderButton" async defer></script>--%>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>

<!-- Mirrored from colorlib.com/etc/lf/Login_v4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 29 Jul 2018 20:29:23 GMT -->
</html>

