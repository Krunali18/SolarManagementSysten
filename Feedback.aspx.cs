using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solar_Management_System.Client
{
    public partial class Feedback1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (fname.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter name');", true);
                fname.Focus();
            }
            else if (lname.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter father name');", true);
                lname.Focus();
            }

            else if (mail.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  roll NO.');", true);
                mail.Focus();
            }
            else if (txtaddress.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  roll NO.');", true);
                txtaddress.Focus();
            }
            else
            {
                string id = System.Convert.ToString(Application["x"]);
                string s;
                s = "insert into feedback_details(feedbackid,fname,lname,emailId,mobileNumber,feeback_message) values ('" + id + "','" + fname.Text +"','"+ lname.Text +"','" + mail.Text +"','"+txtaddress+"')";
                cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\ADMIN\\source\\repos\\Solar Management System\\Solar Management System\\App_Data\\Database1.mdf\";Integrated Security=True");
                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                int y = 0;

                y = cmd.ExecuteNonQuery();
                if(y== 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('your form is  successfully submitted',AlertBoxButtons.YesNoCancel);", true);
                    //Response.Redirect("../Client/Home.aspx");
                }
                //System.IO.FileInfo file = new System.IO.FileInfo(photo.PostedFile.FileName);
                //string img = file.Name.Remove((file.Name.Length - file.Extension.Length));
                //img = img + System.DateTime.Now.ToString("_ddMMyyhhmmss") + file.Extension;
                //string s;
                //string id = System.Convert.ToString(Application["x"]);
                //s = "INSERT INTO ADMISSION ( STU_ID, STU_NAME,STU_F_NAME,STU_PAR_ADD,STU_CURR_ADD,STU_COUNTRY,STU_STATE,STU_CITY,STU_NATI,STU_GENDER,STU_QUAL,STU_COURSE,STU_PHOTO,STU_HOB,STU_MOBILE,STU_DOB,STU_DOA,STU_HPASS_Y,STU_HPER,STU_HUNI,STU_HROLL,STU_IPASS_Y,STU_IPER,STU_IUNI,STU_IROLL) VALUES('" + id + "','" + name.Text + "', '" + fname.Text + "','" + add1.Text + "','" + add2.Text + "','" + country.Text + "','" + state.Text + "','" + city.Text + "','" + nan.Text + "','" + gen.Text + "','" + qul.Text + "','" + course.Text + "','" + img + "','" + hob.Text + "','" + mob.Text + "','" + dob.Text + "','" + doa.Text + "','" + hy.Text + "','" + hp.Text + "','" + hu.Text + "','" + hr.Text + "','" + iy.Text + "','" + ip.Text + "','" + iu.Text + "','" + ir.Text + "')";

                //cn.Open();
                //SqlCommand cmd = new SqlCommand(s, cn);
                //int y = 0;
                //y = cmd.ExecuteNonQuery();
                //if (y == 1)
                //{
                //    string imgPath = "../img/" + img;
                //    if (photo.PostedFile != null && photo.PostedFile.FileName != "")
                //    {
                //        photo.SaveAs(Server.MapPath(imgPath));
                //    }
                //    ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('your form is  successfully submitted',AlertBoxButtons.YesNoCancel);", true);
                //    Response.Redirect("../student/student.aspx");
                //}
                //else
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('your form is not  successfully submitted');", true);
                //}
                //}
            }
    }
  }
}