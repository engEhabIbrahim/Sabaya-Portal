<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Sabaya_Portal.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="keywords" content="Boostify, Responsive, Business Template, Bootstrap 4,"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon" />
    <title>Sabaya Portal</title>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/responsive.css"/>
    <link rel="stylesheet" href="assets/css/font.css" />
 
</head>
<body>
              <!--===// Start:  Preloader
    =================================-->

    <div class="preloader">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    
    <!--===// End: Preloader
    =================================-->
          
    <!--===// Start:  Header Top
    =================================-->
    
    <section id="header-top">
        <div class="container">

            <div class="row">
                <div class="col-lg-6 col-md-6 text-md-left text-center mb-lg-0 mb-1">
                    <ul style="float:right; direction:ltr">
                        <li><i class="fas fa-phone mr-2"></i>Call: 0 (123) 456 7891</li>
                        <li><i class="fas fa-envelope mr-2"></i>info@example.com</li>
                    </ul>
                </div>

                <div class="col-lg-6 col-md-6 text-center text-md-right">
                    <ul class="header-social d-inline-block" style="float:left;direction:ltr">
                        <li><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                        <li><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                        <li><a href="#"><i class="icofont icofont-social-linkedin"></i></a></li>
                        <li><a href="#"><i class="icofont icofont-social-tumblr"></i></a></li>
                    </ul>                    
                    <!--<a href="#" class="book-now"><i class="icofont icofont-ebook mr-2"></i>Book Now</a>-->
                </div>
            </div>

        </div>
    </section>

    <!--===// End:  Header Top
    =================================-->
        
    <!--===// Start: Top Navbar
    =================================-->

    <section id="top-navbar">
        <div class="container">
            <div class="clearfix">
                <div class="float-left">
                    <div class="main-logo">
                        <a href="#"><img src="assets/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="float-right cart-search">
               
                </div>
                <div class="float-right header-info">
                    <ul>
                        <li>
                            <i class="icofont icofont-social-google-map"></i>
                            <p><span>مقر الشركة</span> <br>121 King Street, USA</p>
                        </li>
                        <li>
                            <i class="icofont icofont-clock-time"></i>
                            <p><span>ساعات العمل</span> <br/>Mon-Sat 8:00 - 18:00</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!--===// End: Top Navbar
    =================================-->
    
    <!--===// Start:  Navbar
    =================================-->

    <section class="navbar-area sticky-nav">
        <div class="container d-none d-md-block">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar-pc" >
                        <ul style="float:right;">
                            <li class="active"><a href="index-2.html">الرئيسية</a></li>
                            <li><a href="about-us.html">الاخبار</a></li>
                            <li class="b-dropdown">
                                <a href="services.html">لا للفراغ</a>
                                <ul class="b-dropdown-menu">
                                    <li><a href="services-1.html">Services 1</a></li>
                                    <li><a href="services-2.html">Services 2</a></li>
                                </ul>
                            </li>
                            <li class="b-dropdown">
                                <a href="#">مراسلة فريق او لاعبة </a>
                                <ul class="b-dropdown-menu">
                                    <li><a href="portfolio-2-column.html">Portfolio 2 Column</a></li>
                                    <li><a href="portfolio-3-column.html">Portfolio 3 Column</a></li>
                                    <li><a href="portfolio-4-column.html">Portfolio 4 Column</a></li>
                                    <li class="b-sub-dropdown">
                                        <a href="#">Other Pages</a>
                                        <ul class="b-sub-dropdown-menu">
                                            <li><a href="portfolio-masonary.html">Portfolio masonary</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="b-dropdown">
                                <a href="#">مباريات</a>
                                <ul class="b-dropdown-menu">
                                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                    <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                    <li><a href="blog-full-width.html">Blog Full Width</a></li>
                                    <li><a href="blog-single.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li class="b-dropdown">
                                <a href="#">فيديو وصور</a>
                                <ul class="b-dropdown-menu">
                                    <li><a href="gallery.html">Gallery</a></li>
                                    <li><a href="coming-soon.html">Coming Soon</a></li>
                                    <li><a href="404-page.html">404 Page</a></li>
                                </ul>
                            </li>
                            <li><a href="Contact Us.aspx">تواصل معنا</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Start Mobile Menu -->
        <div class="mobile-menu-area d-md-none">
            <div class="row">
                <div class="col-md-12">
                    <div class="mobile-menu">
                        <nav class="mobile-menu-active">
                            <ul>
                                <li><a href="index-2.html">Home</a></li>
                                <li><a href="about-us.html">About</a></li>
                                <li class="b-dropdown">
                                    <a href="services.html">Services</a>
                                    <ul class="b-dropdown-menu">
                                        <li><a href="services-1.html">Services 1</a></li>
                                        <li><a href="services-2.html">Services 2</a></li>
                                    </ul>
                                </li>
                                <li class="b-dropdown">
                                    <a href="#">Portfolio</a>
                                    <ul class="b-dropdown-menu">
                                        <li><a href="portfolio-2-column.html">Portfolio 2 Column</a></li>
                                        <li><a href="portfolio-3-column.html">Portfolio 3 Column</a></li>
                                        <li><a href="portfolio-4-column.html">Portfolio 4 Column</a></li>
                                        <li class="b-sub-dropdown">
                                            <a href="#">Other Pages</a>
                                            <ul class="b-sub-dropdown-menu">
                                                <li><a href="portfolio-masonary.html">Portfolio masonary</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="gallery.html">Gallery</a></li>
                                <li class="b-dropdown">
                                    <a href="#">Blog</a>
                                    <ul class="b-dropdown-menu">
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-full-width.html">Blog Full Width</a></li>
                                        <li><a href="blog-single.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li class="b-dropdown">
                                    <a href="#">Pages</a>
                                    <ul class="b-dropdown-menu">
                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                        <li><a href="404-page.html">404</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </nav>                                
                    </div>
                </div>
            </div>
        </div>
    </section>
        <!-- End Mobile Menu -->

    <!--===// End: Navbar
    =================================-->

    <!--===// Start:  Search
    =================================-->
    <div class="search__area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="search__inner">
                        <form action="#" method="get" class="" role="search">
                            <input type="search" name="q" value="" placeholder="Search" class="" aria-label="Search">
                            <button type="submit"><i class="icofont icofont-search-alt-1"></i></button>
                        </form>
                        <div class="search__close__btn">
                            <span class="search__close__btn_icon"><i class="icofont icofont-close"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--===// End: Search
    =================================-->
    
    <!--===// Start:  Header Slider
    =================================-->

    
    
    <!--===// Start:  Contact Info
    =================================-->
             <!--===// Start:  Breadcrumb
    =================================-->
     <section id="breadcrumb-area" style="background-image: url(assets/img/bg/breadcrumbg-bg.png); padding:10px 0px 5px 0;">
        <div class="container">
            <div class="row">
                <div class="col-12">
