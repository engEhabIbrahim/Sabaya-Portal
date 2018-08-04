using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Sabaya_Portal
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] != null)
            {
                if ((bool)Session["LoggedIn"] == false)
                {
                    firstLI.InnerHtml = "<a href=\"SignUp.aspx\"><i class=\"fa fa-lock\" style=\"margin-right:5px; \"></i>انشاء حساب</a>";
                    secondLI.InnerHtml = "<a href=\"LoginPage.aspx\"><i class=\"fa fa-user\" style=\"margin-right:5px;\"></i>تسجيل دخول</a>";
                }
                else
                {
                    var userProfile = new StringBuilder();
                    userProfile.Append(" <div class=\"dropdown\">");
                    userProfile.Append("<a class=\"dropbtn\">"+ "مرحبا"  + " " + Session["UserName"] + "<i class=\"fa fa-lock\" style=\"margin-right:5px; \"></i>");
                    userProfile.Append("</a>");
                    userProfile.Append(" <div class=\"dropdown-content\">");
                    userProfile.Append("<a href=\"#\">تعديل البيانات</a>");
                    userProfile.Append("<a href=\"#\">الاهتمامات الرياضية</a>");
                    userProfile.Append("<a href=\"LoginPage.aspx?Logout=true\">تسجيل خروج</a>");
                    userProfile.Append("</div></div>");


                    firstLI.InnerHtml = userProfile.ToString();

                }
            }
            else
            {
                firstLI.InnerHtml = "<a href=\"SignUp.aspx\"><i class=\"fa fa-lock\" style=\"margin-right:5px; \"></i>انشاء حساب</a>";
                secondLI.InnerHtml = "<a href=\"LoginPage.aspx\"><i class=\"fa fa-user\" style=\"margin-right:5px;\"></i>تسجيل دخول</a>";

            }
        }
    }
}