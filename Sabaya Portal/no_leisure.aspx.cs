using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sabaya_Portal.App_Code;


namespace Sabaya_Portal
{
    public partial class no_leisure : System.Web.UI.Page
    {
        BusinessLayer BL = new BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
     
        protected void BtnRegister_Click(object sender, EventArgs e)
        {

            
                BL.AddNewMatch(txttitle.Text, Txtplace.Text, txtname.Text, Convert.ToInt32(Ddtypeofgame.SelectedValue), txtDatePicker.Text, txttime.Text);
                Label1.Text = "تمت إضافه المباراه بنجاح";
            
        }
    }
}