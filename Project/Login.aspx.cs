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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection
          (ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);


                Conn.Open();
                string cmdstring = "Select count(*) from customers where UserName='" + tbUserName.Text + "' and Password='"+tbPassword.Text+"'";
                SqlCommand userexist = new SqlCommand(cmdstring, Conn);
                int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());
                if (temp == 1){
                    Session["UserName"] = tbUserName.Text;
                    Session["Password"] = tbPassword.Text;
                    Response.Redirect("Main.aspx");//when login, redirect to the main page                                                                       
                }
                else{
                    lbError.Text = "User or Password is wrong";
                }
                userexist.Dispose();
                Conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error");
                Response.Write(ex.ToString());
            }
        }

        protected void newUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx"); 
            
        }
    }
}