<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="CompleteIndividualMatch.aspx.cs" Inherits="Sabaya_Portal.CompleteIndividualMatch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <li id="firstLI" runat="server"></li>
         <li id="secondLI" runat="server"></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container py-4">  
                <h5 class="text-center text-uppercase">فعاليات فرديه مكتمله</h5>  
                <asp:Repeater ID="Repeater1" runat="server">  
                    <ItemTemplate>  
                        <table class="table table-bordered">  
                            <tr>  
                                <td style="width: 20%;">  
                                    <img alt="" width="100%" class="img-thumbnail"  src="assets/img/2.PNG"  /> 
                                </td>  
                                <td>  
                                                                   <table class="table">  
                                        <tr>  
                                            <td style="width:50%; text-align:right;">عنوان الفعاليه </td>  
                                            <td style="text-align:right;"><%#Eval("TitleOfMatch")%></td>  
                                        </tr>  
                                        <tr>  
                                            <td style="text-align:right;">مكان الفعاليه</td>  
                                            <td style="text-align:right;"><%#Eval("GovName")%> , <%#Eval("ClubName")%> </td>  
                                        </tr>  
                                        <tr>  
                                            <td style="text-align:right;">إسم المباراه</td>  
                                            <td style="text-align:right;"><%#Eval("GameName")%></td>  
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
                        </table>  
                    </ItemTemplate>  
                </asp:Repeater>  
            </div>  

</asp:Content>
