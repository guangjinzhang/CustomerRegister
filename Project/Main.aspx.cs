using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Project
{
    public partial class Main : System.Web.UI.Page
    {
        public string username;
        protected void Page_Load(object sender, EventArgs e)
        {           
            lbUserName.Text = Session["UserName"].ToString();
        }

        protected void lbCustInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerInfo.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {       
                Session.Contents.RemoveAll();
                Response.Redirect("Login.aspx");
            
        }
    }
}