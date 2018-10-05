using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using Sabaya_Portal.App_Code;


namespace Sabaya_Portal
{
    public partial class SignUp : System.Web.UI.Page
    {

        BusinessLayer BL = new BusinessLayer();
        static string fileUploadPath;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                string query = "select CountryID, CountryName from Countries";

                BindDropDownList(DropCountry, query, "CountryName", "CountryID", "إختر البلد");
            }
            if (Session["LoggedIn"] != null)
            {
                if ((bool)Session["LoggedIn"] == true)
                {
                    Response.Redirect("index.aspx");
                }

            }

        }
        protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = MyCheckBox.Checked;
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (UserImg.HasFile)
            {
                string FileName = Path.GetFileName(UserImg.PostedFile.FileName);
                //Save files to images folder
                UserImg.SaveAs(Server.MapPath(@"~/assets/img/userPersonalimg/" + FileName));
                fileUploadPath = @"~/assets/img/userPersonalimg/" + FileName;

            }
            else
            {
                fileUploadPath = "";
            }

            if (Convert.ToInt32(DropCountry.SelectedItem.Value) == 1)
            {


                
                    BL.SignUp(txtUserName.Value, txtEmail.Value, txtPassword.Value, "m", Convert.ToDateTime("1/1/1995"), "kk", fileUploadPath, "kk"
                             , false, false, false, DrpUserType.Value, false, txtFullName.Value, Convert.ToInt32(DropCountry.SelectedValue), Convert.ToInt32(DropGOV.SelectedValue), Convert.ToInt32(DropCity.SelectedValue), txtbio.Text);
                    Session["LoggedIn"] = true;
                    Session["UserType"] = DrpUserType.Value;
                    Session["FullName"] = txtFullName.Value;
                    Response.Redirect("index.aspx?FullName=" + txtFullName.Value);
                
            }
            else
            {
               
                    BL.SignUp(txtUserName.Value, txtEmail.Value, txtPassword.Value, "", Convert.ToDateTime("1/1/1995"), "ll", fileUploadPath, TxtGov.Value
                             , false, false, false, DrpUserType.Value, false, txtFullName.Value, Convert.ToInt32(DropCountry.SelectedValue), 0, 0, txtbio.Text);
                Session["LoggedIn"] = true;
                Session["UserType"] = DrpUserType.Value;
                Session["FullName"] = txtFullName.Value;
                Response.Redirect("index.aspx?FullName=" + txtFullName.Value);
                
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
        protected void DropCountry_Changed(object sender, EventArgs e)
        {
            if (Convert.ToInt32(DropCountry.SelectedItem.Value) == 1)
            {
                DropGOV.Enabled = false;

                DropGOV.Items.Clear();


                DropGOV.Items.Insert(0, new ListItem("إختر المحافظه", "0"));
                int CountryID = 1;
                if (CountryID == 1)
                {
                    string query = string.Format("select GovID, GovName from TBLGOV where CountryID = {0}", CountryID);
                    BindDropDownList(DropGOV, query, "GovName", "GovID", "إختر المحافظه");

                    divgov.Visible = true;

                    DropGOV.Enabled = true;
                    divgov2.Visible = false;

                }
                else
                {

                    divcity.Visible = false;
                    divgov.Visible = false;

                    divgov2.Visible = true;

                }
            }
            else
            {
                divcity.Visible = false;
                divgov.Visible = false;
                divgov2.Visible = true;
            }
        }
        protected void DropGOV_Changed(object sender, EventArgs e)
        {
            DropCity.Enabled = false;

            DropCity.Items.Clear();

            DropCity.Items.Insert(0, new ListItem("إختر المدينه", "0"));
            int GovID = Convert.ToInt32(DropGOV.SelectedItem.Value);
            if (GovID > 0)
            {
                string query = string.Format("select CITYID, CityName from Cities where GovID = {0}", GovID);
                BindDropDownList(DropCity, query, "CityName", "CITYID", "إختر المدينه");
                divcity.Visible = true;

                DropCity.Enabled = true;
                divgov2.Visible = false;

            }
        }

    }
}