<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Anjani_Courier_Service.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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

                </ul>
                <form class="d-flex" role="search" runat="server">

                    <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark bg-primary text-white" Text="Login" OnClick="Button1_Click" />
                </form>
            </div>
        </div>
    </nav>
    <header class="bg-dark py-5">
        <div class="container px-5">
            <div class="row gx-5 align-items-center justify-content-center">
                <div class="col-lg-8 col-xl-7 col-xxl-6">
                    <div class="my-5 text-center text-xl-start">
                        <h1 class="display-7 fw-bolder text-white mb-2" style="font-family:'Times New Roman', Times, serif">SHREE ANJANI COURIER SERVICES </h1>
                        <p class="lead fw-normal text-white-50 mb-4">
                            SHREE ANJANI COURIER SERVICES PVT. LTD. was incorporated on 8th November 2003 with the director who had 18 years of experience in courier industry.                                
                        </p>
                    </div>
                </div>
                <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                    <img class="img-fluid rounded-3 my-5" src="https://content3.jdmagicbox.com/comp/palitana/j3/0278px278.x278.140418001002.d2j3/catalogue/shree-anjani-courier-services-pvt-ltd-palitana-palitana-courier-services-anjani-01n1e8a5l1.jpg" alt="..." />
                </div>
            </div>
        </div>
    </header>
    <!-- Testimonial section-->
    <div class="py-5 bg-light">
        <div class="container px-5 my-5">
            <div class="row gx-5 justify-content-center">
                <div class="col-lg-10 col-xl-7">
                    <div class="text-center">
                        <div class="fs-4 mb-4 fst-italic">
                            "SHREE ANJANI COURIER SERVICES PVT. LTD. was incorporated in 8th November 2003, emerging into the Local messenger market with great inspirations, enthusiasm and dedication.

Over the period, effectively studied and learned the industry, gradually investing its time and resources into quality personnel. Further more throughout this time, built up an impressive array of customers who continue to rely on and are still the focal parameters used to measure our success rate on a daily basis.

From the beginning, we recognized that when we perform for you, our performance reflects directly on you and your business because of our prompt service irrespective of quantum. We attach great significance to providing personal care and attention to every single consignment and through that to every single customer. We are a Company with Vision. Encouraging the sharing of new ideas, thoughtful Planning and responsive Management. Enjoy an unparalleled reputation for service excellence and for driving our business forward with innovation, integrity and professionalism."
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer-->
    <footer class="bg-dark py-4 mt-auto">
        <div class="container px-5">
            <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                <div class="col-auto">
                    <div class="small m-0 text-white">Copyright &copy; Parth Sata  2023</div>
                </div>
                <div class="col-auto">
                    <a class="link-light small" href="Contact.aspx">Contact</a>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