<%--                    <h2 style="float: right; text-align: right;"><span>إتصل بنا </span></h2>--%>
                    <ul class="breadcrumb-nav list-inline" style="float: right; text-align: right;">
                        <li><a href="index.aspx">الرئيسيه</a></li>
                        <li class="active">إتصل بنا</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
      <!--===// Start: Contact
    =================================-->
        
    <section id="contact" class="section-padding" style="padding:10px 0px 0px 0;">
         
              <div class="container">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 contact-form mb-5 mb-lg-0">
               <div class="row">
                        <div class="col-lg-10 offset-lg-1">                    
                            <div class="section-header text-center">
<%--                                <h2>Get in touch</h2>--%>
                                <p>يمكنك التواصل معنا من خلال إرسال البيانات الاتيه وسيتم التواصل معك فورا</p>
                            </div>
                        </div>
                    </div>
   <form id="form1" runat="server" >
 <div class="row" >                            <div class="col-md-6">
                                <div class="input-wrapper" >

   <asp:TextBox ID="txtName" runat="server"  placeholder="الأسم"  style="direction:rtl;" />
     <asp:RequiredFieldValidator ErrorMessage="مطلوب" ForeColor="Red" ControlToValidate="txtName"
                runat="server" /><br />
   </div>
                                   </div>
                            
    
     <div class="col-md-6">
                                <div class="input-wrapper">
 
   <asp:TextBox ID="txtMail" runat="server" placeholder="الإيميل"  style="direction:rtl;"/><br/>
