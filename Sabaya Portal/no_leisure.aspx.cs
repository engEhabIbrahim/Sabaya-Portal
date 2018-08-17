using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sabaya_Portal.App_Code;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;


namespace Sabaya_Portal
{
    public partial class no_leisure : System.Web.UI.Page
    {
        BusinessLayer BL = new BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Session["LoggedIn"] != null)
                {
                    if ((bool)Session["LoggedIn"] == false)
                    {
                        Response.Redirect("LoginPage.aspx");
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
                        string query = "select MatchID, MatchName from Match";
                        BindDropDownList(DropMatch, query, "MatchName", "MatchID", "إختر نوع اللعبه");

                        DropAllGames.Enabled = false;
                        DropAllGames.Items.Insert(0, new ListItem("إختر إسم اللعبه", "0"));


                    }
                }
                else
                {
                    Response.Redirect("LoginPage.aspx");

                }

            }

        }
        private void BindDropDownList(DropDownList ddl, string query, string text, string value, string defaultText)
        {
            string conString = ConfigurationManager.ConnectionStrings["SabayaDBConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    con.Open();
                    ddl.DataSource = cmd.ExecuteReader();
                    ddl.DataTextField = text;
                    ddl.DataValueField = value;
                    ddl.DataBind();
                    con.Close();
                }
            }
            ddl.Items.Insert(0, new ListItem(defaultText, "0"));
        }
        protected void DropMatch_Changed(object sender, EventArgs e)
        {
            DropAllGames.Enabled = false;

            DropAllGames.Items.Clear();

            DropAllGames.Items.Insert(0, new ListItem("إختر إسم اللعبه", "0"));
            int MatchID = Convert.ToInt32(DropMatch.SelectedItem.Value);
            if (MatchID > 0)
            {
                string query = string.Format("select GameID, GameName from AllGames where MatchID = {0}", MatchID);
                BindDropDownList(DropAllGames, query, "GameName", "GameID", "إختر إسم اللعبه");
                DropAllGames.Enabled = true;
            }
        }
     

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
                //BL.AddNewMatch(txttitle.Text, Txtplace.Text, txtname.Text, Convert.ToInt32(Ddtypeofgame.SelectedValue), txtDatePicker.Text, txttime.Text);
                Label1.Text = "تمت إضافه المباراه بنجاح";
            
        }
    }
}