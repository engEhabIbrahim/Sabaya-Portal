<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Matches.aspx.cs" Inherits="Sabaya_Portal.Matches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <li id="firstLI" runat="server"></li>
     <li id="secondLI" runat="server"></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container py-4">  
                <h5 class="text-center text-uppercase">فعاليات جماعيه مكتمله</h5>  
                <asp:Repeater ID="completeam" runat="server">  
                    <ItemTemplate>  
                        <table class="table table-bordered">  
                            <tr>  
                                <td style="width: 20%;">  
                                    <img alt=""  width="100%" class="img-thumbnail"  src="assets/img/2.PNG" />
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
    <div class="container py-4">  
                <h5 class="text-center text-uppercase">فعاليات فرديه مكتمله</h5>  
                <asp:Repeater ID="CompleteIndividual" runat="server">  
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

    <div class="container py-4">  
                <h5 class="text-center text-uppercase">فعاليات جماعيه غير مكتمله </h5>  
                <asp:Repeater ID="Incompleteteam" runat="server">  
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
      <div class="container py-4">  
                <h5 class="text-center text-uppercase">فعاليات فرديه غير مكتمله </h5>  
                <asp:Repeater ID="inCompleteIndividual" runat="server" >  
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
                            <tr>      
                                 <td style="text-align:right;"><asp:Label ID="Matchindividual"  Visible="false" runat="server" Text='<%# Eval("no_leisureID") %>'  /> </td>  

                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="إنضمام" class="btn btn-primary btn-block" OnClick="GetValue2"  />
                                </td>
                            </tr>  
                        </table>  
  
                    </ItemTemplate>  
                </asp:Repeater>  
            </div>    
</asp:Content>
