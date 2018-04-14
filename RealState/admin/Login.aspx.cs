using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessAccessLayer;
namespace RealStateSolution.admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Admin admin = new Admin
            {
                Username=txtUsername.Text,
                Password=txtPassword.Text
            };

            RESBusiness resb = new RESBusiness
            {
                AdminObj = admin
            };

            if (resb.SelectAdmin()){
                Session["Admin"] = "admin";
                Response.Redirect("DashBoard.aspx");
            }else
            {
                lblStatus.Text = "Usernme and or password not matched!";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }

            
        }
    }
}