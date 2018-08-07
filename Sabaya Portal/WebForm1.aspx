<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sabaya_Portal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style type="text/css">
        body
        {
            padding: 20px !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

         <div class="col-md-4 col-md-offset-4">
 
                <h2 id="head" runat="server">لا للفراغ</h2>
                  <div class="form-group">
                    <label for="txttitle" class="col-sm-3 control-label" style="float:right">إنشاء فعاليه او مباراه</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txttitle" runat="server"  placeholder="عنوان الفعاليه " class="form-control"/>
                       </div>
                </div>
                <br />
                <div class="form-group">
                    <label for="Txtplace" class="col-sm-3 control-label" style="float:right">مكان المباره</label>
                    <div class="col-sm-">                        
                       <asp:Textbox id="Txtplace" runat="server" placeholder="مكان المباراه" class="form-control" autofocus />
                        
                         
                    </div>

                </div>
                <br />
                   <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style="float:right">إسم المباراه</label>
                    <div class="col-sm-">
                       <asp:TextBox id="txtname" runat="server"  placeholder="مباراه كره قدم " class="form-control" TextMode="multiline" Rows="3" />
              
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
                        </div>
                </div>
             
               <br />
                  <div class="form-group">
                    <label for="txttime" class="col-sm-3 control-label" style="float:right">الساعه</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txttime" runat="server"  placeholder="10 ص " class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style="float:right">تاريخ المباره</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txtDate" runat="server"  placeholder="التاريخ" class="form-control"/>

                    </div>
                </div>
                
                
               
                <div class="form-group">
                    <div class="col-sm-6 col-sm-offset-3" >
                        <asp:Button ID="BtnRegister" runat="server" Text="اضافة" class="btn btn-primary btn-block"  OnClick="btnSubmit_Click"/>
                    </div>
                </div>
             <!-- /form -->
          </div> 
                                 

    </div>

    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
        media="screen" />
    <!-- Bootstrap -->
    <!-- Bootstrap DatePicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css"
        type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"
        type="text/javascript"></script>
    <!-- Bootstrap DatePicker -->
    <script type="text/javascript">
        $(function () {
            $('[id*=txtDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
    </script>
    </form>
</body>
</html>
