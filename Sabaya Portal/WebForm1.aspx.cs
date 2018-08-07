using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sabaya_Portal.App_Code;


namespace Sabaya_Portal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BusinessLayer BL = new BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BL.AddNewMatch(txttitle.Text, Txtplace.Text ,txtname.Text,Convert.ToInt32(Ddtypeofgame.SelectedValue), txtDate.Text, txttime.Text);

        }
    }
}