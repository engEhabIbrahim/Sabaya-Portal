<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="no_leisure.aspx.cs" Inherits="Sabaya_Portal.no_leisure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
  <h2 style="text-align:center">لا للفراغ </h2>
 
    <div class="form-group">
      <label for="usr" class=" col-sm-3" style="float:right;" >إنشاء فعاليه او مباراه</label>
      <input type="text"  class="form-control  col-sm-3" id="usr">
    </div>
    <div class="form-group">
      <label for="place" class=" col-sm-3" style="float:right;" >مكان المباره </label>
      <input type="text" class="form-control col-sm-3" id="place">
    </div>
    <div class="form-group">
      <label for="place" class=" col-sm-3" style="float:right;" >نوع المباراه  </label>
        <asp:DropDownList class=" col-sm-3" style="float:right;" ID="DropDownList1" runat="server">
            <asp:ListItem>
                فرديه
            </asp:ListItem>
                  <asp:ListItem>
                جماعيه
            </asp:ListItem>
        </asp:DropDownList>
    </div>
        
            <div class="form-group">
     
    </div>
            <div class="form-group">
      <label for="usr" class=" col-sm-3" style="float:right;" > إسم المباراه </label>
      <input type="text"  class="form-control  col-sm-3" id="nameofthematch">
    </div>
              <div class="form-group">
     
    </div>
            <div class="form-group">
      <label for="usr" class=" col-sm-3" style="float:right;" >موعد المباره </label>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
        <div class="form-group">
      <label for="usr" class=" col-sm-3" style="float:right;" > الساعه </label>
      <input type="text"  class="form-control  col-sm-3" id="time">
    </div>
</div>

</asp:Content>
