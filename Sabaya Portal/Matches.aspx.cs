using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Sabaya_Portal.App_Code;


namespace Sabaya_Portal
{
    public partial class Matches : System.Web.UI.Page
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
                        BindRepeatorCompleteteam();
                        BindRepeatorCompleteindividual();
                        BindRepeatorIncompleteteam();
                        BindRepeatorIncompleteindividual();
                    }
                }
                else
                {
                    Response.Redirect("LoginPage.aspx");

                }

            }
        }
        private void BindRepeatorCompleteteam()
        {
            string CS = ConfigurationManager.ConnectionStrings["SabayaDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("completeteam", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                completeam.DataSource = cmd.ExecuteReader();
                completeam.DataBind();
            }
        }
        private void BindRepeatorCompleteindividual()
        {
            string CS = ConfigurationManager.ConnectionStrings["SabayaDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("completeindividual", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                CompleteIndividual.DataSource = cmd.ExecuteReader();
                CompleteIndividual.DataBind();
            }
        }

        private void BindRepeatorIncompleteteam()
        {
            string CS = ConfigurationManager.ConnectionStrings["SabayaDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("incompleteteam", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                Incompleteteam.DataSource = cmd.ExecuteReader();
                Incompleteteam.DataBind();
            }
        }
        protected void GetValue(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            int matchID = Convert.ToInt32((item.FindControl("Match") as Label).Text);

            //string message = "تم الانضمام بنجاح";
            BL.adduserJoined(matchID, Session["FullName"].ToString());

            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }

        private void BindRepeatorIncompleteindividual()
        {
            string CS = ConfigurationManager.ConnectionStrings["SabayaDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("INcompleteindividual", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                inCompleteIndividual.DataSource = cmd.ExecuteReader();
                inCompleteIndividual.DataBind();
            }
        }

        protected void GetValue2(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            int matchID2 = Convert.ToInt32((item.FindControl("Matchindividual") as Label).Text);
            //string message = "Customer Id: " + (item.FindControl("lblCustomerId") as Label).Text;
            //message += "\\nName: " + (item.FindControl("lblName") as Label).Text;
            //message += "\\nCountry: " + (item.FindControl("txtCountry") as TextBox).Text;
            //string message = "تم الانضمام بنجاح";
            BL.adduserJoined(matchID2, Session["FullName"].ToString());

            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }
    }
}