<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Anjani_Courier_Service.Content.Loginaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
</head>
<body>
   <section class="vh-100">
       <div class="container-fluid h-custom">
           <div class="row d-flex justify-content-center align-items-center h-100">
               <div class="col-md-9 col-lg-6 col-xl-5">
                   <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                       class="img-fluid" alt="Sample image" />
               </div>
               <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                   <form runat="server" action="#">
                       <!-- Email input -->
                       <h1 class="fw-bold mt-5 mb-3" align="center" style="font-family : 'Times New Roman', Times, serif">Login Page</h1>
                       <div class="form-outline mb-4">
                           <label class="form-label" for="form3Example3">Email address</label>

                           <asp:TextBox ID="TextBox1" class="form-control form-control-lg" placeholder="Enter Email" runat="server"></asp:TextBox>
                       </div>

                       <!-- Password input -->
                       <div class="form-outline mb-3">
                           <label class="form-label" for="form3Example4">Password</label>
                            
                          
                           <asp:TextBox ID="TextBox2" class="form-control form-control-lg" placeholder="Enter Password" runat="server"></asp:TextBox>
                       </div>


                       <div class="text-center text-lg-start mt-4 pt-2">
                           <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;" Text="Login" OnClick="Button1_Click" />
                           
                           <p class="small fw-bold mt-2 pt-1 mb-0">
                               Don't have an account? <a href="Registration_Form.aspx" runat="server"
                                   class="link-danger">Register</a>
                           </p>
                       </div>

                   </form>
               </div>
           </div>
       </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2020. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
   
    <!-- Right -->
  </div>
</section>
</body>
</html>
