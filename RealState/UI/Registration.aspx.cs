using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessAccessLayer;

namespace RealStateSolution.UI
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            User user = new User
            {
                UserType = ddl1.SelectedItem.Text,
                Username = txtUsername.Text,
                FullName =txtFullName.Text,
                Email=txtEmail.Text,
                Password=txtPassword.Text,
                PhoneNumber=txtPhoneNumber.Text
            };

            RESBusiness resb = new RESBusiness
            {
                UserObj=user
            };

            resb.AddNewUser();

            Response.Write("<script>alert('Successfully account created!');</script>");
            Response.Redirect("Redirect.aspx");
        }
    }
}