using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Sabaya_Portal
{
    public partial class CompleteIndividualMatch : System.Web.UI.Page
    {
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
                SqlCommand cmd = new SqlCommand("completeindividual", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                Repeater1.DataSource = cmd.ExecuteReader();
                Repeater1.DataBind();
            }
        }
    }
}