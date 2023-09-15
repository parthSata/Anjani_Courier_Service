<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Anjani_Courier_Service.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <title></title>
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

                </ul>
                <%--<asp:Button ID="Button2" runat="server" class="btn btn-outline-dark bg-primary text-white" Text="Login" OnClick="Button1_Click" />--%>


            </div>
        </div>
    </nav>
    <section class="h-100 h-custom" style="background-color: white;" runat="server">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-8 col-xl-6">
                    <div class="card rounded-3">
                        <img src="https://www.pngitem.com/pimgs/m/170-1702369_delivery-management-system-logo-hd-png-download.png"
                            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                            alt="Sample photo" />
                        <div class="card-body p-4 p-md-5">
                            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2" align="center" style="font-family: 'Times New Roman', Times, serif;">Registration Form</h3>

                            <form class="px-md-2" runat="server">

                               <div class="form-outline mb-4" runat="server">
                                        <label class="form-label" for="form3Example1q">First Name :</label>
                                        <asp:TextBox class="form-control" ID="Text_fname" runat="server"></asp:TextBox>

                                        <label class="form-label mt-1" for="form3Example1q">Last Name :</label>
                                        <asp:TextBox class="form-control" ID="Text_lname" runat="server"></asp:TextBox>

                                        <label class="form-label mt-1" for="form3Example1q">Email :</label>
                                        <asp:TextBox class="form-control" type="email" ID="Text_email" runat="server"></asp:TextBox>

                                        <label class="form-label mt-1" for="form3Example1q">Username :</label>
                                        <asp:TextBox class="form-control"  ID="Text_username" runat="server"></asp:TextBox>

                                        <label class="form-label mt-1" for="form3Example1q"> Password :</label>
                                        <asp:TextBox class="form-control" type="password" ID="Text_pass" runat="server"></asp:TextBox>
                                        
                                        <label class="form-label mt-1" for="form3Example1q"> Confirm Password :</label>
                                        <asp:TextBox class="form-control" type="password" ID="Text_cpass" runat="server"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Your Password is Not Matched" ControlToCompare="Text_pass" ControlToValidate="Text_cpass" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:CompareValidator><br />
                                    </div>

                                <asp:Button ID="Button1" class="btn btn-primary btn-lg text-center" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
