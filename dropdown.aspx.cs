using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Anjani_Courier_Service
{
    public partial class dropdown : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-CCNHMQU\SQLEXPRESS;Initial Catalog=Courier_Management;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Country();
            }
        }
        protected void Country()
        {
            string sql = "select * from country_list";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Country";
            DropDownList1.DataValueField = "CountryID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));
            DropDownList3.Items.Insert(0, new ListItem("--Select--", "0"));

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int CountryID = Convert.ToInt32(DropDownList1.SelectedValue);
            string sql = "select * from state where  Countrycode='" + CountryID +"'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataSet ds =  new DataSet();
            da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "StateName";
            DropDownList2.DataValueField = "StateID";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));

        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            int StateID = Convert.ToInt32(DropDownList2.SelectedValue);
            string sql = "select * from city where StateID='"+ StateID +"'";
            SqlDataAdapter da = new SqlDataAdapter(sql,cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "city";
            DropDownList3.DataValueField = "cityid";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}