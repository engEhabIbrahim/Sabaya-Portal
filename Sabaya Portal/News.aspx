<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Sabaya_Portal.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section id="our-team" class="section-padding-top">
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
                                               </div>
                             </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>      

       </div>
  </section>
       


             
                           <asp:SqlDataSource ID="NewsDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="DisplayNews" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    
</asp:Content>
