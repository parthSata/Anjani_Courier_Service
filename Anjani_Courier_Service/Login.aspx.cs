﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace Anjani_Courier_Service.Content
{
    public partial class Loginaspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Parth\Anjani_Courier_Service\Anjani_Courier_Service\App_Data\Login.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (text_usename.Text != "" && text_pass.Text != "")
            {
                string str = "select * from Register_user  where Username='" + text_usename.Text + "'and Password='" + text_pass.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(str,con);  
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >0)
                {
                    Session["User_Id"] = text_usename;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Email Or Password');", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Enter Email And Password'');", true);

            }
        }

    }
}