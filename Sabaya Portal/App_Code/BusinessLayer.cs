using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Sabaya_Portal.App_Code
{
    public class BusinessLayer
    {
        // users Management   
                                           // Sign Up  For Sabaya Portal
        public void SignUp( string UserName, string Email, string Password, string Gender, DateTime BirthDay,
                           string PhoneNumber, string ProfilePicture, string Location,bool IsFacebookUser,
                           bool IsGoogleUser, bool IsTwitterUser, string UserType, bool IsConfirmed , string FullName)
        {
            SqlParameter[] param = new SqlParameter[14];


            param[0] = new SqlParameter("@UserName", SqlDbType.NVarChar, 50);
            param[0].Value = UserName;

            param[1] = new SqlParameter("@Email", SqlDbType.NVarChar, 50);
            param[1].Value = Email;

            param[2] = new SqlParameter("@Password", SqlDbType.NVarChar);
            param[2].Value = Password;

            param[3] = new SqlParameter("@Gender", SqlDbType.NVarChar, 50);
            param[3].Value = Gender;

            param[4] = new SqlParameter("@BirthDay", SqlDbType.DateTime);
            param[4].Value = BirthDay;

            param[5] = new SqlParameter("@PhoneNumber", SqlDbType.NVarChar, 50);
            param[5].Value = PhoneNumber;

            param[6] = new SqlParameter("@ProfilePicture", SqlDbType.NVarChar);
            param[6].Value = ProfilePicture;

            param[7] = new SqlParameter("@Location", SqlDbType.NVarChar, 50);
            param[7].Value = Location;

            param[8] = new SqlParameter("@IsFacebookUser", SqlDbType.Bit);
            param[8].Value = IsFacebookUser;

            param[9] = new SqlParameter("@IsGoogleUser", SqlDbType.Bit);
            param[9].Value = IsGoogleUser;

            param[10] = new SqlParameter("@IsTwitterUser", SqlDbType.Bit);
            param[10].Value = IsTwitterUser;

            param[11] = new SqlParameter("@UserType", SqlDbType.NVarChar, 50);
            param[11].Value = UserType;

            param[12] = new SqlParameter("@IsConfirmed", SqlDbType.Bit);
            param[12].Value = IsConfirmed;

            param[13] = new SqlParameter("@FullName", SqlDbType.NVarChar, 50);
            param[13].Value = FullName;


            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("SignUp", param);
        }


        public void insertBillNum(int LastbillId)
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@LastbillId", SqlDbType.Int);
            param[0].Value = LastbillId;

            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("insertBillNum", param);
        }

        public void UpdateMyData(int id, string UserName, string Password)
        {
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@UserID", SqlDbType.Int);
            param[0].Value = id;

            param[1] = new SqlParameter("@UserName", SqlDbType.NChar, 10);
            param[1].Value = UserName;

            param[2] = new SqlParameter("@Password", SqlDbType.NChar, 10);
            param[2].Value = Password;



            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("UpdateMyData", param);
        }
        public DataTable GetAllUsers()
        {
            DataAccessLayer dal = new DataAccessLayer();
            DataTable dt = dal.SelectData("GetAllUsers", null);
            return dt;
        }
        public DataTable DeleteUser(int id)
        {
            DataAccessLayer dal = new DataAccessLayer();
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@UserID", SqlDbType.Int);
            param[0].Value = id;
            DataTable dt = dal.SelectData("DeleteUser", param);
            return dt;
        }
        public DataTable SelectUserData(int user_id)
        {
            DataAccessLayer dal = new DataAccessLayer();
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@user_id", SqlDbType.Int);
            param[0].Value = user_id;
            DataTable dt = dal.SelectData("SelectUserData", param);
            return dt;
        }
        public void UpdateImageLogo(string LogoImage)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@LogoImage", SqlDbType.NVarChar);
            param[0].Value = LogoImage;



            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("UpdateImageLogo", param);
        }
        public DataTable SelectLogoImage()
        {
            DataAccessLayer dal = new DataAccessLayer();
            DataTable dt = dal.SelectData("SelectLogoImage", null);
            return dt;
        }
        public void UpdateUserData(int id, string UserName, string Password, string user_role)
        {
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@UserID", SqlDbType.Int);
            param[0].Value = id;

            param[1] = new SqlParameter("@UserName", SqlDbType.NChar, 10);
            param[1].Value = UserName;

            param[2] = new SqlParameter("@Password", SqlDbType.NChar, 10);
            param[2].Value = Password;

            param[3] = new SqlParameter("@user_role", SqlDbType.NVarChar, 50);
            param[3].Value = user_role;

            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("UpdateUserData", param);
        }


        // receipt operations
        public void saveCustomerData(string Cust_Name, string Cust_Phone, DateTime BillDate
            , string notes)
        {
            SqlParameter[] param = new SqlParameter[4];




            param[0] = new SqlParameter("@Cust_Name", SqlDbType.NVarChar, 50);
            param[0].Value = Cust_Name;

            param[1] = new SqlParameter("@Cust_Phone", SqlDbType.NVarChar, 50);
            param[1].Value = Cust_Phone;

            param[2] = new SqlParameter("@BillDate", SqlDbType.DateTime);
            param[2].Value = BillDate;

            param[3] = new SqlParameter("@notes", SqlDbType.NVarChar);
            param[3].Value = notes;



            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("saveCustomerData", param);
        }

        public void SaveOrderDetails(int Order_id, string Product, string Price, int Qty
           , string ProductTotalPrice, string Total_Price)
        {
            SqlParameter[] param = new SqlParameter[6];


            param[0] = new SqlParameter("@Order_id", SqlDbType.Int);
            param[0].Value = Order_id;

            param[1] = new SqlParameter("@Product", SqlDbType.NVarChar, 50);
            param[1].Value = Product;

            param[2] = new SqlParameter("@Price", SqlDbType.NVarChar, 50);
            param[2].Value = Price;

            param[3] = new SqlParameter("@Qty", SqlDbType.Int);
            param[3].Value = Qty;

            param[4] = new SqlParameter("@ProductTotalPrice", SqlDbType.NVarChar, 50);
            param[4].Value = ProductTotalPrice;

            param[5] = new SqlParameter("@Total_Price", SqlDbType.NVarChar, 50);
            param[5].Value = Total_Price;



            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("SaveOrderDetails", param);
        }

        public DataTable SelectProductsInformation(int Order_id)
        {
            DataAccessLayer dal = new DataAccessLayer();
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Order_id", SqlDbType.Int);
            param[0].Value = Order_id;
            DataTable dt = dal.SelectData("SelectProductsInformation", param);
            return dt;
        }

        // Printing

        public DataTable GetDataForPrint()
        {
            DataTable dt = new DataTable();
            DataAccessLayer DAL = new DataAccessLayer();
            dt = DAL.SelectData("GetDataForPrint", null);
            return dt;
        }
        public DataTable GetDataForPrinting(int Order_id)
        {
            DataTable dt = new DataTable();
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Order_id", SqlDbType.Int);
            param[0].Value = Order_id;
            DataAccessLayer DAL = new DataAccessLayer();
            dt = DAL.SelectData("GetDataForPrinting", param);
            return dt;
        }
    }
}