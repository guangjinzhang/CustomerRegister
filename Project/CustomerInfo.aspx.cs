using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Project
{
    public partial class CustomerInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
        }

        protected void display()
        {
            try
            {          
                SqlConnection Conn = new SqlConnection
      (ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);
            Conn.Open();
            string cmdstring = "Select * from customers where UserName='" + Session["UserName"].ToString() + "'";
            SqlCommand userinfo = new SqlCommand(cmdstring, Conn);
            SqlDataReader reader = userinfo.ExecuteReader();

            while (reader.Read())
            {
                tbFirstName.Text = reader.GetString(2);
                tbLastName.Text = reader.GetString(3);
                tbEmailAddress.Text = reader.GetString(4);
                tbPhoneNumber.Text = reader.GetString(5);
                tbUnitNumber.Text = reader.GetString(6);
                tbStreetAddress.Text = reader.GetString(7);
                tbProvince.Text = reader.GetString(8);
                tbState.Text = reader.GetString(9);
                tbPostalCode.Text = reader.GetString(10);
            }
            Conn.Close();
        }
            catch (Exception ex)
            {
                Response.Write("Error");
                Response.Write(ex.ToString());
            }
        }


        protected void btnChange_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection
          (ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);
                Conn.Open();
                string updateString = "update customers set FirstName='" + tbFirstName.Text.ToString() + "',LastName='" + tbLastName.Text.ToString() 
                    + "',EmailAddress='" + tbEmailAddress.Text.ToString() + "',PhoneNumber='" + tbPhoneNumber.Text.ToString() 
                    + "',UnitNumber='" + tbUnitNumber.Text.ToString() + "',StreetAddress='" + tbStreetAddress.Text.ToString() 
                    + "',Province='" + tbProvince.Text.ToString() + "',State='" + tbState.Text.ToString() + "',PostalCode='" + tbPostalCode.Text.ToString() 
                    + "' where UserName = '" + Session["UserName"].ToString() + "'";
                SqlCommand updateUser = new SqlCommand(updateString, Conn);
                updateUser.ExecuteScalar(); 
                lbResult.Text = "Successful Change" ;
                Conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error");
                Response.Write(ex.ToString());
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerInfo.aspx");
        }

        protected void lbMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}