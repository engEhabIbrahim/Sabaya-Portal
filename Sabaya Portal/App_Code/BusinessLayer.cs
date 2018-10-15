﻿using System;
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
        public void SignUp(string UserName, string Email, string Password, string Gender, DateTime BirthDay,
                                 string PhoneNumber, string ProfilePicture, string Location, bool IsFacebookUser,
                                 bool IsGoogleUser, bool IsTwitterUser, string UserType, bool IsConfirmed, string FullName, int CountryID, int GovID, int CITYID, string BIO)
        {
            SqlParameter[] param = new SqlParameter[18];


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

            param[7] = new SqlParameter("@Location", SqlDbType.NVarChar);
            param[7].Value = Location;

            param[8] = new SqlParameter("@IsFacebookUser", SqlDbType.Bit);
            param[8].Value = IsFacebookUser;

            param[9] = new SqlParameter("@IsGoogleUser", SqlDbType.Bit);
            param[9].Value = IsGoogleUser;

            param[10] = new SqlParameter("@IsTwitterUser", SqlDbType.Bit);
            param[10].Value = IsTwitterUser;

            param[11] = new SqlParameter("@UserType", SqlDbType.NVarChar);
            param[11].Value = UserType;

            param[12] = new SqlParameter("@IsConfirmed", SqlDbType.Bit);
            param[12].Value = IsConfirmed;

            param[13] = new SqlParameter("@FullName", SqlDbType.NVarChar, 50);
            param[13].Value = FullName;

            param[14] = new SqlParameter("@CountryID", SqlDbType.Int);
            param[14].Value = CountryID;

            param[15] = new SqlParameter("@GovID", SqlDbType.Int);
            param[15].Value = GovID;

            param[16] = new SqlParameter("@CITYID", SqlDbType.Int);
            param[16].Value = CITYID;

            param[17] = new SqlParameter("@BIO ", SqlDbType.NVarChar);
            param[17].Value = BIO;

            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("SignUp", param);
        }


        public DataTable SPLogin(string UserName, string Password)
        {
            DataAccessLayer dal = new DataAccessLayer();
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@UserName", SqlDbType.NVarChar, 50);
            param[0].Value = UserName;

            param[1] = new SqlParameter("@Password", SqlDbType.NVarChar);
            param[1].Value = Password;

            DataTable dt = dal.SelectData("SPLogin", param);
            return dt;
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
        public DataTable Locationselection()
        {
            DataAccessLayer dal = new DataAccessLayer();
            DataTable dt = dal.SelectData("Locationselection", null);
            return dt;
        }
       
        public DataTable cityselection(int GovID)
        {
            DataAccessLayer dal = new DataAccessLayer();
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@GovID", SqlDbType.Int);
            param[0].Value = GovID;
            DataTable dt = dal.SelectData("cityselection", param);
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

        public void AddNewMatch(string TitleOfMatch, int nameofGame,int typeofGame, string date
        , string time, string createdby,int GovID, int ClubID)
        {
            SqlParameter[] param = new SqlParameter[8];

            param[0] = new SqlParameter("@TitleOfMatch", SqlDbType.NVarChar);
            param[0].Value = TitleOfMatch;


            param[1] = new SqlParameter("@nameofGame", SqlDbType.Int);
            param[1].Value = nameofGame;

            param[2] = new SqlParameter("@typeofGame", SqlDbType.Int);
            param[2].Value = typeofGame;

            param[3] = new SqlParameter("@date", SqlDbType.NVarChar, 50);
            param[3].Value = date;

            param[4] = new SqlParameter("@time", SqlDbType.NVarChar,50);
            param[4].Value = time;

            param[5] = new SqlParameter("@createdby", SqlDbType.NVarChar,200);
            param[5].Value = createdby;

            param[6] = new SqlParameter("@GovID", SqlDbType.Int);
            param[6].Value = GovID;

            param[7] = new SqlParameter("@ClubID", SqlDbType.Int);
            param[7].Value = ClubID;






            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("AddNewMatch", param);
        }

        public void adduserJoined( int match_ID ,string UserName)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@match_ID", SqlDbType.Int);
            param[0].Value = match_ID;

            param[1] = new SqlParameter("@UserName", SqlDbType.NVarChar);
            param[1].Value = UserName;

            DataAccessLayer dal = new DataAccessLayer();
            dal.ExcuteOperation("adduserJoined", param);
        }
        public DataTable SelectUsingID(int id)
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Id", SqlDbType.Int);
            param[0].Value = id;
            DataAccessLayer dal = new DataAccessLayer();
            DataTable dt = dal.SelectData("SelectUsingID", param);
            return dt;
        }
        public DataTable clubdetails(int id)
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ClubID", SqlDbType.Int);
            param[0].Value = id;
            DataAccessLayer dal = new DataAccessLayer();
            DataTable dt = dal.SelectData("clubdetails", param);
            return dt;
        }
    }

}