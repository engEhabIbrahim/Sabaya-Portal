<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sabaya_Portal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:DataList ID="DataList1" runat="server" DataSourceID="NewsDatasource"   RepeatDirection="Horizontal"  DataKeyField="Id">
                           
                     <ItemTemplate>
        <div class="col-md-3">
                    <div class="team-member">
                         Id:
                         <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                         <br />
                         Title:
                         <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                         <br />
                         image:
                         <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                         <br />
                         <br />
                         </div>
                             </div>
                </ItemTemplate>       
              </asp:DataList>
              </div>
              

             <asp:SqlDataSource ID="NewsDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString %>" SelectCommand="DisplayNews" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
              
              
    </div>
    </form>
</body>
</html>
