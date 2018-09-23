using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;



namespace Sabaya_Portal
{
    public partial class _try : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                string query = "select CountryID, CountryName from Countries";

                BindDropDownList(DropCountry, query, "CountryName", "CountryID", "إختر البلد");

                //DropAllGames.Enabled = false;
                //DropAllGames.Items.Insert(0, new ListItem("إختر إسم اللعبه", "0"));


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
            DropGOV.Enabled = false;

            DropGOV.Items.Clear();

            DropGOV.Items.Insert(0, new ListItem("إختر المحافظه", "0"));
            int CountryID = Convert.ToInt32(DropCountry.SelectedItem.Value);
            if (CountryID > 0)
            {
                string query = string.Format("select GovID, GovName from TBLGOV where CountryID = {0}", CountryID);
                BindDropDownList(DropGOV, query, "GovName", "GovID", "إختر المحافظه");
                DropGOV.Enabled = true;
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
                DropCity.Enabled = true;
            }
        }






    }

}