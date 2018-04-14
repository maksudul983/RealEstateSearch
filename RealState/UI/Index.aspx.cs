using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Configuration;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.IO;

namespace RealStateSolution.UI
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            { 
                FillData();
            }
           // SqlConnection con = DataAccess.ConnectDB();
           // string query = "select * from  Property where PropertyID =8";
           // SqlCommand cmd = new SqlCommand(query,con);

           // SqlDataReader dr = cmd.ExecuteReader();
           // if (dr.Read())
            //{
               //Image1.ImageUrl = dr["image"].ToString();
            //}

        }

        private void FillData()
        {
            string CS = ConfigurationManager.ConnectionStrings["REDB"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string SQL = "SELECT * FROM Property";
            SqlDataAdapter da = new SqlDataAdapter(SQL, con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {
                string ID= ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label3")).Text;
                Response.Redirect("Property Details.aspx?Property=" + HttpUtility.UrlEncode(Encrypt(ID)));
            }
        }

        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }
    }
}