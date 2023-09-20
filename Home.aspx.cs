using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Anjani_Courier_Service
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if (Session["User_Id"] == null)
            {
                Session.Clear();
                Response.Redirect("Login.aspx");
            }*/
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            if (HiddenField1.Value == "1")
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            //CourierManagement
            //xereh26977
            //xereh26977
            
        }
    }
}
