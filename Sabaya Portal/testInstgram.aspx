<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testInstgram.aspx.cs" Inherits="Sabaya_Portal.testInstgram" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <div class="row" >
        <div class="col-md-6 col-sm-6 col-xs-12" style="padding-top:15px;">
          <div class="faq-details">
            <div class="panel-group" id="accordion">
              <!-- Panel Default -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="check-title">
											<a data-toggle="collapse" class="active" data-parent="#accordion" href="#check1">
                                                   <p style="float:right"> اختر الدولة</p>    <span class="fa fa-angle-down arrow"></span>
											</a>
										</h4>
                </div>
                <div id="check1" class="panel-collapse collapse in">
                  <div class="panel-body">
                      <asp:Repeater ID="individualGameName" runat="server" DataSourceID="SqlDataSource1">
                          <ItemTemplate>
                    <p style="text-align:right">
                        <i  class="fa fa-angle-double-left"></i>  <a href="#"> <%# Eval("CountryName")%></a>                  
 <br /><br />
                        
 
                    </p>
                              </ItemTemplate>
                          </asp:Repeater>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SabayaDBConnectionString2 %>" SelectCommand="SELECT Countries.* FROM Countries"></asp:SqlDataSource>
                  </div>
                </div>
              </div>
              <!-- End Panel Default -->
          
        
       
            </div>
          </div>
        </div>
      </div>

    </form>
</body>
</html>
