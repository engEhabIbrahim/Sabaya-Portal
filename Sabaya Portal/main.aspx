<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Sabaya_Portal.main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="assets/css/bootstrap.min.css" rel="stylesheet">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id="blog-content" class="section-padding-top full-width">

      <asp:SqlDataSource ID="date" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="SELECT no_leisureID, place, nameofGame, time FROM NOLeisure WHERE (date IN (SELECT CONVERT (nvarchar(50), GETDATE(), 103) AS Expr1))"></asp:SqlDataSource>
                          <asp:SqlDataSource ID="displayEvents" runat="server"></asp:SqlDataSource>
   

   
    
            <div class="container">
        <div class="row">
            <div class="col-xs-12">

                <div id="imageCarousel" class="carousel slide" data-interval="2000"
                     data-ride="carousel" data-pause="hover" data-wrap="true">

                    <ol class="carousel-indicators">
                        <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="1"></li>
                        <li data-target="#imageCarousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                       
                     <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" DataSourceID="date">
            <ItemTemplate>
                  
         
                        <div class="item active">
                            
                                <div class="col-xs-4">
                                    <img src="assets/img/img1.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3><asp:Label ID="Label2" runat="server" Text='<%# Eval("nameofGame") %>'  /></h3>
                                        <h5> <asp:Label ID="Label1" runat="server" Text='<%# Eval("place") %>'  /> </h5>
                                        <h5> <asp:Label ID="Label6" runat="server" Text='<%# Eval("time") %>'  /> </h5>

                                 
                               
                     </div>
                            </div>

                        </div>
               
               
                </ItemTemplate></asp:DataList>
                               
                            </div>
                        
                      
                    </div>

                    <a href="#imageCarousel" class="carousel-control left" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a href="#imageCarousel" class="carousel-control right" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>

            </div>
        </div>
   
    </section>
            <section id="blog-content" class="section-padding-top full-width">
                 <div class="container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="no_leisureID" DataSourceID="sqldispeventingrid" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
<%--                        <asp:BoundField DataField="no_leisureID" HeaderText="no_leisureID" InsertVisible="False" ReadOnly="True" SortExpression="no_leisureID" />--%>
                        <asp:BoundField DataField="TitleOfMatch" HeaderText="عنوان الفعاليه" SortExpression="TitleOfMatch" />
                        <asp:BoundField DataField="place" HeaderText="مكان المباراه" SortExpression="place" />
                        <asp:BoundField DataField="nameofGame" HeaderText="إسم المباره" SortExpression="nameofGame" />
                        <asp:BoundField DataField="TYPE_OFGAME" HeaderText="نوع المباره" SortExpression="typeofGame" />
                        <asp:BoundField DataField="date" HeaderText="تاريخ المباره" SortExpression="date" />
                        <asp:BoundField DataField="time" HeaderText="زمن المباره" SortExpression="time" />
                        <asp:BoundField DataField="NotCompleted" HeaderText="نوع الفعاليه" SortExpression="NotCompleted" />
                        <asp:BoundField DataField="createdby" HeaderText="تم الانشاء بواسطه" SortExpression="createdby" />
                    </Columns>
                    <FooterStyle BackColor="#1ca54d" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1ca54d" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#cbd0f3" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#cbd0f3" ForeColor="#333333" HorizontalAlign="right"  />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="sqldispeventingrid" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="displayeventingrid" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </div>
</section>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
    </script>
</asp:Content>
