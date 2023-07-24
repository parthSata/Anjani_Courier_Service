<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Entry.aspx.cs" Inherits="Anjani_Courier_Service.Register_Entry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Entry</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />

</head>
<body>
    <nav class="navbar navbar-expand-lg sticky-top bg-dark-subtle">
        <div class="container-fluid">
            <a class="navbar-brand" href="Home.aspx">Anjani Courier Service</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <asp:HyperLink runat="server" ID="NavLinkHome" NavigateUrl="~/Home.aspx" CssClass="nav-link active" Text="Home" />

                    </li>

                    <li class="nav-item">
                        <asp:HyperLink runat="server" ID="NavLinkAbout" NavigateUrl="~/About.aspx" CssClass="nav-link" Text="About Us" />

                    </li>

                    <li class="nav-item">
                        <asp:HyperLink runat="server" ID="NavLinkContact" NavigateUrl="~/Contact.aspx" CssClass="nav-link" Text="Contact Us" />
                    </li>

                    <li class="nav-item">
                        <asp:HyperLink runat="server" ID="HyperLink1" NavigateUrl="~/Register_Entry.aspx" CssClass="nav-link" Text="Entry" />
                    </li>

                    <%--                     <li class="nav-item">
                        <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl="~/Login.aspx" CssClass="nav-link" Text="Login" />
                    </li>--%>
                </ul>


            </div>
        </div>
    </nav>
    <section class="vh-100 gradient-custom">
        <div class=" py-5 h-100">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                        <img src="https://content3.jdmagicbox.com/comp/palitana/j3/0278px278.x278.140418001002.d2j3/catalogue/shree-anjani-courier-services-pvt-ltd-palitana-palitana-courier-services-anjani-01n1e8a5l1.jpg" />

                        <div class="card-body p-4 p-md-5">
                            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Courier Entry </h3>
                            <form runat="server">

                                <div class="row">
                                    <div class="col-md-6 mb-4">

                                        <div class="form-outline ">
                                            <label class="form-label" for="form3Example1q">ID :</label>
                                            <asp:TextBox class="form-control form-control-lg" placeholder="Enter ID" type="number" ID="text_id" runat="server"></asp:TextBox>


                                            <label class="form-label" for="form3Example1q">Company Name :</label>
                                            <asp:TextBox class="form-control form-control-lg" ID="text_party" placeholder="Enter Company Name" runat="server"></asp:TextBox>

                                            <label class="form-label" for="form3Example1q">Weight :</label>
                                            <asp:TextBox class="form-control form-control-lg" ID="text_weight" placeholder="Enter Weight" runat="server" OnTextChanged="text_weight_TextChanged"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="text_weight"  ForeColor="Red" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"> </asp:RegularExpressionValidator><br />


                                            <label class="form-label" for="form3Example1q">Charges :</label>
                                            <asp:TextBox class="form-control form-control-lg" ID="text_charges" placeholder="Enter Charges" runat="server" OnTextChanged="text_charges_TextChanged" AutoPostBack="true"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="text_charges" ForeColor="Red" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"> </asp:RegularExpressionValidator><br />


                                            <label class="form-label mt-4" for="form3Example1q">From Destination :</label>
                                            <%--<asp:TextBox class="form-control form-control-lg" placeholder="From Destination" ID="text_fromDestination" runat="server"></asp:TextBox>--%>

                                            <asp:DropDownList ID="From_Destination" class="form-control form-control-lg" runat="server" Width="369px">
                                                <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Rajkot" Value="Rajkot"></asp:ListItem>
                                                <asp:ListItem Text="Surat" Value="Surat"></asp:ListItem>
                                                <asp:ListItem Text="Ahemdabad" Value="Ahemdabad"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                    </div>
                                    <div class="col-md-6 mb-4">

                                        <div class="form-outline">
                                            <label class="form-label" for="form3Example1q">Date :</label>
                                            <asp:TextBox class="form-control form-control-lg" type="date" ID="text_date" runat="server"></asp:TextBox>
                                            <asp:CompareValidator ID="dateValidator" runat="server" Type="Date" Operator="DataTypeCheck" ControlToValidate="text_date" ErrorMessage="Please enter a valid date."></asp:CompareValidator>

                                            <br />

                                            <label class="form-label " for="form3Example1q">Consignment No :</label>
                                            <asp:TextBox class="form-control form-control-lg" type="number" placeholder="Consignment No" ID="text_consignment" runat="server"></asp:TextBox>


                                            <label class="form-label" for="form3Example1q">Total Amoutnt :</label>
                                            <asp:TextBox class="form-control disabled form-control-lg" placeholder="Total Amoutnt" ID="text_total" runat="server" OnTextChanged="text_total_TextChanged" ReadOnly="True"></asp:TextBox>


                                            <label class="form-label mt-4" for="form3Example1q">To Destination :</label>
                                            <%--<asp:TextBox class="form-control form-control-lg" placeholder="To Destination" ID="text_toDestination" runat="server"></asp:TextBox>--%>

                                            <asp:DropDownList ID="To_Destination" class="form-control form-control-lg" runat="server" Width="379px">
                                                <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Rajkot" Value="Rajkot"></asp:ListItem>
                                                <asp:ListItem Text="Surat" Value="Surat"></asp:ListItem>
                                                <asp:ListItem Text="Ahemdabad" Value="Ahemdabad"></asp:ListItem>
                                            </asp:DropDownList>


                                        </div>
                                    </div>
                                </div>

                                <%--<asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-HorizontalAlign="center" Width="783px"></asp:GridView>--%>

                                <div class="mt-4 d-flex justify-content-evenly pt-2">
                                    <asp:Button ID="btn_submit" class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClick="btn_submit_Click1" />
                                    <asp:Button ID="btn_update" class="btn btn-primary btn-lg" runat="server" Text="Update" OnClick="btn_update_Click" />
                                    <asp:Button ID="btn_delete" class="btn btn-primary btn-lg" runat="server" Text="Delete" OnClick="btn_delete_Click" />
                                    <asp:Button ID="btn_search" class="btn btn-primary btn-lg" runat="server" Text="Search" OnClick="btn_search_Click" />
                                    <asp:Button ID="btn_clear" class="btn btn-primary btn-lg" runat="server" Text="Clear" OnClick="btn_clear_Click1" />

                                </div>
                                <div class="pl-0 mt-4">
                                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="402px">
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                        <RowStyle BackColor="White" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</body>
</html>
