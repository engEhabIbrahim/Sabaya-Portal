using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Sabaya_Portal
{
    public partial class testConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=198.71.226.6;uid=gdsaba;pwd=host@123;database=SabayaDB");
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                Label1.Text = "Connection Open!";
            }
        }
    }
}