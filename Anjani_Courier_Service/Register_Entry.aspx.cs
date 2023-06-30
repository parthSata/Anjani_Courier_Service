﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;
using System.ComponentModel;

namespace Anjani_Courier_Service
{
    
    public partial class Register_Entry : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Parth\Anjani_Courier_Service\Anjani_Courier_Service\App_Data\Login.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }

     
        

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            try
            {
                if (text_id.Text != "" && text_date.Text != "" && text_party.Text != "" && text_consignment.Text != "" && text_weight.Text != "" && text_total.Text != "" && text_charges.Text != "" && text_toDestination.Text != "" && text_fromDestination.Text != "")
                {
                    string sql = "insert into Registration values('" + text_id.Text + "','" + text_date.Text + "','" + text_party.Text + "','" + text_consignment.Text + "','" + text_weight.Text + "','" + text_total.Text + "','" + text_charges.Text + "','" + text_toDestination.Text + "','" + text_fromDestination.Text + "')";
                    SqlDataAdapter da = new SqlDataAdapter(sql, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    show();
                    //Response.Write("You Are Now Registered As a User");
                    clear();
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('No Empty Value Allowed ')</script>");
                }
            }
            catch 
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Id is Already Exist ')</script>");
               clear();
            }
        }

        public void show()
        {


            string sql = "select * from Registration";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
            da.Fill(dt);
        
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public void clear()
        {
            text_id.Text = "";
            text_date.Text = "";
            text_party.Text = "";
            text_consignment.Text = "";
            text_weight.Text = "";
            text_total.Text = "";
            text_charges.Text = "";
            text_toDestination.Text = "";
            text_fromDestination.Text = "";
            text_id.Focus();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (text_id.Text != "" && text_date.Text != "" && text_party.Text != "" && text_consignment.Text != "" && text_weight.Text != "" && text_total.Text != "" && text_charges.Text != "" && text_toDestination.Text != "" && text_fromDestination.Text != "")
            {
/*                string sql = "UPDATE Registration SET Date='" + text_date.Text + "', Party_Name='" + text_party.Text + "',Consignment_No='" + text_consignment.Text + "', Weight='" + text_weight.Text + "', Total_Amount='" + text_total.Text + "', Charges='" + text_charges.Text + "', To_Destination='" + text_toDestination.Text + "', From_Destination='" + text_fromDestination.Text + "' WHERE Id='" + text_id.Text + "'";
*/
                string sql = "update Registration SET Date='" + text_date.Text + "', Party_Name='" + text_party.Text + "', Consigment_No='" + text_consignment.Text + "', Weight='" + text_weight.Text + "', Total_Amount='" + text_total.Text + "', Charges='" + text_charges.Text + "', To_Destination='" + text_toDestination.Text + "', From_Destination='" + text_fromDestination.Text + "' WHERE Id='" + text_id.Text + "'";

                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                show();
                clear();
            }
            else
            {
                Response.Write("No Empty value Allowed");
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string sql = "delete from Registration where Id='" + text_id.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
           
            show();
            clear();
        }

        

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string Sql = "select * from Registration where Id ='" + text_id.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(Sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            text_id.Text = dt.Rows[0][0].ToString();
            text_date.Text = dt.Rows[0][1].ToString();
            text_party.Text = dt.Rows[0][2].ToString();
            text_consignment.Text = dt.Rows[0][3].ToString();
            text_weight.Text = dt.Rows[0][4].ToString();
            text_total.Text = dt.Rows[0][5].ToString();
            text_charges.Text = dt.Rows[0][6].ToString();
            text_toDestination.Text = dt.Rows[0][7].ToString();
            text_fromDestination.Text = dt.Rows[0][8].ToString();
        }

        protected void btn_clear_Click1(object sender, EventArgs e)
        {
            clear();
        }
    }
}