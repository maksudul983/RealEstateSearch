using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    public class RESBusiness
    {
        public User UserObj { get; set; }
        public Admin AdminObj { get; set; }
        public BuyerChoice BuyerChoiceObj { get; set; }
        public Property PropertyObj { get; set; }

        public bool SelectAdmin()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataAccess.addParameter("@adminname", AdminObj.Username);
            parameters[1] = DataAccess.addParameter("@password", AdminObj.Password);

            DataTable dt = DataAccess.executeDTByProcedure("SP_SELECT_ADMIN", parameters);

            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataTable SelectUser()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataAccess.addParameter("@username", UserObj.Username);
            parameters[1] = DataAccess.addParameter("@password", UserObj.Password);

            DataTable dt = DataAccess.executeDTByProcedure("SP_SELECT_USER", parameters);

            if (dt.Rows.Count > 0)
            {
                return dt;
            }
            else
            {
                return new DataTable();
            }
        }

        public void AddNewUser()
        {
            SqlParameter[] parameters = new SqlParameter[6];

            parameters[0] = DataAccess.addParameter("@username", UserObj.Username);
            parameters[1] = DataAccess.addParameter("@fullname", UserObj.FullName);
            parameters[2] = DataAccess.addParameter("@email", UserObj.Email);
            parameters[3] = DataAccess.addParameter("@password", UserObj.Password);
            parameters[4] = DataAccess.addParameter("@phonenumber", UserObj.PhoneNumber);
            parameters[5] = DataAccess.addParameter("@usertype", UserObj.UserType);

            DataAccess.executeDTByProcedure("SP_ADD_NEW_USER", parameters);

        }

        public void AddNewBuyerChoice()
        {
            SqlParameter[] parameters = new SqlParameter[8];

            parameters[0] = DataAccess.addParameter("@propertytype", BuyerChoiceObj.Type);
            parameters[1] = DataAccess.addParameter("@areasize", BuyerChoiceObj.Area);
            parameters[2] = DataAccess.addParameter("@maximumbudget", BuyerChoiceObj.MaximumBudget);
            parameters[3] = DataAccess.addParameter("@preferedlocation", BuyerChoiceObj.PrefferedLocation);
            parameters[4] = DataAccess.addParameter("@noofbedroom", BuyerChoiceObj.NoOfBedRoom);
            parameters[5] = DataAccess.addParameter("@noofbathroom", BuyerChoiceObj.NoOfBathRoom);
            parameters[6] = DataAccess.addParameter("@contactaddress", BuyerChoiceObj.ContactAddress);
            parameters[7] = DataAccess.addParameter("@email", BuyerChoiceObj.Email);

            DataAccess.executeDTByProcedure("SP_ADD_NEW_BUYER_CHOICE", parameters);

        }

        public void AddNewProperty()
        {
            SqlParameter[] parameters = new SqlParameter[10];

            parameters[0] = DataAccess.addParameter("@propertytype", PropertyObj.Type);
            parameters[1] = DataAccess.addParameter("@propertyname", PropertyObj.Name);
            parameters[2] = DataAccess.addParameter("@propertyaddress", PropertyObj.Address);
            parameters[3] = DataAccess.addParameter("@image", PropertyObj.Image);
            parameters[4] = DataAccess.addParameter("@description", PropertyObj.Description);
            parameters[5] = DataAccess.addParameter("@noofbedroom", PropertyObj.NoOfBedRoom);
            parameters[6] = DataAccess.addParameter("@noofbathroom", PropertyObj.NoOfBathRoom);
            parameters[7] = DataAccess.addParameter("@price", PropertyObj.Price);
            parameters[8] = DataAccess.addParameter("@lat", PropertyObj.Lat);
            parameters[9] = DataAccess.addParameter("@long", PropertyObj.Long);

            DataAccess.executeDTByProcedure("SP_ADD_NEW_PROPERTY", parameters);
        }
    }
}
