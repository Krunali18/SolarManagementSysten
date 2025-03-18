using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solar_Management_System.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserNamePass.Visible = false;
        }

        protected void brnLogin_Click(object sender, EventArgs e)
        {
            if (txtuId.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter id');", true);
                txtuId.Focus();
            }
            else if (txtPassword.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
                txtPassword.Focus();
            }

            else
            {
                String u_id, u_pass, s;
                u_id = txtuId.Text;
                u_pass = txtPassword.Text;

                s = "select * from LoginMaster where username= '" + u_id + "'";
                SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\ADMIN\\source\\repos\\Solar Management System\\Solar Management System\\App_Data\\Database1.mdf\";Integrated Security=True");
                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rs = cmd.ExecuteReader();
                if (rs.HasRows)
                {
                    //Application["x"] = rs.GetValue(1);
                    Application["uid"] = "user";
                    Response.Redirect("~/Client/SolarProducts.aspx");
                }
                else
                {
                    lblUserNamePass.Visible = true;
                }
                //while (rs.Read())
                //{
                //    if (u_id == rs.GetString(5) && u_pass == rs.GetString(6))
                //    {
                //        Application["x"] = rs.GetString(5);
                //        Application["uid"] = "user";
                //        Response.Redirect("SolarProducts.aspx");
                //    }
                //    else
                //    {
                //        lblUserNamePass.Visible = true;
                //    }
                //}
            }

        }

        protected void lnkSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Client/Home.aspx");
        }
    }
}