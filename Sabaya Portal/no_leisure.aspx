﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true"  EnableEventValidation="false"  CodeBehind="no_leisure.aspx.cs"  Inherits="Sabaya_Portal.no_leisure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!-- Custom CSS -->
    
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <!-- Bootstrap -->
    <!-- Bootstrap DatePicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css"
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
                        <li id="firstLI" runat="server"></li>
                        <li id="secondLI" runat="server"></li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
         <div class="col-md-6 col-md-offset-6">
 
<%--            <form class="form-horizontal" role="form">--%>
                <h2 id="head" runat="server">لا للفراغ</h2>
                  <div class="form-group">
                    <label for="txttitle" class="col-sm-3 control-label" style="float:right">إنشاء فعاليه او مباراه</label>
                    <div class="col-sm-">
                         <asp:Textbox id="txttitle" runat="server"  placeholder="عنوان الفعاليه " class="form-control"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txttitle" runat="server" ErrorMessage="مطلوب"></asp:RequiredFieldValidator>
                       </div>
                </div>
                <br />
              

            
                                     <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                             <div class="form-group">
         <label for="Image" class="col-sm-3 control-label" style="float:right">نوع المباراه </label>

        <asp:DropDownList ID="DropMatch" class=" col-lg-6 col-sm-3"  runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "DropMatch_Changed"></asp:DropDownList> </div>
      <div class="form-group">
           
           <label for="Image" class="col-sm-3 control-label" style="float:right">إسم المباراه </label>

      <asp:DropDownList ID="DropAllGames"  class=" col-lg-6 col-sm-3"  runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "DropAllGames_Changed" ></asp:DropDownList>
        </div>
          <div class="form-group">
           <label for="Image" class="col-sm-3 control-label" style="float:right">المدينه </label>

      <asp:DropDownList ID="DropAllGov"  class=" col-lg-6 col-sm-3"  runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "DropAllGov_Changed" ></asp:DropDownList>
        </div>
          <div class="form-group">
           <label for="Image" class="col-sm-3 control-label" style="float:right">النادي </label>

      <asp:DropDownList ID="DropClub"  class=" col-lg-6 col-sm-3"  runat="server" AutoPostBack = "true"></asp:DropDownList>
</div>
     
            </ContentTemplate>
                        </asp:UpdatePanel>

             

             
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
<%--            </form> <!-- /form -->--%>
          </div>
                                  <hr />

    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"
        type="text/javascript"></script>
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
