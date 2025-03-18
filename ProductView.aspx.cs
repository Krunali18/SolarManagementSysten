using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solar_Management_System
{
    public partial class ProductView : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\ADMIN\\source\\repos\\Solar Management System\\Solar Management System\\App_Data\\Database1.mdf\";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["aid"] == "")
                Response.Redirect("../home.aspx");
            string dr, s, f, m, d, n, sr = "";
            int i, r = 0, j = 1, k = 0;

            cnn.Open();
            s = "select * from productmaster";
            SqlCommand cmd = new SqlCommand(s, cnn);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                i = 0;

                tbl.BorderWidth = 2;
                TableRow rowNew = new TableRow();
                tbl.Controls.Add(rowNew);
                sr = rs.GetString(0);
                n = rs.GetString(1);
                f = rs.GetString(2);
                m = rs.GetString(13);
                while (i < 5)
                {
                    TableCell cellNew = new TableCell();
                    if (i == 0)
                        cellNew.Text = System.Convert.ToString(sr);
                    if (i == 1)
                    {
                        LinkButton dt = new LinkButton();
                        dt.ID = "a" + sr.ToString();
                        dt.Text = n;
                        dt.Click += new EventHandler(this.dt_Click);
                        Controls.Add(dt);
                        cellNew.Controls.Add(dt);
                        //cellNew.Text = n;
                    }
                    if (i == 2)
                        cellNew.Text = f;
                    if (i == 3)
                        cellNew.Text = m;
                    if (i == 4)
                    {

                        Button abc = new Button();
                        abc.ID = sr.ToString();
                        abc.Text = "Delete";
                        abc.Click += new EventHandler(this.abc_Click);
                        Controls.Add(abc);
                        cellNew.Controls.Add(abc);
                        Button ab = new Button();
                        ab.ID = "E" + sr.ToString();
                        ab.Text = "Edit";
                        ab.Click += new EventHandler(this.ab_Click);
                        Controls.Add(ab);
                        cellNew.Controls.Add(ab);
                        Button fe = new Button();
                        fe.ID = "F" + sr.ToString();
                        fe.Text = "Fees";
                        fe.Click += new EventHandler(this.fe_Click);
                        Controls.Add(fe);
                        cellNew.Controls.Add(fe);
                        j++;
                    }
                    rowNew.Controls.Add(cellNew);
                    i++;
                }
            }
            cnn.Close();

        }

        protected void abc_Click(object sender, EventArgs e)
        {

            Button abc = (sender as Button);
            string s, i, ph, path;
            i = abc.ID;
            SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");

            cn.Open();
            s = "select * from productmaster where STU_ID='" + i + "'";
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                ph = rs.GetString(12);
                
                path = "C: \\Users\\ADMIN\\source\\repos\\Solar Management System\\Solar Management System\\Client\\img\\" + ph;
                if (ph != "")
                {
                    File.Delete(path);
                }
            }
            cn.Close();
            cn.Open();
            s = "delete from productmaster where STU_ID='" + i + "'";
            SqlCommand cmd1 = new SqlCommand(s, cn);
            cmd1.ExecuteNonQuery();
            cn.Close();
            //my.DELETE(abc.ID);
            Response.Redirect("productview.aspx");

        }

        protected void ab_Click(object sender, EventArgs e)
        {
            Button ab = (sender as Button);
            String text = ab.ID;
            String numbers = text;

            numbers = text.Substring(text.Length - (ab.ID.Length - 1));

            Application["sy"] = "Edite";
            Application["sx"] = numbers;
            Response.Redirect("registration.aspx");
        }
        protected void fe_Click(object sender, EventArgs e)
        {
            Button fe = (sender as Button);
            String text = fe.ID;
            String num = text;
            num = text.Substring(text.Length - (fe.ID.Length - 1));

            Application["sx"] = num;
            Response.Redirect("about.aspx");
        }

        protected void dt_Click(object sender, EventArgs e)
        {

            LinkButton dt = (sender as LinkButton);

            String tex = dt.ID;
            String numbers = tex;
            numbers = tex.Substring(tex.Length - (dt.ID.Length - 1));
            Application["sy"] = "detail";
            Application["sx"] = numbers;
            Response.Redirect("../client/SolarProducts.aspx");
        }
        protected void find_Click(object sender, EventArgs e)
        {
            tbl.Controls.Clear();
            string s, n, f, m, sr, co = "";
            int i, r = 0, j = 1, k = 0;
            if (TextBox1.Text != "")
            {
                SqlConnection cnn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");
                cnn.Open();
                co = "  (STU_NAME like '%" + TextBox1.Text + "%'";
                co += " or STU_F_NAME like '%" + TextBox1.Text + "%'";
                co += " or STU_PAR_ADD like '%" + TextBox1.Text + "%'";
                co += " or STU_CURR_ADD like '%" + TextBox1.Text + "%')";
                s = "select * from ADMISSION where " + co;
                SqlCommand cmd = new SqlCommand(s, cnn);
                SqlDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    i = 0;

                    TableRow rowNew = new TableRow();
                    tbl.Controls.Add(rowNew);
                    sr = rs.GetString(0);
                    n = rs.GetString(1);
                    f = rs.GetString(2);
                    m = rs.GetString(13);
                    while (i < 5)
                    {
                        TableCell cellNew = new TableCell();
                        if (i == 0)
                            cellNew.Text = System.Convert.ToString(sr);
                        if (i == 1)
                        {
                            LinkButton dt = new LinkButton();
                            dt.ID = "a" + sr.ToString();
                            dt.Text = n;
                            dt.Click += new EventHandler(this.dt_Click);
                            Controls.Add(dt);
                            cellNew.Controls.Add(dt);

                        }
                        if (i == 2)
                            cellNew.Text = f;
                        if (i == 3)
                            cellNew.Text = m;
                        if (i == 4)
                        {
                            Button abc = new Button();
                            abc.ID = sr.ToString();
                            abc.Text = "Delete";
                            abc.Click += new EventHandler(this.abc_Click);
                            Controls.Add(abc);
                            cellNew.Controls.Add(abc);
                            Button ab = new Button();
                            ab.ID = "E" + sr.ToString();
                            ab.Text = "Edite";
                            ab.Click += new EventHandler(this.ab_Click);
                            Controls.Add(ab);
                            cellNew.Controls.Add(ab);
                            Button fe = new Button();
                            fe.ID = "F" + sr.ToString();
                            fe.Text = "Fees";
                            fe.Click += new EventHandler(this.fe_Click);
                            Controls.Add(fe);
                            cellNew.Controls.Add(fe);
                            j++;
                        }
                        rowNew.Controls.Add(cellNew);
                        i++;
                    }
                }
                cnn.Close();
            }
            else
            {
                Response.Redirect("student_view.aspx");
            }
        }


        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}