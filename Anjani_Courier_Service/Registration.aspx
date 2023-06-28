<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Anjani_Courier_Service.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"/>
    <title></title>
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
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2" align="center" style="font-family:'Times New Roman', Times, serif;">Registration Form</h3>

                                <form class="px-md-2" runat="server">

                                    <div class="form-outline mb-4" runat="server">
                                        <label class="form-label" for="form3Example1q">First Name :</label>
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>

                                        <label class="form-label mt-1" for="form3Example1q">Last Name :</label>
                                        <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>

                                        <label class="form-label mt-1" for="form3Example1q">Email :</label>
                                        <asp:TextBox class="form-control" type="email" ID="TextBox3" runat="server"></asp:TextBox>

                                        <label class="form-label mt-1" for="form3Example1q">Password :</label>
                                        <asp:TextBox class="form-control" type="password" ID="TextBox4" runat="server"></asp:TextBox>
                                        
                                        <label class="form-label mt-1" for="form3Example1q">Confirm Password :</label>
                                        <asp:TextBox class="form-control" type="password" ID="TextBox5" runat="server"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Your Password is Not Matched" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:CompareValidator><br />
                                    </div>

                                    <asp:Button ID="Button1" class="btn btn-primary btn-lg text-center"  runat="server" Text="Submit"  OnClick="Button1_Click"    />
                              </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>
