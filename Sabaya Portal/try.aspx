<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="try.aspx.cs" Inherits="Sabaya_Portal._try" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        a {
  color: #666666;
}

.libreProfileSpan {
  margin-left: 10px;
}

.librePanelHeading {
  padding: 5px 10px;
}

.librePanelListGroupItem {
  padding: 5px 15px;
}

.librePanelSubListGroupItem {
  padding: 0px;
}

.libreMenuIcon {
  padding: 5px 3px;
}
    </style>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
   <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
        <div class="panel panel-default">
            <div class="panel-heading librePanelHeading">
                <div class="panel-title">
                     


                    <a data-toggle="collapse" href="#menu2PanelListGroup">
                       <span class="fa fa-angle-down arrow"></span> <span style="float:right">اخترالدولة</span>
                    </a>
                </div>
            </div>
            <ul class="list-group collapse " id="menu2PanelListGroup">
                <li class="list-group-item librePanelListGroupItem">
                    <a data-toggle="collapse" href="#ContentPlaceHolder1_menu2PanelSubListGroup">
                        <span class="fa fa-angle-down arrow"></span>
                        <span style="float:right">المملكة العربية السعودية</span>
                    </a>

                    <ul id="menu2PanelSubListGroup" class="collapse librePanelSubListGroupItem" runat="server">
                        <%--<li class="list-group-item librePanelListGroupItem">
                             <a data-toggle="collapse" href="#menu2PanelGovernments">
                            <span class="fa fa-angle-down arrow"></span>
                            <span style="float:right">الرياض</span></a>      
                           <%-- <ul id="menu2PanelGovernments" class="collapse librePanelSubListGroupItem">
                           <li class="list-group-item librePanelListGroupItem">
                            <span><a href="#">SubItem 1</a></span>

                           </li>
                              </ul>--%>

                        <%--</li>
                        <li class="list-group-item librePanelListGroupItem">
                            <span>SubItem 2</span>
                        </li>
                        <li class="list-group-item librePanelListGroupItem">
                            <span>SubItem 3</span>
                        </li>--%>
                    </ul>

                </li>
               
            </ul>
        </div>
    </div>
</asp:Content>
