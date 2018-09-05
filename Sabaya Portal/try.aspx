<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="try.aspx.cs" Inherits="Sabaya_Portal._try" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
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
          <asp:SqlDataSource ID="Clubdata" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="SelectTop4Clubs" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

</asp:Content>
