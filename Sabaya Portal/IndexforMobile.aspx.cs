﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Sabaya_Portal
{
    public partial class IndexforMobile : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LoggedIn"] != null)
                {
                    if ((bool)Session["LoggedIn"] == false)
                    {
                        firstLI.InnerHtml = "<a href=\"SignUp.aspx\">انشاء حساب</a><i class=\"fa fa-lock\" style=\"margin-right:5px; \"></i>";
                        secondLI.InnerHtml = "<a href=\"LoginPage.aspx\">تسجيل دخول</a><i class=\"fa fa-user\" style=\"margin-right:5px;\"></i>";
                    }
                    else
                    {
                        var userProfile = new StringBuilder();
                        userProfile.Append(" <div class=\"dropdown\">");
                        userProfile.Append("<a class=\"dropbtn\">" + "مرحبا" + " " + Session["FullName"] + "<i class=\"fa fa-lock\" style=\"margin-right:5px; \"></i>");
                        userProfile.Append("</a>");
                        userProfile.Append(" <div class=\"dropdown-content\">");
                        userProfile.Append("<a href=\"#\">تعديل البيانات</a>");
                        userProfile.Append("<a href=\"#\">الاهتمامات الرياضية</a>");
                        userProfile.Append("<a href=\"LoginPage.aspx?Logout=true\">تسجيل خروج</a>");
                        userProfile.Append("</div></div>");
                        firstLI.InnerHtml = userProfile.ToString();

                        switch (Session["UserType"].ToString())
                        {
                            case "مشجع":
                                Img1.Visible = true;

                                break;
                            case "مشجعة":
                                Img2.Visible = true;


                                break;

                            case "سيدة اعمال- مستثمرة":
                                UserType.Visible = true;


                                break;

                            case "رجل اعمال- مستثمر":
                                Img3.Visible = true;


                                break;
                        }


                    }
                }
                else
                {
                    firstLI.InnerHtml = "<a href=\"SignUp.aspx\">انشاء حساب</a><i class=\"fa fa-lock\" style=\"margin-right:5px; \"></i>";
                    secondLI.InnerHtml = "<a href=\"LoginPage.aspx\">تسجيل دخول</a><i class=\"fa fa-user\" style=\"margin-right:5px;\"></i>";

                }
            }
        }

    }
}