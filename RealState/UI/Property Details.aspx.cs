using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealState
{
    public partial class Property_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int pid = Convert.ToInt32(HttpUtility.UrlDecode(Decrypt(Request.QueryString["Property"].ToString())));

                fillData(pid);
            }
        }

        private void fillData(int ID)
        {
            string CS = ConfigurationManager.ConnectionStrings["REDB"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            string SQL = "SELECT * FROM Property WHERE PropertyID=@pid";
            SqlCommand cmd = new SqlCommand(SQL, con);
            cmd.Parameters.AddWithValue("@pid", ID);
            SqlDataAdapter da = new SqlDataAdapter (cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }


        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            cipherText = cipherText.Replace(" ", "+");
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName== "request")
            {
                string ID = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
                string property_name = GetPropertyTitle(Convert.ToInt32(ID));
                string CS = ConfigurationManager.ConnectionStrings["REDB"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                string SQL = "INSERT INTO BuyRequest ( username, pname) VALUES( @username, @pname)";
                SqlCommand cmd = new SqlCommand(SQL, con);
                cmd.Parameters.AddWithValue("@username", Session["New"].ToString());
                cmd.Parameters.AddWithValue("@pname", property_name);
                con.Open();
                int output = cmd.ExecuteNonQuery();

                if (output > 0)
                {
                    LabelMessage.Text = "Successfully Buying request for this property has been made. WE will contact you as soon as.";
                }
                else
                {
                    LabelMessage.Text = "An Error Ocurred";
                }

                

            }
        }

        private string GetPropertyTitle(int ID)
        {
            string pname;
            SqlDataReader rdr;
            string CS = ConfigurationManager.ConnectionStrings["REDB"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string SQL = "SELECT PropertyName FROM Property WHERE PropertyID=@pid";
            SqlCommand cmd = new SqlCommand(SQL, con);
            //cmd.Parameters.AddWithValue("@username", Session["New"].ToString());
            cmd.Parameters.AddWithValue("@pid", ID);
            con.Open();

            rdr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(rdr);
            pname = (string)dt.Rows[0]["PropertyName"];

            if (pname != null)
            {
                return pname;
            }
            else
                return null;

            //return pname;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
