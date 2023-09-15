<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tracking.aspx.cs" Inherits="Anjani_Courier_Service.Tracking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Track Your Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />

</head>
<body>
    <nav class="navbar navbar-expand-lg  bg-dark-subtle">
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

                    <li class="nav-item">
                        <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl="~/Tracking.aspx" CssClass="nav-link" Text="Tracking" />
                    </li>

                </ul>
                <%--<asp:Button ID="Button2" runat="server" class="btn btn-outline-dark bg-primary text-white" Text="Login" OnClick="Button1_Click" />--%>
            </div>
        </div>
    </nav>
    <section class="h-100 h-custom" style="background-color: white;" runat="server">
        <div class="contaner py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-8 col-xl-6">
                    <div class="card rounded-3">
                        <img src="https://www.pngitem.com/pimgs/m/170-1702369_delivery-management-system-logo-hd-png-download.png"
                            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                            alt="Sample photo" />
                        <div class="card-body p-4 p-md-5">
                            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2" align="center" style="font-family: 'Times New Roman', Times, serif;">Tracking Of Your Courier</h3>

                            <form class="px-md-2" runat="server">

                                <div class="form-outline mb-4" runat="server">
                                    <label class="form-label" for="form3Example1q">Track Your Order :</label>
                                    <asp:TextBox class="form-control" ID="Text_fname" runat="server"></asp:TextBox>

                                </div>
                                <asp:GridView ID="GridView1" class="mb-3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="633px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="Docket No" HeaderText="Docket No" SortExpression="Docket No" />
                                        <asp:BoundField DataField="Company Name" HeaderText="Company Name" SortExpression="Company Name" />
                                        <asp:BoundField DataField="From Center" HeaderText="From Center" SortExpression="From Center" />
                                        <asp:BoundField DataField="To Center" HeaderText="To Center" SortExpression="To Center" />
                                        <asp:BoundField DataField="Date Time" HeaderText="Date Time" SortExpression="Date Time" />
                                        <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Track Status]"></asp:SqlDataSource>

                                <asp:Button ID="Button1" class="btn btn-primary btn-lg text-center" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="text-white text-center text-lg-start bg-dark">
        <div class="container p-4">
            <div class="row mt-4">
                <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
                    <h4 class="display-7 fw-bolder text-white mb-2" style="font-family: 'Times New Roman', Times, serif">SHREE ANJANI COURIER SERVICES </h4>
                    <p class="lead fw-normal text-white-50 mb-4">
                        SHREE ANJANI COURIER SERVICES PVT. LTD. was incorporated on 8th November 2003 with the director who had 18 years of experience in courier industry.                                
                    </p>

                    <div class="mt-4 d-flex justify-content-around">
                        <!-- Facebook -->
                        <a href="#"><i class="fa-brands fa-facebook fa-2xl " style="color: #4986ee; cursor: pointer;"></i></a>

                        <a href="#"><i class="fa-brands fa-instagram fa-2xl " style="color: #4986ee; cursor: pointer;"></i></a>
                        <!-- Twitter -->
                        <a href="#"><i class="fa-brands fa-twitter fa-2xl " style="color: #4986ee; cursor: pointer;"></i></a>
                        <!-- Google + -->
                        <a href="#"><i class="fa-brands fa-google fa-2xl " style="cursor: pointer;"></i></a>
                        <!-- Linkedin -->
                        <a href="#"><i class="fa-brands fa-linkedin fa-2xl " style="color: #4986ee; cursor: pointer;"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-4 pb-1">Address :</h5>



                    <ul class="fa-ul" style="margin-left: 1.65em;">
                        <li class="mb-3">
                            <span class="fa-li"><i class="fas fa-home"></i></span><span class="ms-2">16/17, Surabhi Complax, 4, Rajput Para, Under J.M.C Hotel Building,, Rajkot, Gujarat 360001</span>
                        </li>
                        <li class="mb-3">
                            <span class="fa-li"><i class="fas fa-envelope"></i></span><span class="ms-2">Anjanicourier@gmail.com</span>
                        </li>
                        <li class="mb-3">
                            <span class="fa-li"><i class="fas fa-phone"></i></span><span class="ms-2">+918306614014</span>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-4">Opening hours</h5>

                    <table class="table text-center text-white">
                        <tbody class="fw-normal">
                            <tr>
                                <td>Mon - Sat:</td>
                                <td>8am - 9pm</td>
                            </tr>
                            <tr>
                                <td>Sunday:</td>
                                <td>Holiday</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--Grid column-->
            </div>
            <!--Grid row-->
        </div>
        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2023 Copyright By Parth Sata
        </div>
        <!-- Copyright -->
    </footer>
</body>
</html>
