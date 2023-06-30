<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Anjani_Courier_Service.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">About Us</h2>
           <p>SHREE ANJANI the name the business community trusts and relies on daily for its delivery of time sensitive documents and parcels.</p>
           <p>SHREE ANJANI COURIER SERVICES PVT. LTD. was incorporated on 8th November 2003 with the director who had 18 years of experience in courier industry.</p>
           <p>Over the period, effectively studied and learned the industry, gradually investing its time and resources into quality personnel. Further more throughout this time, built up an impressive array of customers who continue to rely on and are still the focal parameters used to measure our success rate on a daily basis.
</p>
           <p>From the beginning, we recognized that when we perform for you, our performance reflects directly on you and your business because of our prompt service irrespective of quantum. We attach great significance to providing personal care and attention to every single consignment and through that to every single customer. We are a Company with Vision. Encouraging the sharing of new ideas, thoughtful Planning and responsive Management. Enjoy an unparalleled reputation for service excellence and for driving our business forward with innovation, integrity and professionalism.
</p>
           <p>We have a centrally located team of professionals engaged in Marketing and Customer Services at marketing division, providing price fixation for each job / lot, and interaction with clients and different Service Centres, attending / resolving grievances of clients. The responsibility rests with the division for deputation of Marketing Executives to meet the customer needs. With the support of these highly innovative staff, we have accomplished our objective to serve you beyond your expectations. Our staff will be friendly, knowledgeable and receptive to your individual needs and request.
</p>
           <p>Our business philosophy has been to keep every single client hassle-free and smiling. With all the precautions taken, human error factor creeps in, and as a result both of us are subjected to embarrassing situation. We have highly trained CUSTOMER CARE EXECUTIVE at each Service Centre to resolve your grievances. This has invariably resulted in a positive impact on our clients “bottomlines”.</p>
        </div>
    </form>
</body>
</html>
