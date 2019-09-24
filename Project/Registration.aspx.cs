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
    public struct User
    {
        public string username;
        public string password;
        public string firstname;
        public string lastname;
        public string EmailAddress;
        public string PhoneNumber;
        public string UnitNumber;
        public string StreetAddress;
        public string Province;
        public string State;
        public string PostalCode;
    }

    public partial class Registration : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnMA_Click(object sender, EventArgs e)
        {
            try
            {
                User user = new User();
                user.username = tbUserName.Text;
                user.password = tbPassword.Text;
                user.firstname = tbFirstName.Text;
                user.lastname = tbLastName.Text;
                user.EmailAddress = tbEmailAddress.Text;
                user.PhoneNumber = tbPhoneNumber.Text;
                user.UnitNumber = tbUnitNumber.Text;
                user.StreetAddress = tbStreetAddress.Text;
                user.Province = tbProvince.Text;
                user.State = tbState.Text;
                user.PostalCode = tbPostalCode.Text;

                SqlConnection Conn = new SqlConnection
          (ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);


                Conn.Open();
               
                string cmdstring = "Select count(*) from customers where UserName='" + user.username + "'";
                SqlCommand userexist = new SqlCommand(cmdstring, Conn);
                int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    lbResult.Text = "User Exists";
                }
                else
                {
                    string insertString = "INSERT into customers (UserName,Password,FirstName,LastName,EmailAddress,PhoneNumber,UnitNumber,StreetAddress,Province,State,PostalCode)" +
                        " VALUES (@UserName,@Password,@FirstName,@LastName,@EmailAddress,@PhoneNumber,@UnitNumber,@StreetAddress,@Province,@State,@PostalCode)";
                    SqlCommand insertUser = new SqlCommand(insertString, Conn);

                    insertUser.Parameters.AddWithValue("@UserName", user.username);
                    insertUser.Parameters.AddWithValue("@Password", user.password);
                    insertUser.Parameters.AddWithValue("@FirstName", user.firstname);
                    insertUser.Parameters.AddWithValue("@LastName", user.lastname);
                    insertUser.Parameters.AddWithValue("@EmailAddress", user.EmailAddress);
                    insertUser.Parameters.AddWithValue("@PhoneNumber", user.PhoneNumber);
                    insertUser.Parameters.AddWithValue("@UnitNumber", user.UnitNumber);
                    insertUser.Parameters.AddWithValue("@StreetAddress", user.StreetAddress);
                    insertUser.Parameters.AddWithValue("@Province", user.Province);
                    insertUser.Parameters.AddWithValue("@State", user.State);
                    insertUser.Parameters.AddWithValue("@PostalCode", user.PostalCode);

                    insertUser.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
                Conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error");
                Response.Write(ex.ToString());
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}