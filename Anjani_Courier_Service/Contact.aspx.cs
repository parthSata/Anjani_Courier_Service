using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Anjani_Courier_Service
{
    public partial class Contact : System.Web.UI.Page
    {
        public object TextArea1 { get; private set; }
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Parth\Anjani_Courier_Service\Anjani_Courier_Service\App_Data\Login.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User_Id"] == null)
            {
                Session.Clear();
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextArea1.ToString() != "")
            {
            string sql = "insert into Contact values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+ TextArea1.ToString() +"')";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("<script LANGUAGE='JavaScript'>alert('Your Message Was Sent Succesfully !!')</script>");

             }
             else
             {
                 Response.Write("<script LANGUAGE='JavaScript' >alert('No Empty Value Allowed ')</script>");
             }
        }
        public void show()
        {
            string sql = "select * from Contact";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                string sql = "insert into Contact values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Response.Write("<script LANGUAGE='JavaScript'>alert('Your Message Was Sent Succesfully !!')</script>");
                clear();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('No Empty Value Allowed ')</script>");
            }
        }
        public void clear()
        {
           TextBox1.Text = "";
           TextBox2.Text = "";
           TextBox3.Text = "";
           TextBox4.Text = "";
            TextBox1.Focus();
        }
    }

}