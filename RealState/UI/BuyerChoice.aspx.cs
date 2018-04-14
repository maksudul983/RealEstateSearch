using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessAccessLayer;
using System.Text;

namespace RealStateSolution.UI
{
    public partial class BuyerChoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                    string userType = Session["User"].ToString();
                    if (userType.Equals("buyer"))
                    {

                    }
                    else
                    {
                        Response.Redirect("~/UI/index.aspx");
                    }
                }
                else
                {
                    Response.Redirect("~/UI/UserLogin.aspx");
                }
            }
        }

        protected void btnSendRequest_Click(object sender, EventArgs e)
        {

            BusinessAccessLayer.BuyerChoice buyerChoice = new BusinessAccessLayer.BuyerChoice
            {
                Type=ddPropertyType.SelectedItem.ToString(),
                Area=Convert.ToDouble(txtSize.Text),
                MaximumBudget=Convert.ToDouble(txtBudget.Text),
                PrefferedLocation=txtLocation.Text,
                NoOfBedRoom=Convert.ToInt32(txtBed.Text),
                NoOfBathRoom=Convert.ToInt32(txtBath.Text),
                ContactAddress=taContactInfo.InnerHtml,
                Email=txtEmail.Text
            };

            RESBusiness resb = new RESBusiness
            {
                BuyerChoiceObj = buyerChoice
            };

            resb.AddNewBuyerChoice();

            StringBuilder sb = new StringBuilder();
            sb.Append("<script>");
            sb.Append("alert('Successfully added your choice')");
            sb.Append("</script>");

            Response.Write(sb);
            Response.Redirect("Index.aspx");
        }
    }
}