<asp:RequiredFieldValidator ErrorMessage="مطلوب" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtMail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtMail" ForeColor="Red" ErrorMessage="البريد الالكتروني غير صحيح" /><br />

         </div>
                            </div>
        </div>
    <div class="row" >
                     <div class="col-md-12">
                                <div class="input-wrapper">
   
    <asp:TextBox ID="txtSubject" runat="server"  placeholder="العنوان"  style="direction:rtl;"/>
 <asp:RequiredFieldValidator ErrorMessage="مطلوب" ForeColor="Red" ControlToValidate="txtSubject"
                runat="server" /><br />
    </div>
       </div>
                            </div>
 <div class="row" >      <div class="col-md-12">
       <div class="input-wrapper">
   
    <asp:TextBox ID="txtMessage" runat="server" placeholder="الرساله"  style="direction:rtl;" 
                TextMode="MultiLine" />
   <asp:RequiredFieldValidator ErrorMessage="مطلوب" ForeColor="Red" ControlToValidate="txtMessage"
                runat="server" /><br />
    </div>
     </div>
           </div>
 <div class="row" >          
    
                         <div class="col-md-6">
   <asp:Button ID="btnSubmit" runat="server"  class="boxed-btn" style="text-align:center;  color:white"  
                Text="إرسال" onclick="btnSubmit_Click"/>
    </div>
  
    <asp:Label ID="Label1" runat="server" Text=""/>
         </div>
       
        </form>
               </div>
                <div class="col-lg-3"></div>

            </div>
                </section>
     <footer id="footer-widgets">

        <div id="action-bar">
            <div class="container">
                <div class="action-bar">
                    <div class="row">
                        <div class="col-lg-5 offset-lg-1 offset-0 text-center text-lg-left mb-3 mb-lg-0">
                            <div class="bar-text">
                                <p>Do you like that you see?</p>
                            </div>
                        </div>
                        <div class="col-lg-5 text-lg-right text-center">
                            <a href="#" class="boxed-btn white-bg">Request a Quote</a>
                            or
                            <a href="#" class="boxed-btn contact-btn">Contact Us</a>
                        </div>
                    </div>                
                </div>
            </div>
        </div>   

        <div class="container">

            <div class="row widgets-mb">
                <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-4">
                    <aside class="widget widget_about">
                        <div class="footer-logo"><img src="assets/img/footer-logo.png" alt=""></div>
                        <hr>
                        <p>standard dummy text ever since the 1500s, unknown printer took a galley of type and scrambled it to make</p>
                        <ul class="widget-info">
                            <li><i class="fas fa-phone"></i>012-345-789</li>
                            <li><i class="fas fa-globe"></i>www.yourdomain.com</li>
                            <li><i class="fas fa-envelope"></i>yourmail@gmail.com</li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-4">
                    <aside class="widget widget_links">
                        <h4 class="widget-title">Pages Link</h4>
                        <hr>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Portfolio</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-md-0 mb-4">
                    <aside class="widget widget_recent">
                        <h4 class="widget-title">Any Question</h4>
                        <hr>
                        <ul>
                            <li class="latest-news">
                                <a href="#">
                                    <img src="assets/img/footer/anyq-thumb01.jpg" alt="">
                                    <p>Leatest trend web, will be distracted</p>
                                </a>
                            </li>
                            <li class="latest-news">
                                <a href="#">
                                    <img src="assets/img/footer/anyq-thumb02.jpg" alt="">
                                    <p>Development API, reader will be distracted</p>
                                </a>
                            </li>
                            <li class="latest-news">
                                <a href="#">
                                    <img src="assets/img/footer/anyq-thumb03.jpg" alt="">
                                    <p>Currency theme, reader will be distracted</p>
                                </a>
                            </li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <aside class="widget widget_instagram">
                        <h4 class="widget-title">Instagram</h4>
                        <hr>
                        <div class="instagram-photos">
                            <div class="single-instagram">                                
                                <a href="assets/img/footer/instagram01.jpg" class="popup">
                                    <img src="assets/img/footer/instagram01.jpg" alt="">
                                </a>
                            </div>
                            <div class="single-instagram">                                
                                <a href="assets/img/footer/instagram01.jpg" class="popup">
                                    <img src="assets/img/footer/instagram02.jpg" alt="">
                                </a>                                
                            </div>
                            <div class="single-instagram">                                
                                <a href="assets/img/footer/instagram01.jpg" class="popup">
                                    <img src="assets/img/footer/instagram03.jpg" alt="">
                                </a>                                
                            </div>
                            <div class="single-instagram">                                
                                <a href="assets/img/footer/instagram01.jpg" class="popup">
                                    <img src="assets/img/footer/instagram04.jpg" alt="">
                                </a>                                
                            </div>
                            <div class="single-instagram">                                
                                <a href="assets/img/footer/instagram01.jpg" class="popup">
                                    <img src="assets/img/footer/instagram05.jpg" alt="">
                                </a>
                            </div>
                            <div class="single-instagram">                                
                                <a href="assets/img/footer/instagram01.jpg" class="popup">
                                    <img src="assets/img/footer/instagram06.jpg" alt="">
                                </a>                                
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
            <hr class="copyright-hr">
            <div class="row copyright">
                <div class="col-md-6 col-12 mb-lg-0 mb-3">
                    <ul class="text-md-left text-center payment-method">
                        <li><a href="#"><i class="fab fa-paypal"></i></a></li>
                        <li><a href="#"><i class="fab fa-cc-visa"></i></a></li>
                        <li><a href="#"><img src="assets/img/paymenticon01.png" alt=""></a></li>
                        <li><a href="#"><img src="assets/img/paymenticon02.png" alt=""></a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-12 text-md-right text-center copyright-text"><p>Copyright © 2018 Boostify by <a href="#">Nayra Themes</a>.</p></div>
                <a href="#" class="scrollup boxed-btn"><i class="icofont icofont-rounded-up"></i></a>
            </div>

        </div>
    </footer>

    <!--===// End: Footer
    =================================-->
    
    <!-- Scripts -->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.sticky.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.shuffle.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/jquery.meanmenu.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/hovereffect.js"></script>
    
    <!-- Custom Script -->
    <script src="assets/js/custom.js"></script>
  
</body>
</html>