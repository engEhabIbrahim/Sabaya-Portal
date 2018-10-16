<%@ Page Title="" Language="C#" MasterPageFile="~/try.master" AutoEventWireup="true" CodeBehind="IndexforMobile.aspx.cs" Inherits="Sabaya_Portal.IndexforMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

    <style>
        #separator .icon {
	margin-bottom: 5px;
}


 #separator .icon:hover {	

    color: #1ca54d;
    
}
  #separator .icon:hover {	

    color: #1ca54d;
    
}

    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
            <section id="our-team" class="section-padding-top" style="padding-top:10px;">
        <div class="container"> 
                    <div class="row" style="padding-bottom:5px;">
            <asp:Repeater ID="myRepeater" runat="server" DataSourceID="NewsDatasource">
                <ItemTemplate>
                <div class="col-sm-3" style="padding-bottom:10px;">
                         <div class="team-member">
                        <img src= '<%# Eval("image")%>' runat="server" width="297" height="170"  alt="">
                             <div class="team-footer">
          <a href="NewsDetails.aspx?Id=<%#Eval("Id")%>"> 

                     <p>   <%# Eval("Title")%> </p>
                                                     <a href="#" style="font-size:13px;" >عرض المزيد من الاخبار  <i class="fas fa-angle-double-left ml-1" style="font-size:12px;" ></i></a>

                                               </div>

                              </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>      

       </div>
  </section>

         <section class="my-slider" style="height:200px;">
			<ul>
				<li>
					<section class="slide_1"> 
                        <img src="assets/img/imgUploaded/1.jpg" width="100%" height="100%" />
						<div class="caption">
							<h2 style="text-align:center;">This is a very basic and simple slider</h2>
							<p>Most of the style is set in CSS and <strong>not</strong> in the JavaScript as most of the other sliders.</p>
						</div>
					</section>
				</li>
				<li>
					<section class="slide_2">
                      <img src="assets/img/imgUploaded/2.jpg" width="100%" height="100%" />

						<div class="caption">
							<h2>It contains</h2>
							<ul>
								<li>Slider area</li>
								<li>Navigation buttons</li>
								<li>Progress bar</li>
								<li>Markers</li>
							</ul>
							<p>Nothing more, nothing less...</p>
						</div>
					</section>
				</li>
				<li>
					<section class="slide_3">
               <img src="assets/img/imgUploaded/3.jpg" width="100%" height="100%" />

						<div class="caption">
							<h2>It's...</h2>
							<ul>
								<li>Stabile</li>
								<li>Easy to customize</li>
								<li>Responsive</li>
								<li>Hardware accelerated</li>
							</ul>
						</div>
					</section>
				</li>
			</ul>
		</section>


    <br/>
    <br />
       


             
                           <asp:SqlDataSource ID="NewsDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="selectTopOneNews" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    

                    <section class="sidebar">
                       <img class="img-valign" src="assets/img/imgUploaded/1.jpg" style="float:right" width="100" height="100" alt="" />
               <span class="text1">some text1 some text1some text1some text1some text1some text1some text1</span>

              </section>
        <hr />

                    <div class="col-lg-4 col-md-12">
                    <section class="sidebar">
                      

                        <aside class="widget widdget-recent-post">
                       
                            <div class="popular-post">
                        <img style="width:80px; height:80px; "  src="assets/img/NewsImages/6.jpg" alt="">
                                <div class="popular-content">
                                    <a href="#" class="post-date"></a>
                                   
                                   <a href="#"> <p> some text1 some text1some text1some text1some text1some text1some text1 </p></a>
                                </div>
                            </div>
                      
                        </aside>
                      
                 


                        

                    </section>
                </div>
        <hr />


             <section class="sidebar">
                       <img class="img-valign" src="assets/img/imgUploaded/1.jpg" style="float:right" width="100" height="100" alt="" />
               <span class="text1">some text1 some text1some text1some text1some text1some text1some text1</span>

              </section>
        <hr />

                    <div class="col-lg-4 col-md-12">
                    <section class="sidebar">
                      

                        <aside class="widget widdget-recent-post">
                       
                            <div class="popular-post">
                        <img style="width:80px; height:80px; "  src="assets/img/NewsImages/6.jpg" alt="">
                                <div class="popular-content">
                                    <a href="#" class="post-date"></a>
                                   
                                   <a href="#"> <p> some text1 some text1some text1some text1some text1some text1some text1 </p></a>
                                </div>
                            </div>
                      
                        </aside>
                      
                 


                        

                    </section>
                </div>
        <hr />



   
    <br />

                <section id="maincontent" style="padding-top:25px;">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">

            <div class="call-action">
                  <div class="text">
                <h2 style="text-align:right">منطقه إعلانات</h2>
                <p style="text-align:right">
                    ضع إعلانك هنا .... سوف يشاهده الكثير 
                </p>
              </div>
                  <div class="cta">
                <a class="btn btn-large btn-theme" href="#">
							<i class="icon-plane icon-white"></i> عرض التفاصيل </a>
              </div>
            
            

            </div>
              </div>
          
        </div>
