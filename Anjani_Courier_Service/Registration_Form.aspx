<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YourNamespace.Loginaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"/>

</head>
<body>
    
        <section class="h-100 h-custom" style="background-color: white;" runat="server">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-8 col-xl-6">
                        <div class="card rounded-3">
                            <img src="https://content3.jdmagicbox.com/comp/palitana/j3/0278px278.x278.140418001002.d2j3/catalogue/shree-anjani-courier-services-pvt-ltd-palitana-palitana-courier-services-anjani-01n1e8a5l1.jpg"
                                class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                                alt="Sample photo" />
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Registration Info</h3>

                                <form class="px-md-2" runat="server">

                                    <div class="form-outline mb-4" runat="server">
                                        <label class="form-label" for="form3Example1q">Name</label>
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline datepicker" runat="server">
                                                <label for="exampleDatepicker1" class="form-label">Select a date</label>
                                                <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                      
                                    </div>

                                    <div class="mb-4">

                                        <select class="select" runat="server">
                                            <option value="1">Class</option>
                                            <option value="2">Class 1</option>
                                            <option value="3">Class 2</option>
                                            <option value="4">Class 3</option>
                                        </select>
                                        
                                            <select class="select" runat="server">
                                                <option value="1">Gender</option>
                                                <option value="2">Female</option>
                                                <option value="3">Male</option>
                                                <option value="4">Other</option>
                                            </select>

                                    </div>

                                    <div class="row mb-4 pb-2 pb-md-0 mb-md-5" runat="server">
                                        <div class="col-md-6">

                                            <div class="form-outline" runat="server">
                                                <label class="form-label" for="form3Example1w">Registration code</label>
                                                <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button ID="Button1"  runat="server" Text="Submit" OnClick="Button1_Click" Height="36px"/>
                                    

                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>
