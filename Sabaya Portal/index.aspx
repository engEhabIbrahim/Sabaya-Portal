<%@ Page Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Sabaya_Portal.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--===// Start:  Contact Info
    =================================-->

    <section id="contact-info">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="contact-info">
                        <li>
                            <div class="inner-content">
                                <i class="icofont icofont-phone-circle"></i>
                                <h5>24x7 Support</h5>
                                <p>0 (123) 456 7891</p>
                            </div>
                        </li>
                        <li>
                            <div class="inner-content">
                                <i class="icofont icofont-ui-map"></i>
                                <h5>Quick Contact Us</h5>
                                <p>+880-123-456890</p>
                            </div>
                        </li>
                        <li>
                            <div class="inner-content">
                                <i class="icofont icofont-ui-email"></i>
                                <h5>Send Us an Email</h5>
                                <p>email@gmail.com</p>
                            </div>
                        </li>
                        <li>
                            <div class="inner-content">
                                <i class="icofont icofont-wall-clock"></i>
                                <h5>Our Working Hours </h5>
                                <p>Monday to Friday</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    
    <!--===// End: Contact Info
    =================================-->
    
    
    <!--===// Start:  Our Portfolio
    =================================-->

    <section id="our-portfolio" class="section-padding">
        
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Our Portfolio</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>

            <div class="row portfolio-tab">
                <div class="col-md-12">
                    <ul class="portfolio-tab-sorting sorting-btn" id="filter">
                        <li><a href="#" data-group="Show All" class="active">All work<i class="fas fa-angle-double-right ml-2"></i></a></li>
                        <li><a href="#" data-group="Branding"><i class="icofont icofont-brand-airtel mr-2"></i>Branding</a></li>
                        <li><a href="#" data-group="Web"><i class="icofont icofont-dashboard-web mr-2"></i>Web</a></li>
                        <li><a href="#" data-group="More"><i class="icofont icofont-location-arrow mr-2"></i>More</a></li>
                        <li><a href="#" data-group="Creative"><i class="icofont icofont-brand-slideshare mr-2"></i>Creative</a></li>
                    </ul>
                </div>
            </div>
            <div class="row portfolio" id="grid">
                <div class="col-lg-4 col-md-6 col-sm-12" data-groups='["Branding", "Web", "Show All"]'>
                    <figure>
                        <img src="assets/img/portfolio/portfolio01.jpg" alt="">
                        <figcaption>
                            <div class="inner-text">
                                <h4>Business planning</h4>
                                <p>There are many variations of passa Lorem Ipsum available, but the major has suffered alteration in some form, by injected humou or randomised words</p>
                                <a href="portfolio-2-column.html">View details <i class="fas fa-angle-double-right ml-1"></i></a>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12" data-groups='["Branding","Creative", "Show All"]'>
                    <figure>
                        <img src="assets/img/portfolio/portfolio02.jpg" alt="">
                        <figcaption>
                            <div class="inner-text">
                                <h4>Business planning</h4>
                                <p>There are many variations of passa Lorem Ipsum available, but the major has suffered alteration in some form, by injected humou or randomised words</p>
                                <a href="portfolio-2-column.html">View details <i class="fas fa-angle-double-right ml-1"></i></a>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6" data-groups='["Creative", "More", "Show All"]'>
                    <figure>
                        <img src="assets/img/portfolio/portfolio03.jpg" alt="">
                        <figcaption>
                            <div class="inner-text">
                                <h4>Business planning</h4>
                                <p>There are many variations of passa Lorem Ipsum available, but the major has suffered alteration in some form, by injected humou or randomised words</p>
                                <a href="portfolio-2-column.html">View details <i class="fas fa-angle-double-right ml-1"></i></a>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6" data-groups='["Branding","Creative", "Show All"]'>
                    <figure>
                        <img src="assets/img/portfolio/portfolio05.jpg" alt="">
                        <figcaption>
                            <div class="inner-text">
                                <h4>Business planning</h4>
                                <p>There are many variations of passa Lorem Ipsum available, but the major has suffered alteration in some form, by injected humou or randomised words</p>
                                <a href="portfolio-2-column.html">View details <i class="fas fa-angle-double-right ml-1"></i></a>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6" data-groups='["Branding", "Creative", "Show All"]'>
                    <figure>
                        <img src="assets/img/portfolio/portfolio04.jpg" alt="">
                        <figcaption>
                            <div class="inner-text">
                                <h4>Business planning</h4>
                                <p>There are many variations of passa Lorem Ipsum available, but the major has suffered alteration in some form, by injected humou or randomised words</p>
                                <a href="portfolio-2-column.html">View details <i class="fas fa-angle-double-right ml-1"></i></a>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12" data-groups='["Branding", "Web", "Show All"]'>
                    <figure>
                        <img src="assets/img/portfolio/portfolio06.jpg" alt="">
                        <figcaption>
                            <div class="inner-text">
                                <h4>Business planning</h4>
                                <p>There are many variations of passa Lorem Ipsum available, but the major has suffered alteration in some form, by injected humou or randomised words</p>
                                <a href="portfolio-2-column.html">View details <i class="fas fa-angle-double-right ml-1"></i></a>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </div>
            
        </div>
    </section>

    <!--===// End: Our Portfolio
    =================================-->
    
    <!--===// Start:  Our feature
    =================================-->
    
    <section id="our-feature">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Our Features</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xl col-lg-3 col-md-4 col-sm-6 col-12 mb-xl-0 mb-4">
                    <div class="features-box">
                        <figure>
                            <img src="assets/img/features/features01.jpg" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <i class="icofont icofont-toy-ball"></i>
                                    <h4>Business planning</h4>
                                    <p>My point of using Lorem Ipsum is that distribution</p>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <div class="col-xl col-lg-3 col-md-4 col-sm-6 col-12 mb-xl-0 mb-4">
                    <div class="features-box">
                        <figure>
                            <img src="assets/img/features/features02.jpg" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <i class="icofont icofont-brand-china-telecom"></i>
                                    <h4>Business Growp</h4>
                                    <p>My point of using Lorem Ipsum is that distribution</p>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <div class="col-xl col-lg-3 col-md-4 col-sm-6 col-12 mb-xl-0 mb-4">
                    <div class="features-box">
                        <figure>
                            <img src="assets/img/features/features03.jpg" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <i class="icofont icofont-brand-copy"></i>
                                    <h4>Marketing</h4>
                                    <p>My point of using Lorem Ipsum is that distribution</p>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <div class="col-xl col-lg-3 col-md-4 col-sm-6 col-12 mb-sm-0 mb-4">
                    <div class="features-box">
                        <figure>
                            <img src="assets/img/features/features04.jpg" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <i class="icofont icofont-brand-fastrack"></i>
                                    <h4>Stratup advise</h4>
                                    <p>My point of using Lorem Ipsum is that distribution</p>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <div class="col-xl col-lg-3 col-md-4 col-sm-6 col-12">
                    <div class="features-box">
                        <figure>
                            <img src="assets/img/features/features05.jpg" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <i class="icofont icofont-animal-lion-head"></i>
                                    <h4>Business planning</h4>
                                    <p>My point of using Lorem Ipsum is that distribution</p>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!--===// End: Our feature
    =================================-->
    
    
    <!--===// Start:  Our Service
    =================================-->
    
    <section id="our-service" class="section-padding">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Our Services</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>
            
            <div class="row" id="services">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="service-box">
                        <img src="assets/img/icon/icon01.png" alt="">
                        <h4>Startup Business</h4>
                        <p>There are many variations passages of Lorem Ipsum popularised a with trelease for urvived.</p>
                        <a href="#">Read More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="service-box">
                        <img src="assets/img/icon/icon02.png" alt="">
                        <h4>Business Growth</h4>
                        <p>There are many variations passages of Lorem Ipsum popularised a with trelease for urvived.</p>
                        <a href="#">Read More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="service-box">
                        <img src="assets/img/icon/icon03.png" alt="">
                        <h4>Follow Policy</h4>
                        <p>There are many variations passages of Lorem Ipsum popularised a with trelease for urvived.</p>
                        <a href="#">Read More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <div class="service-box">
                        <img src="assets/img/icon/icon04.png" alt="">
                        <h4>Marketing</h4>
                        <p>There are many variations passages of Lorem Ipsum popularised a with trelease for urvived.</p>
                        <a href="#">Read More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <div class="service-box">
                        <img src="assets/img/icon/icon05.png" alt="">
                        <h4>Business Advise</h4>
                        <p>There are many variations passages of Lorem Ipsum popularised a with trelease for urvived.</p>
                        <a href="#">Read More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="service-box">
                        <img src="assets/img/icon/icon06.png" alt="">
                        <h4>Business Pakage</h4>
                        <p>There are many variations passages of Lorem Ipsum popularised a with trelease for urvived.</p>
                        <a href="#">Read More</a>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!--===// End: Our Service
    =================================-->
    
    
    <!--===// Start:  Fun Fact
    =================================-->

    <section id="fun-fact">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 single-box mb-5 mb-lg-0">
                    <h3><span class="counter">9.1</span>B</h3>
                    <p>Projects</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 single-box mb-5 mb-lg-0">
                    <h3><span class="counter">8.2</span>M</h3>
                    <p>Pro Client</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12  single-box mb-5 mb-sm-0">
                    <h3><span class="counter">2.26</span>k</h3>
                    <p>Happy Client</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12  single-box mb-5 mb-sm-0">
                    <h3><span class="counter">9.26</span>M</h3>
                    <p>Award</p>
                </div>
            </div>
        </div>
    </section>

    <!--===// End: Fun fact
    =================================-->
    
    
    <!--===// Start: Gallery
    =================================-->
    
    <section id="our-gallery" class="section-padding-top">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Gallery</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div id="gallery-items" class="gallery-items">
                    
                    <a href="assets/img/gallery/gallery1.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery1.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery2.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery2.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery3.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery3.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery4.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery4.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery5.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery5.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery6.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery6.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery7.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery7.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery8.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery8.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery9.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery9.jpg" alt="" />
                        </div>
                    </a>
                    
                    <a href="assets/img/gallery/gallery10.jpg" class="popup">
                        <div class="single-item">
                            <img src="assets/img/gallery/gallery10.jpg" alt="" />
                        </div>
                    </a>

                </div>
            </div>
        </div>
    </section>

    <!--===// End: Gallery
    =================================-->
    
    
    <!--===// Start:  Team
    =================================-->

    <section id="our-team" class="section-padding">
        <div class="container">  

            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Our Team</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="team-member">
                        <img src="assets/img/team/team01.jpg" alt="">
                        <div class="team-footer">
                            <h4>Richardo Ven</h4>
                            <p>Web Developer</p>
                        </div>
                        <div class="team-content">
                            <div class="inner">
                                <h4>Richardo Ven</h4>
                                <p class="title">Web Developer</p>
                                <p>Page when looking at its layout. The point of using Lorem Ipsum is it has  tere content here</p>

                                <ul>
                                    <li><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-brand-linkedin"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-tumblr"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-dribbble"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-instagram"></i></a></li>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mt-5 mt-sm-0">
                    <div class="team-member">
                        <img src="assets/img/team/team02.jpg" alt="">
                        <div class="team-footer">
                            <h4>Richardo Ven</h4>
                            <p>Web Developer</p>
                        </div>
                        <div class="team-content">
                            <div class="inner">
                                <h4>Richardo Ven</h4>
                                <p class="title">Web Developer</p>
                                <p>Page when looking at its layout. The point of using Lorem Ipsum is it has  tere content here</p>

                                <ul>
                                    <li><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-brand-linkedin"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-tumblr"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-dribbble"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-instagram"></i></a></li>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mt-5 mt-md-0">
                    <div class="team-member">
                        <img src="assets/img/team/team03.jpg" alt="">
                        <div class="team-footer">
                            <h4>Richardo Ven</h4>
                            <p>Web Developer</p>
                        </div>
                        <div class="team-content">
                            <div class="inner">
                                <h4>Richardo Ven</h4>
                                <p class="title">Web Developer</p>
                                <p>Page when looking at its layout. The point of using Lorem Ipsum is it has  tere content here</p>

                                <ul>
                                    <li><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-brand-linkedin"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-tumblr"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-dribbble"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-instagram"></i></a></li>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-5 mt-lg-0 col-sm-6">
                    <div class="team-member">
                        <img src="assets/img/team/team04.jpg" alt="">
                        <div class="team-footer">
                            <h4>Richardo Ven</h4>
                            <p>Web Developer</p>
                        </div>
                        <div class="team-content">
                            <div class="inner">
                                <h4>Richardo Ven</h4>
                                <p class="title">Web Developer</p>
                                <p>Page when looking at its layout. The point of using Lorem Ipsum is it has  tere content here</p>

                                <ul>
                                    <li><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-brand-linkedin"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-tumblr"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-dribbble"></i></a></li>
                                    <li><a href="#"><i class="icofont icofont-social-instagram"></i></a></li>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!--===// End: Team
    =================================-->

    <!--===// Start:  Our Testimonials
    =================================-->

    <section id="testimonial">
        <div class="container"> 

            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Our Testimonials</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="testimonial-carousel">
                        <div class="single-testimonial">
                            <img src="assets/img/testimonial/testimonial01.jpg" alt="">
                            <h4>All Raihan</h4>
                            <p class="title">Interection Design</p>
                            <p>Page when looking at aut. The point of using Lo Ipsum is it has.</p>

                            <ul>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star-shape"></i></li>
                            </ul>
                        </div>
                        <div class="single-testimonial">
                            <img src="assets/img/testimonial/testimonial02.jpg" alt="">
                            <h4>Ali Sayed</h4>
                            <p class="title">Interection Design</p>
                            <p>Page when looking at aut. The point of using Lo Ipsum is it has.</p>

                            <ul>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star-shape"></i></li>
                            </ul>
                        </div>
                        <div class="single-testimonial">
                            <img src="assets/img/testimonial/testimonial03.jpg" alt="">
                            <h4>Masum Parvej</h4>
                            <p class="title">Interection Design</p>
                            <p>Page when looking at aut. The point of using Lo Ipsum is it has.</p>

                            <ul>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star-shape"></i></li>
                            </ul>
                        </div>
                        <div class="single-testimonial">
                            <img src="assets/img/testimonial/testimonial02.jpg" alt="">
                            <h4>All Raihan</h4>
                            <p class="title">Interection Design</p>
                            <p>Page when looking at aut. The point of using Lo Ipsum is it has.</p>

                            <ul>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star"></i></li>
                                <li><i class="icofont icofont-star-shape"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!--===// End: Our Testimonials
    =================================-->
    
    
    <!--===// Start:  Package
    =================================-->

    <section id="packages" class="section-padding">
        <div class="container">

            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Our Packages</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                    <div class="single-package">
                        <div class="package-head">
                            <div class="pricing"><span class="price">$ 79</span>/month</div>
                             <h3 class="title">Start up</h3>
                             <p>This is the best pakage for basic startup business.</p>
                        </div>
                        <div class="pricing-content">
                            <ul>
                                <li><img src="assets/img/pricing-icon/pricing-icon01.png" alt="">Website design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon02.png" alt="">Marketing</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon03.png" alt="">UI/UX design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon04.png" alt="">Interaction design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon05.png" alt="">Business handle</li>
                            </ul>
                        </div>
                        <a href="#" class="order-btn">Order Now</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                    <div class="single-package heavy-package">
                        <div class="package-head">
                            <div class="pricing"><span class="price">$ 129</span>/month</div>
                             <h3 class="title">Heavy</h3>
                             <p>This is the best pakage for basic startup business.</p>
                        </div>
                        <div class="pricing-content">
                            <ul>
                                <li><img src="assets/img/pricing-icon/pricing-icon01.png" alt="">Website design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon02.png" alt="">Marketing</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon03.png" alt="">UI/UX design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon04.png" alt="">Interaction design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon05.png" alt="">Business handle</li>
                            </ul>
                        </div>
                        <a href="#" class="order-btn">Order Now <i class="icofont icofont-long-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-package">
                        <div class="package-head">
                            <div class="pricing"><span class="price">$ 569</span>/month</div>
                             <h3 class="title">Business</h3>
                             <p>This is the best pakage for basic startup business.</p>
                        </div>
                        <div class="pricing-content">
                            <ul>
                                <li><img src="assets/img/pricing-icon/pricing-icon01.png" alt="">Website design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon02.png" alt="">Marketing</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon03.png" alt="">UI/UX design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon04.png" alt="">Interaction design</li>
                                <li><img src="assets/img/pricing-icon/pricing-icon05.png" alt="">Business handle</li>
                            </ul>
                        </div>
                        <a href="#" class="order-btn">Order Now</a>
                    </div>
                </div>
            </div>


        </div>
    </section>
    
    <!--===// End: Package
    =================================-->
    
    
    <!--===// Start:  Subcribe
    =================================-->
    
    <section id="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 subscribe-text">
                    <h3>Subscribe now for news</h3>
                    <p>We provide you all of update</p>
                </div>
                <div class="col-lg-7 col-md-6 text-center">
                    <form id="subscribe-form" action="#" method="POST">
                        <input type="email" name="email" id="subscribe-mail" placeholder="Input your email here" required>
                        <a href="#"><i class="icofont icofont-external-link"></i></a>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!--===// End: Subscribe
    =================================-->
    
    
    <!--===// Start:  Recent Blog
    =================================-->
    
    <section id="recent-blog" class="section-padding-top">
        <div class="container">

            <div class="row">
                <div class="col-lg-6 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2>Recent Blog</h2>
                        <p>There are many variations of passages of Lorem Ipsum availab but 5th alteration in some form, by inje humour or randomised</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 mb-4">
                    <article class="recent-blog-post">
                        <div class="post-thumb">
                            <img src="assets/img/recent-blog/recentblog01.jpg" alt="">
                            <div class="post-author">
                                <img src="assets/img/author01.png" alt="">
                            </div>
                        </div>
                        <div class="post-content">                            
                            <ul class="meta-info list-inline">
                                <li class="posted-by">By <a href="#">Admin</a> <span class="post-date">18 Jan 2017</span></li>
                                <li class="tags"><a href="#">Marketing</a><a href="#">Business</a><a href="#">Skill</a></li>
                            </ul>                            
                            <h5 class="post-title"><a href="blog-single.html">Business suggestion or startup</a></h5>
                            <p>Page when looking at its layout using Lorem Ipsum is that it has a life...</p>
                            <a href="#" class="boxed-btn">Read More <i class="fas fa-angle-right"></i></a>
                        </div>
                    </article>
                </div>
                <div class="col-lg-6 mb-4">
                    <article class="recent-blog-post">
                        <div class="post-thumb">
                            <img src="assets/img/recent-blog/recentblog02.jpg" alt="">
                            <div class="post-author">
                                <img src="assets/img/author01.png" alt="">
                            </div>
                        </div>
                        <div class="post-content">                            
                            <ul class="meta-info list-inline">
                                <li class="posted-by">By <a href="#">Admin</a> <span class="post-date">18 Jan 2017</span></li>
                                <li class="tags"><a href="#">Marketing</a><a href="#">Business</a><a href="#">Skill</a></li>
                            </ul>                            
                            <h5 class="post-title"><a href="blog-single.html">Business suggestion or startup</a></h5>
                            <p>Page when looking at its layout using Lorem Ipsum is that it has a life...</p>
                            <a href="#" class="boxed-btn">Read More <i class="fas fa-angle-right"></i></a>
                        </div>
                    </article>
                </div>
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <article class="recent-blog-post">
                        <div class="post-thumb">
                            <img src="assets/img/recent-blog/recentblog03.jpg" alt="">
                            <div class="post-author">
                                <img src="assets/img/author01.png" alt="">
                            </div>
                        </div>
                        <div class="post-content">                            
                            <ul class="meta-info list-inline">
                                <li class="posted-by">By <a href="#">Admin</a> <span class="post-date">18 Jan 2017</span></li>
                                <li class="tags"><a href="#">Marketing</a><a href="#">Business</a><a href="#">Skill</a></li>
                            </ul>                            
                            <h5 class="post-title"><a href="blog-single.html">Business suggestion or startup</a></h5>
                            <p>Page when looking at its layout using Lorem Ipsum is that it has a life...</p>
                            <a href="#" class="boxed-btn">Read More <i class="fas fa-angle-right"></i></a>

                        </div>
                    </article>
                </div>
                <div class="col-lg-6">
                    <article class="recent-blog-post">
                        <div class="post-thumb">
                            <img src="assets/img/recent-blog/recentblog04.jpg" alt=""/>
                            <div class="post-author">
                                <img src="assets/img/author01.png" alt="">
                            </div>
                        </div>
                        <div class="post-content">                            
                            <ul class="meta-info list-inline">
                                <li class="posted-by">By <a href="#">Admin</a> <span class="post-date">18 Jan 2017</span></li>
                                <li class="tags"><a href="#">Marketing</a><a href="#">Business</a><a href="#">Skill</a></li>
                            </ul>                            
                            <h5 class="post-title"><a href="blog-single.html">Business suggestion or startup</a></h5>
                            <p>Page when looking at its layout using Lorem Ipsum is that it has a life...</p>
                            <a href="#" class="boxed-btn">Read More <i class="fas fa-angle-right"></i></a>
                        </div>
                    </article>
                </div>
            </div>
            
        </div>
    </section>

    <!--===// End: Recent Blog
    =================================-->
       
    

</asp:Content>
 