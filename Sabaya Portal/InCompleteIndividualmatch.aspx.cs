using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Sabaya_Portal.App_Code;



namespace Sabaya_Portal
{
    public partial class InCompleteIndividualmatch : System.Web.UI.Page
    {
        BusinessLayer BL = new BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeator();
            }
        }
        private void BindRepeator()
        {
            string CS = ConfigurationManager.ConnectionStrings["SabayaDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("INcompleteindividual", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                Repeater1.DataSource = cmd.ExecuteReader();
                Repeater1.DataBind();
            }
        }
        protected void GetValue(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            int matchID = Convert.ToInt32((item.FindControl("Match") as Label).Text);
            //string message = "Customer Id: " + (item.FindControl("lblCustomerId") as Label).Text;
            //message += "\\nName: " + (item.FindControl("lblName") as Label).Text;
            //message += "\\nCountry: " + (item.FindControl("txtCountry") as TextBox).Text;
            //string message = "تم الانضمام بنجاح";
            //BL.adduserJoined(matchID);

            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }

    }
}