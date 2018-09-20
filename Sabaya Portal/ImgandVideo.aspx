<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="ImgandVideo.aspx.cs" Inherits="Sabaya_Portal.ImgandVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!--===// Start:  Our Portfolio
    =================================-->

    <section id="our-portfolio" class="section-padding" style="padding-top:25px; padding-bottom:10px;">
        
        <div class="container">
            <div class="row">
                <div class="col-lg-12 offset-lg-6">                    
                    <div class="section-header text-center">
                        <h2>أحدث الصور </h2>
                    </div>
                </div>
            </div>

            <div class="row portfolio" id="grid">
                <div class="col-lg-4 col-md-6 col-sm-12" >
                    <figure>
                        <img src="assets/img/imgUploaded/1.jpg" alt="" style="width:370px; height:250px;">
                        <figcaption>
                            <div class="inner-text">
                                <h4 style="text-align:right">فريق كره السله نادي .. بالجيزه </h4>
                                <p style="text-align:right">تم رفعها بواسطه : إيهاب إبراهيم </p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12" >
                    <figure>
                        <img src="assets/img/imgUploaded/2.jpg" alt="" style="width:370px; height:250px;">
                        <figcaption>
                            <div class="inner-text">
                                <h4 style="text-align:right">من فعاليات اليوم في لعبه الشطرنج</h4>
                                <p style="text-align:right">تم رفعها بواسطه : إيهاب إبراهيم </p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6" >
                    <figure>
                        <img src="assets/img/imgUploaded/3.jpg" alt="" style="width:370px; height:250px;">
                        <figcaption>
                            <div class="inner-text">
                                <h4 style="text-align:right">تدريب الأطفال في لعبه التزلج علي الجليد </h4>
                                <p style="text-align:right">تم رفعها بواسطه : إيهاب إبراهيم </p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6" >
                    <figure>
                        <img src="assets/img/imgUploaded/4.jpg" alt="" style="width:370px; height:250px;">
                        <figcaption>
                            <div class="inner-text">
                                <h4 style="text-align:right">مباره كره القدم يوم 15/9</h4>
                                <p style="text-align:right">تم رفعها بواسطه : إيهاب إبراهيم </p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6">
                    <figure>
                        <img src="assets/img/imgUploaded/5.jpg" alt="" style="width:370px; height:250px;">
                        <figcaption>
                            <div class="inner-text">
                                <h4 style="text-align:right">من تدريب السباحه</h4>
                                <p style="text-align:right">تم رفعها بواسطه : إيهاب إبراهيم </p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12" >
                    <figure>
                        <img src="assets/img/imgUploaded/6.jpg" alt="" style="width:370px; height:250px;">
                        <figcaption>
                            <div class="inner-text">
                                <h4 style="text-align:right">مارثون الجري يوم 16-9</h4>
                                <p style="text-align:right">تم رفعها بواسطه : إيهاب إبراهيم </p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </div>
            
        </div>
    </section>
      <!--===// Start:  Our Service
    =================================-->
    
    <section id="our-service" class="section-padding" style="padding-top:25px; padding-bottom:10px;">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-12 offset-lg-6">                    
                    <div class="section-header text-center">
                        <h2>أحدث مقاطع الفيديو</h2>
                    </div>
                </div>
            </div>
            
            <div class="row" id="services">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="service-box">
<iframe  src="https://www.youtube.com/embed/4vSCBwtYQBg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>  
                                                                <p style="text-align:right">مارثون جري </p>
        
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="service-box">
<iframe  src="https://www.youtube.com/embed/Q8S9S4B8P3Y" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                     <p style="text-align:right">تزلج علي الجليد</p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="service-box">
<iframe src="https://www.youtube.com/embed/Hz_UOOXSMmg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>         
                                                   <p style="text-align:right">تدريب كره طائره </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <div class="service-box">
<iframe  src="https://www.youtube.com/embed/Q8S9S4B8P3Y" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                     <p style="text-align:right">تزلج علي الجليد</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <div class="service-box">
<iframe src="https://www.youtube.com/embed/Hz_UOOXSMmg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>         
                                                   <p style="text-align:right">تدريب كره طائره </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="service-box">
<iframe  src="https://www.youtube.com/embed/4vSCBwtYQBg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>  
                                                                <p style="text-align:right">مارثون جري </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!--===// End: Our Service

    <!--===// End: Our Portfolio
    =================================-->
</asp:Content>
