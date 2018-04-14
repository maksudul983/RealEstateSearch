using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DataAccessLayer
{
    public class DataAccess
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["REDB"].ConnectionString;
        public static SqlConnection ConnectDB()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            return con;
        }

        public static SqlParameter addParameter(string parameterName, object value)
        {
            SqlParameter parameter = new SqlParameter(parameterName, value);
            return parameter;
        }

        public static DataTable executeDTByProcedure(string procedureName, SqlParameter[] parameters)
        {
            using (SqlConnection con = ConnectDB())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = procedureName;
                if (parameters != null)
                {
                    cmd.Parameters.AddRange(parameters);
                }
                cmd.CommandType = CommandType.StoredProcedure;

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(dt);
                return dt;
            }
        }

    }
}
