<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Entry.aspx.cs" Inherits="Anjani_Courier_Service.Register_Entry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Billing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />

</head>
<body>
    <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5">
                            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Courier Entry </h3>
                            <form runat="server">

                                <div class="row">
                                    <div class="col-md-6 mb-4">

                                        <div class="form-outline ">
                                            <label class="form-label" for="form3Example1q">ID :</label>
                                            <asp:TextBox class="form-control form-control-lg" ID="TextBox1" runat="server"></asp:TextBox>

                                            <label class="form-label" for="form3Example1q">Date :</label>
                                            <asp:TextBox class="form-control form-control-lg" type="date" ID="TextBox2" runat="server"></asp:TextBox>

                                            <label class="form-label " for="form3Example1q">Consigment No :</label>
                                            <asp:TextBox class="form-control form-control-lg" ID="TextBox3" runat="server"></asp:TextBox>

                                        </div>

                                    </div>
                                    <div class="col-md-6 mb-4">

                                        <div class="form-outline">
                                            <label class="form-label" for="form3Example1q">Weight :</label>
                                            <asp:TextBox class="form-control form-control-lg" ID="TextBox5" runat="server"></asp:TextBox>

                                            <label class="form-label" for="form3Example1q">Charges :</label>
                                            <asp:TextBox class="form-control form-control-lg" ID="TextBox6" runat="server"></asp:TextBox>

                                            <label class="form-label mt-5" style="font-size:larger;" for="form3Example1q">Destination :</label>
                                            <select class="select ">
                                                <option value="1">Select Destination</option>
                                                <option value="2">Subject 1</option>
                                                <option value="3">Subject 2</option>
                                                <option value="4">Subject 3</option>
                                                <option value="4">Subject 3</option>
                                            </select>
                                        </div>

                                    </div>
                                </div>
                                <div class="mt-4 pt-2">
                                    <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Button" />
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
