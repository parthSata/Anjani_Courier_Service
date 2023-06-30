<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Anjani_Courier_Service.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            //insert into Login values('" + text_usename.Text + "','" + text_pass.Text + "')
                //string sql = "select * from Login";
                //SqlDataAdapter da = new SqlDataAdapter(sql, con);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
            
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 29px" />
            
            <%--<asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
            
            <asp:Button ID="Button2" runat="server" Text="Delete"  style="height: 29px"  />--%>
        </div>
    </form>
</body>
</html>
