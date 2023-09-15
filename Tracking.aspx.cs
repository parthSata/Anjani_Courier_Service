using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Anjani_Courier_Service
{
    public partial class Tracking : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Anjani_Courier_Service\\Anjani_Courier_Service\\Anjani_Courier_Service\\App_Data\\Login.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Text_fname.Text != "")
            {

                string str = "select * from [Track Status]";
                SqlDataAdapter da = new SqlDataAdapter(str, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('No Null Value Allowed');", true);
            }

        }
    }
}