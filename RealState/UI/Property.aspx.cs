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
    public partial class Property : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] != null || Session["Admin"] != null)
                {
                    string userType = "";
                    if (Session["User"] != null)
                    {
                        userType = Session["User"].ToString();

                        if (userType.Equals("seller"))
                        {

                        }
                        else
                        {
                            Response.Redirect("~/UI/index.aspx");
                        }
                    }

                }
                else
                {
                    Response.Redirect("~/UI/UserLogin.aspx");
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (fuImage.HasFile)
            {
                string extension = System.IO.Path.GetExtension(fuImage.FileName);

                if (extension.ToLower().Equals(".png") || extension.ToLower().Equals(".jpg") || extension.ToLower().Equals(".jpeg"))
                {
                    string path = Server.MapPath("~/uploads/");
                    string imagePhysicalPath = path + fuImage.FileName;

                    fuImage.SaveAs(imagePhysicalPath);

                    string databaseImagePath = "../uploads/" + fuImage.FileName;

                    BusinessAccessLayer.Property property = new BusinessAccessLayer.Property
                    {
                        Type = ddlpropertytype.SelectedItem.ToString(),
                        Name = txtPropertyName.Text,
                        Address = ta.InnerText,
                        Image = databaseImagePath,
                        Description = ta1.InnerText,
                        NoOfBedRoom = Convert.ToInt32(txtBed.Text),
                        NoOfBathRoom = Convert.ToInt32(txtBath.Text),
                        Price = Convert.ToDouble(txtPrice.Text),
                        Lat = Convert.ToDouble(hf1.Value),
                        Long = Convert.ToDouble(hf2.Value)
                    };

                    RESBusiness resb = new RESBusiness
                    {
                        PropertyObj = property
                    };

                    resb.AddNewProperty();

                    StringBuilder sb = new StringBuilder();
                    sb.Append("<script>");
                    sb.Append("alert('Successfully added a new property!')");
                    sb.Append("</script>");

                    Response.Write(sb);
                    if (Session["User"] != null)
                    {
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        Response.Redirect("../admin/DashBoard.aspx");
                    }
                }
                else
                {
                    lblStatus.Text = "Please select an image with extension .jpg or .jpeg or .png !";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                lblStatus.Text = "Please Sleect an image";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
}