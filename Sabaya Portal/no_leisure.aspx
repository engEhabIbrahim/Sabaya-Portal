<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true"   CodeBehind="no_leisure.aspx.cs"  Inherits="Sabaya_Portal.no_leisure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--      <link href="styles/jquery-ui.css" rel="stylesheet" />
    <script src="scripts/jquery-1.11.3.min.js"></script>
    <script src="scripts/jquery-ui.js"></script>
     <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txtFromDate.ClientID %>").datepicker({ dateFormat: 'dd-mm-yy' });
            $("#<%=txtToDate.ClientID %>").datepicker({ dateFormat: 'dd-mm-yy' });
        });
    </script>--%>
        <script type="text/javascript">
        $(function () {
            $('[id*=txtDatePicker]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
         <div class="col-md-6 col-md-offset-6">
 
            <form class="form-horizontal" role="form">
                <h2 id="head" runat="server">لا للفراغ</h2>
                  <div class="form-group">
                    <label for="txttitle" class="col-sm-3 control-label" style="float:right">إنشاء فعاليه او مباراه</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txttitle" runat="server"  placeholder="عنوان الفعاليه " class="form-control"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txttitle" runat="server" ErrorMessage="مطلوب"></asp:RequiredFieldValidator>
                       </div>
                </div>
                <br />
                <div class="form-group">
                    <label for="Txtplace" class="col-sm-3 control-label" style="float:right">مكان المباره</label>
                    <div class="col-sm-">                        
                       <asp:Textbox id="Txtplace" runat="server" placeholder="مكان المباراه" class="form-control" autofocus />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="Txtplace" runat="server" ErrorMessage="مطلوب"></asp:RequiredFieldValidator>

                         
                    </div>

                </div>
                <br />
                   <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style="float:right">إسم المباراه</label>
                    <div class="col-sm-">
                       <asp:TextBox id="txtname" runat="server"  placeholder="مباراه كره قدم " class="form-control" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtname" runat="server" ErrorMessage="مطلوب"></asp:RequiredFieldValidator>

                         </div>
                </div>
                <br />
              <div class="form-group">
                    <label for="Image" class="col-sm-3 control-label" style="float:right">نوع المباراه </label>
                    <div class="col-sm-">
                      <asp:DropDownList ID="Ddtypeofgame" class=" col-lg-6 col-sm-3" runat="server">
     <asp:ListItem Enabled="true" Text="---" Value="-1"></asp:ListItem>
    <asp:ListItem Text="فرديه" Value="1"></asp:ListItem>
    <asp:ListItem Text="جماعيه" Value="2"></asp:ListItem>
     </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvType" runat="server" ControlToValidate="Ddtypeofgame" 
                            InitialValue="-1" ForeColor="Red" ErrorMessage="مطلوب"></asp:RequiredFieldValidator>
                        </div>
                </div>
             
               <br />
                  <div class="form-group">
                    <label for="txttime" class="col-sm-3 control-label" style="float:right">الساعه</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txttime" runat="server"  placeholder="10 ص " class="form-control"/>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txttime" runat="server" ErrorMessage="مطلوب"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style="float:right">تاريخ المباره</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txtDatePicker" runat="server"  placeholder="التاريخ" class="form-control"/>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtDatePicker" runat="server" ErrorMessage="مطلوب"></asp:RequiredFieldValidator>


                    </div>
                </div>
                
                
               
                <div class="form-group">
                    <div class="col-sm-6 col-sm-offset-3" >
                        <asp:Button ID="BtnRegister" runat="server" Text="اضافة" class="btn btn-primary btn-block" OnClick="BtnRegister_Click"  />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </form> <!-- /form -->
          </div>
                                  <hr />

    </div>
  
</asp:Content>
