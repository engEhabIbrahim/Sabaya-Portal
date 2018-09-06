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
	public partial class ClubDetails : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    BusinessLayer BL = new BusinessLayer();
                    DataTable dt = BL.clubdetails(Convert.ToInt32(Request.QueryString["id"]));
                 lblClubName.Text = dt.Rows[0]["ClubName"].ToString();
                    lblClubAdress.Text = dt.Rows[0]["ClubLocation"].ToString();
                    lblManager.Text = dt.Rows[0]["ManagerName"].ToString();
                    lblGov.Text = dt.Rows[0]["GovName"].ToString();
                    lblGames.Text = dt.Rows[0]["GameName"].ToString();
                    lblweblink.Text = dt.Rows[0]["WebsiteLink"].ToString();
                    lblestablishdate.Text = dt.Rows[0]["EstablishmentDate"].ToString();

                    ClubNews.ImageUrl = dt.Rows[0]["Clubimage"].ToString();

                }
            }
        }
	}
}