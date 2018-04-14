using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessAccessLayer;
using System.Data;

namespace RealStateSolution.UI
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User user = new User
            {
                Username = txtUsername.Text,
                Password = txtPassword.Text
            };

            RESBusiness rESB = new RESBusiness
            {
                UserObj = user
            };


            DataTable dt = rESB.SelectUser();
            if(dt.Rows.Count>0)
            {
                string userType = dt.Rows[0]["UserType"].ToString();
                if (userType.ToLower().Equals("buyer"))
                {
                    Session["New"] = txtUsername.Text;
                    Session["User"] = "buyer";
                    Response.Redirect("BuyerChoice.aspx");
                }else
                {
                    Session["User"] = "seller";
                    Response.Redirect("Property.aspx");
                }

                
            }else
            {
                lblStatus.Text = "Username and/or password not mactched!";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}