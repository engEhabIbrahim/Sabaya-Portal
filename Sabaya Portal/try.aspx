<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="try.aspx.cs" Inherits="Sabaya_Portal._try" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="wrap-input100 " >
                    <span class="label-input100">البلد  </span>
                     <asp:DropDownList ID="DropCountry"   runat="server"  OnSelectedIndexChanged ="DropCountry_Changed" style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top:0px; direction:rtl" AutoPostBack = "true"></asp:DropDownList>
                    </div>
                    	<div class="wrap-input100 " >
                              <span class="label-input100">المحافظه  </span>
                     <asp:DropDownList ID="DropGOV"   runat="server" OnSelectedIndexChanged ="DropGOV_Changed" style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top:0px; direction:rtl" AutoPostBack = "true"></asp:DropDownList>
                    </div>
                    	<div class="wrap-input100 " >
                              <span class="label-input100">المدينه  </span>
                     <asp:DropDownList ID="DropCity"   runat="server"  style="margin-top:20px; margin-bottom:40px; padding-bottom:0px;padding-top:0px; direction:rtl" AutoPostBack = "true"></asp:DropDownList>
</div>
 


</asp:Content>
