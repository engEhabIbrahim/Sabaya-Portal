<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="No_leisure.aspx.cs" Inherits="Sabaya_Portal.No_leisure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-4">
         </div>
            <div class="col-md-4">
     <div class="panel panel-default">
      <div class="panel-body">
            <form class="form-horizontal" role="form">
                <h2 id="head" runat="server">إضافه منتج جديد</h2>
                  <div class="form-group">
                    <label for="code" class="col-sm-3 control-label" style="float:right">كود المنتج</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txtProcode" runat="server"  placeholder="كود المنتج" class="form-control"/>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                                      ControlToValidate="txtProcode" ForeColor="red"
                                      Display="Static" ErrorMessage="مطلوب" Font-Size="Medium" />
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label" style="float:right">اسم المنتج</label>
                    <div class="col-sm-">
                        <%--<input type="text" name="FullName" placeholder="اسم المنتج" class="form-control" autofocus/>--%>
                        
                       <asp:Textbox id="txtName" runat="server" placeholder="اسم المنتج" class="form-control" autofocus />
                        <asp:RequiredFieldValidator id="TitleRequiredValidator" runat="server"
                                      ControlToValidate="txtName" ForeColor="red"
                                      Display="Static" ErrorMessage="مطلوب" />
                         
                    </div>

                </div>
                <br />
                   <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style="float:right">وصف المنتج</label>
                    <div class="col-sm-">
                        <%--<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>--%>
                       <asp:TextBox id="txtDesc" runat="server"  placeholder="وصف المنتج " class="form-control" TextMode="multiline" Rows="3" />
                    <asp:RequiredFieldValidator id="DescRequiredFieldValidator1" runat="server"
                                      ControlToValidate="txtDesc" ForeColor="red"
                                      Display="Static" ErrorMessage="مطلوب" />
                         </div>
                </div>
                <br />
              <div class="form-group">
                    <label for="Image" class="col-sm-3 control-label" style="float:right">صورة المنتج</label>
                    <div class="col-sm-">
                        <%--<asp:Image ID="imgDemo" runat="server" class="form-control" />--%>
                        <asp:FileUpload ID="FileUploadProductImage" runat="server" class="form-control"  />
                        <asp:RequiredFieldValidator id="imageRequiredFieldValidator" runat="server"
                                      ControlToValidate="FileUploadProductImage" ForeColor="red"
                                      Display="Static" ErrorMessage="Required" />
                        <asp:RegularExpressionValidator ID="RegularExpressionFileUpload" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$"
                       ControlToValidate="FileUploadProductImage" runat="server" ForeColor="Red" ErrorMessage="Please select a valid png ,gif  or jpg image."
                           Display="Dynamic" />
                        </div>
                </div>
             
               <br />
                  <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style="float:right">رابط المنتج</label>
                    <div class="col-sm-">
                        <%--<input type="email" name="email" placeholder="السعر بالدولار" class="form-control"/>--%>
                         <asp:Textbox id="txtprolink" runat="server"  placeholder="رابط المنتج" class="form-control"/>
                     <asp:RequiredFieldValidator id="PriceRequiredValidator" runat="server"
                                      ControlToValidate="txtprolink" ForeColor="red"
                                      Display="Static" ErrorMessage="مطلوب" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style="float:right">كميه المنتج</label>
                    <div class="col-sm-">
                        <%--<input type="email" name="email" placeholder="السعر بالدولار" class="form-control"/>--%>
                         <asp:Textbox id="txtproqty" runat="server"  placeholder="كميه المنتج" class="form-control"/>

                    </div>
                </div>
                
                
               
                <div class="form-group">
                    <div class="col-sm-6 col-sm-offset-3" >
                        <asp:Button ID="BtnRegister" runat="server" Text="اضافة" class="btn btn-primary btn-block "/>
                    </div>
                </div>
            </form> <!-- /form -->
          </div> </div> 
                                  <hr />

    </div>
    <div class="col-md-4">
        </div>
</asp:Content>
