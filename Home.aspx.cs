using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solar_Management_System.Client
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["uid"] = "";
            Application["aid"] = "";
        }

        protected void lnkadminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");
        }

        protected void lnkuserSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Registration.aspx");
        }

        protected void lnkaboutus_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Client/About.aspx");
        }
    }
}