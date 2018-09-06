using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Sabaya_Portal.App_Code;

namespace Sabaya_Portal
{
    public partial class NewsDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    BusinessLayer BL = new BusinessLayer();
                    DataTable dt = BL.SelectUsingID(Convert.ToInt32(Request.QueryString["id"]));
                    lbldate.Text = dt.Rows[0]["Date"].ToString();
                    title.Text = dt.Rows[0]["Title"].ToString();
                    lbldes.Text = dt.Rows[0]["Details"].ToString();
                    imgNews.ImageUrl = dt.Rows[0]["image"].ToString();

                }
            }
        }
    }
}