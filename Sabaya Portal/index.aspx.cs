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
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Collections.Specialized;
using System.Net;
using System.Web.Script.Serialization;
using System.Xml.Linq;

namespace Sabaya_Portal
{
    public partial class index : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        static string code = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request["code"]) && !Page.IsPostBack)
            {
                code = Request["code"].ToString();
                GetDataInstagramToken();

            }
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
                                typeiorf.Visible = true;
                                typeiorf.Text = "f";
                                break;
                            case "مشجعة":
                                typeiorf.Visible = true;
                                typeiorf.Text = "f";
                                break;

                            case "سيدة اعمال- مستثمرة":
                                typeiorf.Visible = true;
                                typeiorf.Text = "I";
                                break;

                            case "رجل اعمال- مستثمر":
                                typeiorf.Visible = true;
                                typeiorf.Text = "I";
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
        public void GetDataInstagramToken()
        {
            var json = "";
            try
            {
                NameValueCollection parameters = new NameValueCollection();
                parameters.Add("client_id", "d655ee330f98472ba415e47fa49315a0");
                parameters.Add("client_secret", "cfd8937da09d450bb359b88923db1392");
                parameters.Add("grant_type", "authorization_code");
                parameters.Add("redirect_uri", "http://localhost:53975/index.aspx");
                parameters.Add("code", code);

                WebClient client = new WebClient();
                var result = client.UploadValues("https://api.instagram.com/oauth/access_token", "POST", parameters);
                var response = System.Text.Encoding.Default.GetString(result);


                var jsResult = (JObject)JsonConvert.DeserializeObject(response);
                string accessToken = (string)jsResult["access_token"];
                // int id = (int)jsResult["user"]["id"];
                string imageurl = (string)jsResult["user"]["profile_picture"];
                string fullname = (string)jsResult["user"]["full_name"];
                Session["LoggedIn"] = true;
                Session["UserType"] = "مشجع";
                Session["FullName"] = fullname;

                //  ProfilePic.ImageUrl = imageurl;


            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }


    }
}