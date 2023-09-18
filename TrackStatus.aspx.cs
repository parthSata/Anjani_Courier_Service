using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Anjani_Courier_Service
{
    public partial class TrackStatus : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Anjani_Courier_Service\Anjani_Courier_Service\Anjani_Courier_Service\App_Data\Login.mdf;Integrated Security=True");

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

            try
            {
                if (Docket_No.Text != "" && Company_Name.Text != "" && From_Center.Text != "" && To_Center.Text != "" && Date_Time.Text != "" && Condition.Text != "")
                {
                    string sql = "insert into [Track Status] values('" + Docket_No.Text + "','" + Company_Name.Text + "','" + From_Center.Text + "','" + To_Center.Text + "','" + Date_Time.Text + "','" + Condition.Text + "')";
                    SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Response.Write("Inserted");
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
        public void clear()
        {
            Docket_No.Text = "";
            Company_Name.Text = "";
            From_Center.Text = "";
            To_Center.Text = "";
            Date_Time.Text = "";
            Condition.Text = "";
        }
    }
}
/*
CREATE TABLE [dbo].[Track Status] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Docket No]    NVARCHAR (50) NOT NULL,
    [Company name] NVARCHAR (50) NOT NULL,
    [From Center]  NVARCHAR (50) NOT NULL,
    [To Center]    NVARCHAR (50) NOT NULL,
    [Date Time]    NVARCHAR (50) NOT NULL,
    [Condition]    NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Track Status] PRIMARY KEY CLUSTERED ([Id] ASC)
);


*/
