<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdown.aspx.cs" Inherits="Anjani_Courier_Service.dropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="2" class="auto-style1">
                <tr>
                    <td>Country</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>State</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" AutoPostBack="true" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
            </table>
        </div>

    </form>
</body>
</html>
