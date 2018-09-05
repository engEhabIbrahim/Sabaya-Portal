<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="ClubDetails.aspx.cs" Inherits="Sabaya_Portal.ClubDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
 #about img
{
    border: 5px solid #1ca54d;
    border-radius: 2px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <section id="about" class="section-padding" style="padding-top:25px; padding-bottom:10px;">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center marb-35">
          <h1 class="header-h"><asp:Label ID="lblClubName" runat="server" Text="Label"></asp:Label></h1>
          <p class="header-p">
              <asp:Label ID="lblGov" runat="server" Text="Label"></asp:Label>
            <br>
              <asp:Label ID="lblClubAdress" runat="server" Text="Label"></asp:Label> </p>
        </div>
          </div>
         <div class="row" style="padding-top:10px; padding-bottom:10px;" >
          <div class="col-md-1"></div>
          <div class="col-md-5 col-sm-5">
            <div class="about-info">
<%--              <h2 class="heading">vel illum qui dolorem eum</h2>--%>
<%--              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero impedit inventore culpa vero accusamus in nostrum dignissimos modi, molestiae. Autem iusto esse necessitatibus ex corporis earum quaerat voluptates quibusdam dicta!</p>--%>
              <div class="details-list" style="text-align:right">
                <ul>
                  <li>
                      
                      <i class="fa fa-calendar"></i>
                     تاريخ التأسيس      :
                      <asp:Label ID="lblestablishdate" runat="server" Text="Label"></asp:Label></li>
                  <li><i class="fa fa-user-circle"></i>
                  رئيس النادي      :
                      <asp:Label ID="lblManager" runat="server" Text="Label"></asp:Label></li>
                  <li><i class="fa fa-life-ring"></i>
                     الموقع الرسمي      :
                      <asp:Label ID="lblweblink" runat="server" Text="Label"></asp:Label> </li>
                  <li><i class="fa fa-check"></i>
  الالعاب :
                      <asp:Label ID="lblGames" runat="server" Text="Label"></asp:Label></li>
                </ul>
              </div>
            </div>
          </div>
             
          <div class="col-md-5 col-sm-5">
                <asp:Image ID="ClubNews" runat="server"  alt="" class="img-responsive" width="500" Height="330" />
<%--            <img src="assets/img/Clubs/Club1.jpg" alt="" class="img-responsive">--%>
          </div>
             <div class="col-md-1"></div>
        </div>
         
      </div>
    
      
  </section>
  <!--/about-->
</asp:Content>
