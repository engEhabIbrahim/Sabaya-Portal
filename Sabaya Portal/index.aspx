<%@ Page Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="index.aspx.cs" Inherits="Sabaya_Portal.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="contact" class="section-padding" style="padding-top:25px; padding-bottom:10px;">
        <div class="container">
            <div class="row">

                           <div class="col-lg-6 contact-info">
            
                    <div class="row" >
                        <div class="col-lg-10 offset-lg-1">                    
                            <div class="section-header text-center">
                                <h2>احدث الفعاليات الفرديه</h2>
                            </div>
                        </div>
                    </div>
             <asp:Repeater ID="TOP3CompleteIndividual" runat="server" DataSourceID="IndividualDatasource">
                <ItemTemplate>
                    <div class="info-box">
                        <i class="fa fa-spinner"></i>
                          <h4 style="text-align:right"> <%# Eval("GameName")%> , <%# Eval("GovName")%>, <%# Eval("ClubName")%> </h4>
                        <p style="text-align:right"><%# Eval("time")%></p> 
                    </div>
                    </ItemTemplate>

                    </asp:Repeater>
                   <asp:SqlDataSource ID="IndividualDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="SelectTop3" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                </div>
                   <div class="col-lg-6 contact-info">
            
                    <div class="row">
                        <div class="col-lg-10 offset-lg-1">                    
                            <div class="section-header text-center">
                                <h2>احدث الفعاليات الجماعيه </h2>
                            </div>
                        </div>
                    </div>
                         <asp:Repeater ID="TOP3Completeteam" runat="server" DataSourceID="teamDatasource">
                <ItemTemplate>
                    <div class="info-box">
                         <i class="fa fa-check-square"></i>
                          <h4 style="text-align:right"> <%# Eval("GameName")%> , <%# Eval("GovName")%>, <%# Eval("ClubName")%> </h4>
                        <p style="text-align:right"><%# Eval("time")%></p>  

                    </div>
                     </ItemTemplate>

                    </asp:Repeater>
                   <asp:SqlDataSource ID="teamDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="SelectTop3team" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                </div>


            </div>
              <div class="row">
                        <div class="col-lg-12 offset-lg-1">                    
                            <div class="section-header text-center">
                                <h2>احدث الاخبار</h2>
                            </div>
                        </div>
                    </div>
           <div class="row">
            <asp:Repeater ID="myRepeater" runat="server" DataSourceID="NewsDatasource">
                <ItemTemplate>
                <div class="col-sm-3">
                         <div class="team-member">
                        <img src= '<%# Eval("image")%>' runat="server" width="297" height="170"  alt="">
                             <div class="team-footer">
          <a href="NewsDetails.aspx?Id=<%#Eval("Id")%>"> 

                     <p>   <%# Eval("Title")%> </p>
                                               </div>
                             </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div> 

        </div>

    </section>
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
   
  
     <section id="recent-blog" class="section-padding" style="padding-top:25px; padding-bottom:10px;">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2  >الملاعب</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                  <asp:Repeater ID="ClubsRepeater" runat="server" DataSourceID="Clubdata">
                <ItemTemplate>
                <div class="col-lg-6 mb-4">
                    <article class="recent-blog-post">
                        <div class="post-thumb">
                                <img src= '<%# Eval("Clubimage")%>' runat="server" width="260" height="150" alt="">
                          <%--  <div class="post-author">
                                <img src="assets/img/author01.png" alt="">
                            </div>--%>
                        </div>
                        <div class="post-content">                            
                         
                               <a href="ClubDetails.aspx?Id=<%#Eval("ClubID")%>" class="posted-by"><%# Eval("ClubName")%></a>
                            
                                
                            <h6 style="float:right;"><span class="post-date"><%# Eval("GovName")%> </span></h6>
                
                            <h5 class="post-title"><a href="blog-single.html"><%# Eval("GameName")%></a></h5>
                            <a href="ClubDetails.aspx?Id=<%#Eval("ClubID")%>" class="boxed-btn"><i class="fas fa-angle-left"></i>عرض التفاصيل </a>
                        </div>
                    </article>
                </div>
                    </ItemTemplate>
                      </asp:Repeater>
            </div>
            

        </div>
    </section>
          <asp:SqlDataSource ID="Clubdata" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="select4clubs" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

        <section id="faq" class="section-padding" style="padding-top:5px; padding-bottom:10px;">

     <div class="faq-area area-padding">
    <div class="container">
          <div class="row">
                <div class="col-lg-12 offset-lg-3">                    
                    <div class="section-header text-center">
                        <h2  >انواع الرياضات والفرق</h2>
                    </div>
                </div>
            </div>
        <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="faq-details">
            <div class="panel-group" id="accordion">
              <!-- Panel Default -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="check-title">
											<a data-toggle="collapse" class="active" data-parent="#accordion" href="#check1">
                                                   <p style="float:right"> العاب فرديه</p>    <span class="fa fa-angle-down arrow"></span>
											</a>
										</h4>
                </div>
                <div id="check1" class="panel-collapse collapse in">
                  <div class="panel-body">
                      <asp:Repeater ID="individualGameName" runat="server" DataSourceID="individualName">
                          <ItemTemplate>
                    <p style="text-align:right">
                        <i  class="fa fa-angle-double-left"></i>  <a href="#"> <%# Eval("GameName")%></a>                  
 <br /><br />
                        
 
                    </p>
                              </ItemTemplate>
                          </asp:Repeater>
                  </div>
                </div>
              </div>
              <!-- End Panel Default -->
          
        
       
            </div>
          </div>
        </div>
 <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="faq-details">
            <div class="panel-group" id="accordion">
              <!-- Panel Default -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="check-title">
											<a data-toggle="collapse" class="active" data-parent="#accordion" href="#check2">
                                                <p style="float:right"> العاب جماعيه</p>               <span class="fa fa-angle-down arrow"></span>
											</a>
										</h4>
                </div>
                <div id="check2" class="panel-collapse collapse in">
                  <div class="panel-body">
                      <asp:Repeater ID="TeamGameName" runat="server" DataSourceID="TeamName">
                          <ItemTemplate>
                    <p style="text-align:right">
                        <i  class="fa fa-angle-double-left"></i>  <a href="#"> <%# Eval("GameName")%></a>                  
 <br /><br />
                        
 
                    </p>
                              </ItemTemplate>
                          </asp:Repeater>
                  </div>
                </div>
              </div>
              <!-- End Panel Default -->
          
        
       
            </div>
          </div>

        </div>
      </div>
      <!-- end Row -->
    </div>
  </div>
</section>

    
    <!--===// End: Recent Blog
    =================================-->
      <asp:SqlDataSource ID="individualName" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="selectIndividualGameName" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
          <asp:SqlDataSource ID="TeamName" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="selectTeamGameName" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

  
  <asp:SqlDataSource ID="NewsDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="SelectTop4" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                     
                        <li id="firstLI" runat="server"></li>
                        <li id="secondLI" runat="server"></li>
</asp:Content>
 