<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Anjani_Courier_Service.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

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

                    <li class="nav-item">
                        <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl="~/Tracking.aspx" CssClass="nav-link" Text="Tracking" />
                    </li>

                    <%--<li class="nav-item">
                        <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl="~/Login.aspx" CssClass="nav-link" Text="Login" />
                    </li>--%>
                </ul>
            </div>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center mt-3">About Us</h2>
            <p>SHREE ANJANI the name the business community trusts and relies on daily for its delivery of time sensitive documents and parcels.</p>
            <p>SHREE ANJANI COURIER SERVICES PVT. LTD. was incorporated on 8th November 2003 with the director who had 18 years of experience in courier industry.</p>
            <p>
                Over the period, effectively studied and learned the industry, gradually investing its time and resources into quality personnel. Further more throughout this time, built up an impressive array of customers who continue to rely on and are still the focal parameters used to measure our success rate on a daily basis.
            </p>
            <p>
                From the beginning, we recognized that when we perform for you, our performance reflects directly on you and your business because of our prompt service irrespective of quantum. We attach great significance to providing personal care and attention to every single consignment and through that to every single customer. We are a Company with Vision. Encouraging the sharing of new ideas, thoughtful Planning and responsive Management. Enjoy an unparalleled reputation for service excellence and for driving our business forward with innovation, integrity and professionalism.
            </p>
            <p>
                We have a centrally located team of professionals engaged in Marketing and Customer Services at marketing division, providing price fixation for each job / lot, and interaction with clients and different Service Centres, attending / resolving grievances of clients. The responsibility rests with the division for deputation of Marketing Executives to meet the customer needs. With the support of these highly innovative staff, we have accomplished our objective to serve you beyond your expectations. Our staff will be friendly, knowledgeable and receptive to your individual needs and request.
            </p>
            <p>Our business philosophy has been to keep every single client hassle-free and smiling. With all the precautions taken, human error factor creeps in, and as a result both of us are subjected to embarrassing situation. We have highly trained CUSTOMER CARE EXECUTIVE at each Service Centre to resolve your grievances. This has invariably resulted in a positive impact on our clients “bottomlines”.</p>
        </div>
    </form>

    <div class="container card" >
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3691.638911548436!2d70.79522627508051!3d22.291664043208755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959ca2397e912b3%3A0xd86c4f387e49d056!2sShree%20Anjani%20Courier%20Services%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1694785301251!5m2!1sen!2sin" width="1300" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        <div class="card-body">
            <h5 class="card-title">Location </h5>
            <p class="card-text">This Is Our Branch Of Courier.</p>
            <a href="https://maps.app.goo.gl/oXidGLLrzhNjdUr29" class="btn btn-primary">Go somewhere</a>
        </div>
    </div>


    <footer class="text-white mt-5 text-center text-lg-start bg-dark">
        <!-- Grid container -->
        <div class="container p-4">
            <!--Grid row-->
            <div class="row mt-4">
                <!--Grid column-->
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
                <!--Grid column-->

                <!--Grid column-->
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
                <!--Grid column-->

                <!--Grid column-->
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
