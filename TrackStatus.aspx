<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackStatus.aspx.cs" Inherits="Anjani_Courier_Service.TrackStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />

</head>
<body>
    <form id="form1" runat="server">
        <section class="h-100 bg-dark">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card card-registration my-4">
                            <div class="row g-0">
                                <div class="col-xl-6 d-none d-xl-block">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                        alt="Sample photo" class="img-fluid"
                                        style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                </div>
                                <div class="col-xl-6">
                                    <div class="card-body p-md-5 text-black">
                                        <h3 class="mb-5 text-uppercase">Track Status Update</h3>

                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Example1m">Docket No</label>

                                                    <asp:TextBox ID="Docket_No" class="form-control form-control-lg" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Docket_No" ErrorMessage="Enter  Number Only" ForeColor="Red" ></asp:RegularExpressionValidator>

                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Example1n">Company Name</label>
                                                    <asp:TextBox ID="Company_Name" class="form-control form-control-lg" runat="server"></asp:TextBox>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Example1m1">From Center</label>
                                                    <asp:DropDownList ID="From_Center" class="form-control form-control-lg" runat="server">
                                                        <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Rajkot" Value="Rajkot"></asp:ListItem>
                                                        <asp:ListItem Text="Surat" Value="Surat"></asp:ListItem>
                                                        <asp:ListItem Text="Ahemdabad" Value="Ahemdabad"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Example1n1">To Center</label>

                                                    <asp:DropDownList ID="To_Center" class="form-control form-control-lg" runat="server">
                                                        <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Rajkot" Value="Rajkot"></asp:ListItem>
                                                        <asp:ListItem Text="Surat" Value="Surat"></asp:ListItem>
                                                        <asp:ListItem Text="Ahemdabad" Value="Ahemdabad"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Example1m1">Date And Time</label>
                                                    <asp:TextBox ID="Date_Time" type="date" class="form-control form-control-lg" runat="server"></asp:TextBox>

                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Example1n1">Condition</label>
                                                    <asp:DropDownList ID="Condition" class="form-control form-control-lg" runat="server">
                                                        <asp:ListItem Text="Arrived" Value="Arrived" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Not Arrived" Value="Not Arrived"></asp:ListItem>
                                                    </asp:DropDownList>


                                                </div>
                                            </div>
                                        </div>


                                        <div class="d-flex justify-content-center pt-3">
                                            <asp:Button ID="Button1" class="btn btn-warning btn-lg ms-2" runat="server" Text="Submit" OnClick="Button1_Click" />
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
