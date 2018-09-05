<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="NewsDetails.aspx.cs" Inherits="Sabaya_Portal.NewsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="blog-content" class="section-padding-top full-post" style="padding-top:25px;">
        <div class="container">
 <div class="row">
                <!-- Blog Content -->
                <div class="col-lg-8 col-md-12 mb-5 mb-lg-0">

                    <article class="blog-post"> 
                                              
                        <div class="post-thumb">
                             <div class="post-header">
                      
                            <h2 class="post-title" style="text-align:right">
                                <asp:Label ID="title" runat="server" Text="Label"></asp:Label> </h2>
                                 <br />
                                
                       
                             </div>   
                       <asp:Image ID="imgNews" style="width:100%; height:100%; " runat="server" alt=""/>
                        </div>

                        <div class="post-content">
                           <h6 class="post-title" style="text-align:right"> <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label></h6>
                            <p style="text-align:right">
                                <asp:Label ID="lbldes" runat="server" Text="Label"></asp:Label></p>
                         
                        </div>

                        <hr>

              
                     
                    </article>
                </div>

                <!-- Sidebar -->
                <div class="col-lg-4 col-md-12">
                    <section class="sidebar">
                      

                        <aside class="widget widdget-recent-post">
                            <h5 style="text-align:right" class="widget-title">موضوعات هامه</h5>
                            <hr>
                            <div class="popular-post">
                        <img style="width:80px; height:80px;" src="assets/img/NewsImages/6.jpg" alt="">
                                <div class="popular-content">
                                    <a href="#" class="post-date">Jul 08, 2017</a>
                                   
                                   <a href="#"> <p> مصر فى المجموعة الثالثة بتصفيات كأس العالم لكرة السلة 2019 </p></a>
                                </div>
                            </div>
                                                        <div class="popular-post">
                        <img style="width:80px; height:80px;" src="assets/img/NewsImages/6.jpg" alt="">
                                <div class="popular-content">
                                    <a href="#" class="post-date">Jul 08, 2017</a>
                                   
                                   <a href="#"> <p> مصر فى المجموعة الثالثة بتصفيات كأس العالم لكرة السلة 2019 </p></a>
                                </div>
                            </div>

                            <div class="popular-post">
                        <img style="width:80px; height:80px;" src="assets/img/NewsImages/2.jpg" alt="">
                                <div class="popular-content">
                                    <a href="#" class="post-date">Jul 08, 2017</a>
                                   
                                   <a href="#"> <p> مصر فى المجموعة الثالثة بتصفيات كأس العالم لكرة السلة 2019 </p></a>
                                </div>
                            </div>
                        </aside>
                      
                 


                        

                    </section>
                </div>
            </div>

        </div>
    </section>
</asp:Content>
