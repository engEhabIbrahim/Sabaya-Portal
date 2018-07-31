using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sabaya_Portal.App_Code;


namespace Sabaya_Portal
{
    public partial class SignUp : System.Web.UI.Page
    {

        BusinessLayer BL = new BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = MyCheckBox.Checked;
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string FullName = txtFullName.Value;
            string Email = txtEmail.Value;
            string UserName = txtUserName.Value;
            string Password = txtPassword.Value;
            string ConfirmPassword = txtConfirmPassword.Value;
            string PhoneNumber = txtPhoneNumber.Value;
            string Location = DrpLocation.Value;
            string Gender = "";
            DateTime BirthDay = Convert.ToDateTime("1/1/1995");
            string ProfilePicture = "";
            String UserType = "";
            //if(FullName!=""&& Email!=""&& UserName!=""&& Password!="" &&Password==ConfirmPassword)
            //{
                BL.SignUp( UserName, Email, Password, Gender, BirthDay, PhoneNumber, ProfilePicture, Location
                          , false, false, false, UserType, false, FullName);
                Response.Redirect("index.aspx");

            //}

        }

    }
}