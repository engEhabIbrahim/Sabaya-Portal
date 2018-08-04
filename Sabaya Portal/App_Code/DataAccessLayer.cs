using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Sabaya_Portal.App_Code
{
    public class DataAccessLayer
    {
        public string UserName { get; set; }
        public bool UserNameInUse { get; set; }
        SqlConnection cn;
        public DataAccessLayer()
        {
            cn = new SqlConnection(@"database=SabayaDB; server=DESKTOP-KAC0FV5\MSSQLSERVER1; Integrated Security=true;");

        }
        public void open()
        {
            if (cn.State != ConnectionState.Open)
            {
                cn.Open();
            }
        }
        // method to ensure that connection is closed
        public void close()
        {
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }
        //method to Read (select) data from DataBase
        public DataTable SelectData(String stored_procedure, SqlParameter[] param)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = stored_procedure;
            cmd.Connection = cn;
            if (param != null)
            {
                cmd.Parameters.AddRange(param);
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        // method to insert,update or delete data from DataBase
        public void ExcuteOperation(String stored_procedure, SqlParameter[] param)
        {
            SqlCommand cmd = new SqlCommand();
            cn.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = stored_procedure;
            cmd.Connection = cn;
            if (param != null)
            {
                cmd.Parameters.AddRange(param);
            }
            cmd.ExecuteNonQuery();
            cn.Close();
        }

    }
}