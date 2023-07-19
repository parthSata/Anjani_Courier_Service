<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Anjani_Courier_Service.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
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

                    <%--<li class="nav-item">
                        <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl="~/Login.aspx" CssClass="nav-link" Text="Login" />
                    </li>--%>
                </ul>
            </div>
        </div>
    </nav>
    <%--<form id="form1" runat="server">
        <div>
             <b>"Shree Anjani House"
34, Old Lati Bazar,
Nr. ST Bus Stand, Raipur
Ahmedabad - 380022
                 </b> 
            </div>
    </form>--%>
    <section class="mb-4 container">

        <!--Section heading-->
        <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
        <!--Section description-->
        <p class="text-center w-responsive mx-auto mb-5">
            Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within
        a matter of hours to help you.
        </p>

        <form runat="server">
            <div class="row">

                <!--Grid column-->
                <div class="col-md-9 mb-md-0 mb-5">

                    <!--Grid row-->
                    <div class="row">

                        <!--Grid column-->
                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <label for="name" class="">Your name</label>
                                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <label for="email" class="">Your email</label>
                                <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <!--Grid column-->

                    </div>
                    <!--Grid row-->

                    <!--Grid row-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="md-form mb-0">
                                <label for="subject" class="">Subject</label>
                                <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <!--Grid row-->

                    <!--Grid row-->
                    <div class="row">

                        <!--Grid column-->
                        <div class="col-md-12">

                            <div class="md-form">
                                <label for="message">Your message</label>
                                <textarea id="TextArea1" cols="20" class="form-control md-textarea" rows="2"></textarea>
                            </div>

                        </div>
                    </div>
                    <!--Grid row-->



                    <div class="status"></div>

                </div>
                <div class="mt-3 text-center text-md-left">
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Send" />
                </div>
                <div class="status"></div>
            </div>
        </form>
    </section>

     <footer class="text-white text-center text-lg-start bg-dark">
    <div class="container p-4">
      <div class="row mt-4">
        <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
          <h4 class="display-7 fw-bolder text-white mb-2" style="font-family:'Times New Roman', Times, serif">SHREE ANJANI COURIER SERVICES </h4>
                        <p class="lead fw-normal text-white-50 mb-4">
                            SHREE ANJANI COURIER SERVICES PVT. LTD. was incorporated on 8th November 2003 with the director who had 18 years of experience in courier industry.                                
                        </p>

          <div class="mt-4">
            <a type="button" href="#" class="btn btn-floating btn-primary btn-sm">Facebook</a>
            <a type="button" href="#" class="btn btn-floating btn-primary btn-sm">Instagram</a>
            <a type="button" href="#" class="btn btn-floating btn-primary btn-sm">Twitter</a>
            <a type="button" href="#" class="btn btn-floating btn-primary btn-sm">Google</a>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase mb-4 pb-1">Address :</h5>

          

          <ul class="fa-ul" style="margin-left: 1.65em;">
            <li class="mb-3">
              <span class="fa-li"><i class="fas fa-home"></i></span><span class="ms-2">Shree Anjani House"
                                                                                    34, Old Lati Bazar,
                                                                                    Nr. ST Bus Stand, Raipur
                                                                                    Ahmedabad - 380022</span>
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
