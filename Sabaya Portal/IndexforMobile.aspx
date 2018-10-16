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
  .slide_1, 
.slide_2, 
.slide_3 {
	color:white;
	height:400px;
}



/* 
 * 		Slider styles
 * */
.csstransforms .as-wrap { transition: opacity 1s ease-out; }
.as-wrap {
	display:none;
	opacity: 0;
	position: relative;
	overflow: hidden;
	width: 100%;
}
.as-wrap.loaded {opacity: 1;}
.as-wrap .as-view {
	position: relative;
	width:100%;
	overflow: hidden;
	height:400px;
}
.as-wrap .as-view .as-slider {
	position: absolute;
	list-style: none;
	margin:0; padding:0;
}
.csstransforms .as-wrap .as-view .as-slider { transition: left 1s ease-in-out; }
.csstransforms .as-wrap .as-view .as-slider.no-transition { transition: none; }
.as-wrap .as-view .as-slider .as-item {
	position: relative;
	overflow: hidden;
	margin:0; padding:0;
	float: left;
}

/* Progress bar */
.as-wrap .as-progress {
	position: relative;
	width: 100%;
	min-height:5px;
	margin-top:-5px;
	background: transparent;
	overflow: hidden;
	z-index:2;
}

.as-wrap .as-progress-value {
	position: absolute;
	top:0;
	left:0;
	min-height: 5px;
	min-width: 0;
	width:0;
	max-width: 100%;
	background: lime;
}

/* Navigation */
.csstransforms .as-wrap .as-nav a { transition: opacity .4s ease-out; }
.as-wrap .as-nav a {
	opacity: 0;
	position: absolute;
	top:0;
	height:100%;
	width:50px;
	text-align:center;
	color:white;
	z-index:2;
}
.as-wrap .as-nav .dir-prev { left:0; }
.as-wrap .as-nav .dir-next { right:0; }
.as-wrap .as-nav a:hover { 
	color:#000;
	opacity: 1;
}
.as-wrap.hovering-marker .as-nav a { opacity: 1; }
.as-wrap .as-nav a span {
	position: absolute;
	top:50%;
	left:0;
	margin-top:-40px;
	display:block;
	height:80px;
	width: 50px;
	background:lime;
	font-size:2em;
	line-height: 80px;
}

/* Marker */
.as-wrap .as-markers {
	list-style: none;
	text-align: center;
	padding:0; margin:0;
}
.as-wrap .as-markers .as-mark {
	display:inline-block;
	margin:10px 5px 0 5px;
}
.as-wrap .as-markers .as-mark a {
	display:block;
	text-decoration: none;
	color:#ccc;
}
.as-wrap .as-markers .as-mark a:hover, 
.as-wrap .as-markers .as-mark.active a { color:lime; }
.as-wrap .as-markers .as-mark a span {
	display:block;
	width: 10px;
	height:10px;
	font-size:40px;
	line-height: 10px;
}

/* Caption */
.as-wrap .as-item .caption {
	position: absolute;
	top:0;
	left:0;
	height: 100%;
	width:40%;
	background: #000;
	z-index:2;
	padding:0 20px 0 60px;
	box-sizing: border-box;
}
.rgba .as-wrap .as-item .caption { background:rgba(0,0,0,.5); }

@media (max-width: 767px) {
	/* Demo style */

	.slide_1, .slide_2, .slide_3 {background-size: auto 100%;}
  .container {width:100%}
	/* *** */
	.as-wrap .as-view { height: 250px; }
	.as-wrap .as-view .as-slider .as-item .caption { width:100%; }
	.touch .as-wrap .as-nav { display:none;}
.as-wrap .as-item .caption {padding:1em;}
}

  .post-container {
    margin: 20px 20px 0 0;  
    border: 1px solid #333;
    overflow: auto
}
.post-thumb {
    float: left
}
.post-thumb img {
    display: block
}
.post-content {
    margin-left: 210px
}
.post-title {
    font-weight: bold;
    font-size: 200%;
    padding: 9px;
    background: #ccc
   
}
 .post-container2 {
    margin: 20px 20px 0 0;  
    border: 1px solid #333;
    overflow: auto
}
.post-thumb2 {
    float: right
}
.post-thumb2 img {
    display: block
}
.post-content2 {
    margin-left: 210px
}
.post-title2 {
    font-weight: bold;
    font-size: 200%;
    padding: 9px;
    background: #ccc
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
  
    <div class="post-container">
    <div class="post-thumb"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content">
        <p>ost desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>
     
<div class="post-container2">
    <div class="post-thumb2"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content2">
        <p> post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>
      <div class="post-container">
    <div class="post-thumb"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content">
        <p>ost desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>
     
<div class="post-container2">
    <div class="post-thumb2"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content2">
        <p> post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>

             
                           <asp:SqlDataSource ID="NewsDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="selectTopOneNews" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    


             

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

      <div class="post-container">
    <div class="post-thumb"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content">
        <p>ost desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>
     
<div class="post-container2">
    <div class="post-thumb2"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content2">
        <p> post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>
      <div class="post-container">
    <div class="post-thumb"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content">
        <p>ost desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>
     
<div class="post-container2">
    <div class="post-thumb2"><img src="http://dummyimage.com/200x200/f0f/fff" /></div>
    <div class="post-content2">
        <p> post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc post desc </p></div>
</div>

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
