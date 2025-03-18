using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solar_Management_System.Account
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (gen.Page.IsPostBack == false)
            {
                gen.Items.Add("salect gender");
                gen.Items.Add("male");
                gen.Items.Add("female");
            }
        }

        protected void gen_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gen.SelectedItem.ToString() == "Select gender")
                gen1.Text = "";
            else
                gen1.Text = gen.SelectedItem.ToString();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (fname.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter first name');", true);
                fname.Focus();
            }
            else if (lname.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter last name');", true);
                lname.Focus();
            }
            else if (mail.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter E-mail id');", true);
                mail.Focus();
            }
            else if (mob.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter mobile no.');", true);
                mob.Focus();
            }
            else if (gen.Text == "salect gender")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select gender');", true);
                gen.Focus();
            }
            else if (uid.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter user id');", true);
                uid.Focus();
            }
            else if (pass.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
                pass.Focus();
            }
            else if (cpass.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter conform password');", true);
                cpass.Focus();
            }

            else
            {
                String f_name, l_name, email, address,gender, u_id, u_pass, c_pass, s, mobi, s1,s2;
                Boolean active;
                int x = 0, c = 0;
                f_name = fname.Text; l_name = lname.Text; email = mail.Text; mobi = mob.Text; address = txtaddress.Text; gender = gen.SelectedItem  .ToString ();active = true; u_id = uid.Text; u_pass = pass.Text; c_pass = cpass.Text;
                s1 = "select * from RegistrationMaster";
                s = "INSERT INTO RegistrationMaster ( FirstName, LastName,Emailid,mobilenumber,address,gender,u_id,password,c_password) VALUES('" + f_name + "','" + l_name + "', '" + email + "','" + mobi + "', '" + address + "','" + gender + "','" + u_id + "','" + u_pass + "','" + c_pass + "')";
                s2 = "INSERT INTO LoginMaster ( username, password,usertype,isactive,createddatetime) VALUES('" + u_id + "','" + u_pass + "','Admin',' " + active +"' ,' " + DateTime .Now .ToString () + "')";

                SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\ADMIN\\source\\repos\\Solar Management System\\Solar Management System\\App_Data\\Database1.mdf\";Integrated Security=True");

                cn.Open();
                SqlCommand cmd = new SqlCommand(s1, cn);
                SqlDataReader rs = cmd.ExecuteReader();
                //while (rs.Read())
                //{
                //    if (uid.Text == rs.GetString(0))
                //    {
                //        c = 1;
                //    }
                //}
                cn.Close();


                if (c == 0)
                {
                    SqlConnection cn1 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\ADMIN\\source\\repos\\Solar Management System\\Solar Management System\\App_Data\\Database1.mdf\";Integrated Security=True");


                    cn1.Open();
                    SqlCommand cmd1 = new SqlCommand(s, cn1);
                    SqlCommand cmd2 = new SqlCommand(s2, cn1);
                    if (u_pass == c_pass)
                        x = cmd1.ExecuteNonQuery();
                    else
                        mess.Visible = true;
                    if (x == 1)
                    {
                        Response.Redirect("~/Client/Home.aspx");
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choose different user id');", true);
                    uid.Text = "";
                    uid.Focus();
                }

            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Client/Home.aspx");
        }
    }
}