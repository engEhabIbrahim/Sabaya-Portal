<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true"  EnableEventValidation="false" CodeBehind="InCompleteteam.aspx.cs" Inherits="Sabaya_Portal.InCompleteteam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container py-4">  
                <h5 class="text-center text-uppercase">فعاليات جماعيه غير مكتمله </h5>  
                <asp:Repeater ID="Repeater1" runat="server">  
                    <ItemTemplate>  
                                                <table class="table table-bordered">  
                            <tr>  
                                <td style="width: 20%;">  
                                    <img alt="" width="100%" class="img-thumbnail"  src="assets/img/3.PNG"  /> 
                                </td>  
                                <td>  
                                    <table class="table">  
                                        <tr>  
                                            <td style="width:50%; text-align:right;">عنوان الفعاليه </td>  
                                            <td style="text-align:right;"><%#Eval("TitleOfMatch")%></td>  
                                        </tr>  
                                        <tr>  
                                            <td style="text-align:right;">مكان الفعاليه</td>  
                                            <td style="text-align:right;"><%#Eval("place")%></td>  
                                        </tr>  
                                        <tr>  
                                            <td style="text-align:right;">إسم المباراه</td>  
                                            <td style="text-align:right;"><%#Eval("nameofGame")%></td>  
                                        </tr>  
                                        <tr>  
                                            <td style="text-align:right;">التاريخ</td>  
                                            <td style="text-align:right;"><%#Eval("date")%></td>  
                                        </tr>  
                                             <tr>  
                                            <td style="text-align:right;">الساعه</td>  
                                            <td style="text-align:right;"><%#Eval("time")%></td>  
                                        </tr>  
                                             <tr>  
                                            <td style="text-align:right;">تم إنشائها بواسطه</td>  
                                            <td style="text-align:right;"><%#Eval("createdby")%></td>  
                                        </tr>  
                                              
                                    </table>  
                                </td> 
                                 
                            </tr>
                            <tr>
                                <td style="text-align:right;"><asp:Label ID="Match" runat="server" Visible="false" Text='<%# Eval("no_leisureID") %>'  /> </td>  

                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="إنضمام" class="btn btn-primary btn-block" OnClick="GetValue"  />
                                </td>
                            </tr>  
                        </table>  
  
                    </ItemTemplate>  
                </asp:Repeater>  
            </div>  

</asp:Content>
