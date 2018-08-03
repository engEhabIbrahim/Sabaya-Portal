using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Sabaya_Portal.App_Code;
namespace Sabaya_Portal
{
    public partial class LoginPage : System.Web.UI.Page
    {
        BusinessLayer BL = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string UserName = txtUserNameLogin.Value;
            string Password = txtPasswordLogin.Value;
            if (UserName != "" && Password != "")
            {
                DataTable dt1 = BL.SPLogin(UserName, Password);
                if (dt1.Rows.Count > 0)
                {
                    Session["UserName"] = UserName;
                    Session["LoggedIn"] = true;
                    Response.Redirect("index.aspx?");
                }
                else
                {
                    LoginErrorMessage.InnerText = "خطأ في اسم المستخدم او كلمة المرور";
                }


                

            }

        }
    }
}