using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Data;

namespace RealState.admin
{
    public partial class DashBoard : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                if (!IsPostBack)
                {
                    GetAllUserList();
                    GetAllPropertyList();
                    GetAllBuyerChoiceList();
                }
            }else
            {
                Response.Redirect("Login.aspx");
            }
        }


        private void GetAllUserList()
        {
            DataTable dt= DataAccess.executeDTByProcedure("SP_SELECT_ALL_USER", null);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void GetAllPropertyList()
        {
            DataTable dt = DataAccess.executeDTByProcedure("sp_select_property", null);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        private void GetAllBuyerChoiceList()
        {
            DataTable dt = DataAccess.executeDTByProcedure("sp_select_buyerchoice", null);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}