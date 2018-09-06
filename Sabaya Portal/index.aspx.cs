using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Sabaya_Portal
{
    public partial class index : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
                      


                    }
                }
                else if (Request.QueryString["FullName"] != null)
                {
                    Session["FullName"] = Request.QueryString["FullName"].ToString();
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