</div></section>
    
    <br />
  



               <section class="sidebar">
                       <img class="img-valign" src="assets/img/imgUploaded/1.jpg" style="float:right" width="100" height="100" alt="" />
               <span class="text1">some text1 some text1some text1some text1some text1some text1some text1</span>

              </section>
    <hr />
                    <div class="col-lg-4 col-md-12">
                    <section class="sidebar">
                      

                        <aside class="widget widdget-recent-post">
                       
                            <div class="popular-post">
                        <img style="width:80px; height:80px; "  src="assets/img/NewsImages/6.jpg" alt="">
                                <div class="popular-content">
                                    <a href="#" class="post-date"></a>
                                   
                                   <a href="#"> <p> some text1 some text1some text1some text1some text1some text1some text1 </p></a>
                                </div>
                            </div>
                      
                        </aside>
                      
                 


                        

                    </section>
                </div>

        <hr />
 
            <section class="sidebar">
                       <img class="img-valign" src="assets/img/imgUploaded/1.jpg" style="float:right" width="100" height="100" alt="" />
               <span class="text1">some text1 some text1some text1some text1some text1some text1some text1</span>

              </section>
        <hr />

                    <div class="col-lg-4 col-md-12">
                    <section class="sidebar">
                      

                        <aside class="widget widdget-recent-post">
                       
                            <div class="popular-post">
                        <img style="width:80px; height:80px; "  src="assets/img/NewsImages/6.jpg" alt="">
                                <div class="popular-content">
                                    <a href="#" class="post-date"></a>
                                   
                                   <a href="#"> <p> some text1 some text1some text1some text1some text1some text1some text1 </p></a>
                                </div>
                            </div>
                      
                        </aside>
                      
                 


                        

                    </section>
                </div>
        <hr />

                  <section id="maincontent" style="padding-top:25px;">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">

            <div class="call-action">
                  <div class="text">
                <h2 style="text-align:right">منطقه إعلانات</h2>
                <p style="text-align:right">
                    ضع إعلانك هنا .... سوف يشاهده الكثير 
                </p>
              </div>
                  <div class="cta">
                <a class="btn btn-large btn-theme" href="#">
							<i class="icon-plane icon-white"></i> عرض التفاصيل </a>
              </div>
            
            

            </div>
              </div>
          
        </div>
</div></section>
    
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="assets/js/index.js"></script>




</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                     
                        <li id="firstLI" runat="server"></li>
                        <li id="secondLI" runat="server"></li>
                   <img  src="assets/img/UsertypeImg/bwoman.png" visible="false"  alt=""  id="UserType" runat="server"   width="30" height="30"/>          
                   <img  src="assets/img/UsertypeImg/fan-man.png"  visible="false"  alt=""  id="Img1" runat="server"   width="30" height="30"/>                   
                   <img  src="assets/img/UsertypeImg/fan-girl.png"  visible="false" alt=""  id="Img2" runat="server"   width="30" height="30"/>                   
                   <img  src="assets/img/UsertypeImg/bman.png" visible="false"  alt=""  id="Img3" runat="server"   width="30" height="30"/>                   

<%--            <asp:Label ID="typeiorf" runat="server" ForeColor="White"   Font-Size="Large"  Visible="false" Text="Label"></asp:Label>--%>

</asp:Content>
