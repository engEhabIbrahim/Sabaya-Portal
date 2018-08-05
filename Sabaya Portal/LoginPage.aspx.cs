using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Sabaya_Portal.App_Code;
using System.Xml;
namespace Sabaya_Portal
{
    public partial class LoginPage : System.Web.UI.Page
    {
        BusinessLayer BL = new BusinessLayer();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["LoggedIn"] != null)
                {
                    if (Request.QueryString["Logout"] == "true")
                    {
                        Session["FullName"] = "";
                        Session["LoggedIn"] = false;

                    }
                    else if ((bool)Session["LoggedIn"] == true)
                    {
                        Response.Redirect("index.aspx");
                    }
                    
                }

            }
            
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string UserName = txtUserNameLogin.Value;
            string Password = txtPasswordLogin.Value;

               DataTable dt1 = BL.SPLogin(UserName, Password);
                if (dt1.Rows.Count > 0)
                {
                    string FullName = dt1.Rows[0]["FullName"].ToString();
                    Session["FullName"] = FullName;
                    Session["LoggedIn"] = true;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    LoginErrorMessage.InnerText = "خطأ في اسم المستخدم او كلمة المرور";
                }


                


        }
    }
}