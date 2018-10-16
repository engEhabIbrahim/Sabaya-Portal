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
using System.Text;


namespace Sabaya_Portal
{
    public partial class SignUp : System.Web.UI.Page
    {

        BusinessLayer BL = new BusinessLayer();
        static string fileUploadPath;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            divgov3.Visible = false;


            if (!IsPostBack)
            {

                string query = "select CountryID, CountryName from Countries";

                BindDropDownList(DropCountry, query, "CountryName", "CountryID", "إختر البلد");
                rptCustomers.DataSource = this.GetData("select GovID, GovName from TBLGOV where CountryID=1");
                rptCustomers.DataBind();
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
                      , false, false, false, RBUsertype.SelectedItem.Value, false, txtFullName.Value, Convert.ToInt32(DropCountry.SelectedValue), Label1.Text, txtbio.Text);


                Session["LoggedIn"] = true;
                Session["UserType"] = RBUsertype.SelectedItem.Text;
                Session["FullName"] = txtFullName.Value;
                Response.Redirect("index.aspx?FullName=" + txtFullName.Value);

            }
            else
            {

                BL.SignUp(txtUserName.Value, txtEmail.Value, txtPassword.Value, "", Convert.ToDateTime("1/1/1995"), "ll", fileUploadPath, TxtGov.Value
                       , false, false, false, RBUsertype.SelectedItem.Value, false, txtFullName.Value, Convert.ToInt32(DropCountry.SelectedValue), "", txtbio.Text);

                Session["LoggedIn"] = true;
                Session["UserType"] = RBUsertype.SelectedItem.Text;
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
                divgov.Visible = true;
                divgov2.Visible = false;

            }


            else
            {
                divgov.Visible = false;
                divgov2.Visible = true;
            }
        }
        private DataTable GetData(string query)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }


        protected void OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            //System.Web.UI.WebControls.Label la = (System.Web.UI.WebControls.Label)rptCustomers.FindControl("lblGovID");


            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                int lblGovID = Convert.ToInt32((e.Item.FindControl("lblGovID") as Label).Text);

                //Find the DropDownList in the Repeater Item.
                DropDownList ddlCountries = (e.Item.FindControl("ddlCountries") as DropDownList);
                ddlCountries.DataSource = this.GetData("select CITYID, CityName from Cities where GovID='" + lblGovID + "'");
                ddlCountries.DataTextField = "CityName";
                ddlCountries.DataValueField = "CITYID";
                ddlCountries.DataBind();

                //Add Default Item in the DropDownList.
                string lblGOVName = ((e.Item.FindControl("lblGOVName") as Label).Text);

                ddlCountries.Items.Insert(0, new ListItem(lblGOVName));


                //Select the Country of Customer in DropDownList.
                //string country = (e.Item.DataItem as DataRowView)["GovID"].ToString();
                //ddlCountries.Items.FindByValue(country).Selected = true;

                string CityName;


                for (int item = 0; item < 15; item++)
                {
                    DropDownList dll = e.Item.FindControl("ddlCountries") as DropDownList;
                    if (dll.SelectedItem != null)
                    {
                        CityName = ((DropDownList)e.Item.FindControl("ddlCountries")).SelectedItem.Text; //No error
                        Label1.Visible = true;
                        Label1.Text = CityName;
                    }
                    else
                    {
                        // DoOtherStuff();
                    }
                }

            }
        }
        protected void ddlCountries_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            DropDownList item = sender as DropDownList;
            //DropDownList item = (sender as DropDownList).NamingContainer as DropDownList;

            //Reference the DropDownList.
            DropDownList ddlCountries = item.FindControl("ddlCountries") as DropDownList;

            //Get the Selected Text.
            string selectedText = ddlCountries.SelectedItem.Text;

            //Get the Selected Value.
            string selectedValue = ddlCountries.SelectedItem.Value;
            Label1.Text = ddlCountries.SelectedItem.Text;
            divgov.Visible = false;
            divgov3.Visible = true;
            displayselectedgov.Items.Clear();
            displayselectedgov.Items.Insert(0, new ListItem(Label1.Text, Label1.Text));
            displayselectedgov.Items.Insert(1, new ListItem("لإعاده إختيار المدينه", "لإعاده إختيار المدينه"));




        }


        protected void displayselectedgov_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (displayselectedgov.SelectedItem.Text == "لإعاده إختيار المدينه")
            {
                divgov.Visible = true;


            }
        }
    }
}