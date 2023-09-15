using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Services.Description;
using static System.Net.Mime.MediaTypeNames;

namespace Anjani_Courier_Service
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Anjani_Courier_Service\Anjani_Courier_Service\Anjani_Courier_Service\App_Data\Login.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


            protected void Button1_Click(object sender, EventArgs e)
        {
            if (Text_fname.Text != "" && Text_lname.Text != "" && Text_email.Text != "" && Text_username.Text != "" && Text_pass.Text != "" && Text_cpass.Text != "")
            {
                string sql = "insert into Register_user values('" + Text_fname.Text + "','" + Text_lname.Text + "','" + Text_email.Text + "','" + Text_username.Text + "','" + Text_pass.Text + "','" + Text_cpass.Text + "')";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Response.Write("<script LANGUAGE='JavaScript' >alert('You Are Now Registered As a User ')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('No Empty Value Allowed ')</script>");

            }
        }
    }
}