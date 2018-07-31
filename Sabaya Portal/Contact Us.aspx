<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="Sabaya_Portal.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!--===// Start:  Breadcrumb
    =================================-->

    <section id="breadcrumb-area" style="background-image: url(assets/img/bg/breadcrumbg-bg.png)">
        <div class="container">
            <div class="row">
                <div class="col-12">
<%--                    <h2 style="float: right; text-align: right;"><span>إتصل بنا </span></h2>--%>
                    <ul class="breadcrumb-nav list-inline" style="float: right; text-align: right;">
                        <li><a href="index.aspx">الرئيسيه</a></li>
                        <li class="active">إتصل بنا</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
      <!--===// Start: Contact
    =================================-->

    <section id="contact" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 contact-form mb-5 mb-lg-0">
            
                    <div class="row">
                        <div class="col-lg-10 offset-lg-1">                    
                            <div class="section-header text-center">
<%--                                <h2>Get in touch</h2>--%>
                                <p>يمكنك التواصل معنا من خلال إرسال البيانات الاتيه وسيتم التواصل معك فورا</p>
                            </div>
                        </div>
                    </div>

                    <form action="#">                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-wrapper">
                                    <%--<input type="text" required>
                                    <label>Name</label>--%>
      <asp:TextBox ID="txtName" runat="server" placeholder="الأسم"  style="direction:rtl;" />
     <br />
                                                         <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtName" runat="server" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-wrapper">
                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="الإيميل"  style="direction:rtl;"/>
    <br />
                                     <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
                                    <%--<input type="email" required>
                                    <label>mail@mail.com</label>--%>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="input-wrapper">
                                       <asp:TextBox ID="txtSubject" runat="server" placeholder="العنوان"  style="direction:rtl;"/>
    <br />
                                    
                                     <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtSubject"
                                runat="server" >
    </asp:RequiredFieldValidator><br />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="input-wrapper">
                                    <%--<textarea rows="3" placeholder=""></textarea>
                                    <label>Message</label>--%>
           <asp:TextBox ID="txtMessage" runat="server"  placeholder="الرساله"  style="direction:rtl;"
                TextMode="MultiLine"/>
                                    <br />
                                     <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtMessage"  runat="server" 
                             >
    </asp:RequiredFieldValidator><br />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-6">
                           <asp:Button ID="btnSubmit" runat="server" style="text-align:center; position:center; color:white"  class="boxed-btn" Text="Submit" />
    
<%--                        <button class="boxed-btn">Send Message</button>--%>
    </div>
                                             </form>

                </div>
                <div class="col-lg-3"></div>

<%--                <div class="col-lg-6 contact-info">
            
                    <div class="row">
                        <div class="col-lg-10 offset-lg-1">                    
                            <div class="section-header text-center">
                                <h2>Business Hours</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed perspiciatis ea porro temporibus officiis eos.</p>
                            </div>
                        </div>
                    </div>

                    <div class="info-box">
                        <i class="fas fa-phone-square"></i>
                        <h4>Mon-Fri, 9:00 AM to 6:00 PM</h4>
                        <p>+44 021 456789</p>
                    </div>

                    <div class="info-box">
                        <i class="fas fa-envelope"></i>
                        <h4>We replay within 24 hours</h4>
                        <p>support@example.com</p>
                    </div>

                    <div class="info-box">
                        <i class="fas fa-map-marker"></i>
                        <h4>Find our office address</h4>
                        <p>Mountain Drive, London, UK</p>
                    </div>

                    <div class="info-box">
                        <i class="fab fa-whatsapp"></i>
                        <h4>Stay Connected with Whatsapp</h4>
                        <p>+44 021 456789</p>
                    </div>

                </div>--%>
            </div>
        </div>
    </section>

    <!--===// End: Contact 
    =================================-->

    <!--===// End: Breadcrumb
    =================================-->
</asp:Content>
