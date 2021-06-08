<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_Registration.aspx.cs" Inherits="LeaveManagement.Emp_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Registration</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" />
    <style>
    .jumbotron
         {
             background-image: url("images/img6.png");
             opacity:0.7;
             
         }
        </style>
     
</head>
<body>
    
    <form id="form1" runat="server" class="auto-style2">
               <div>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Home.aspx">VS Infotech</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse  " id="navbarNav">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="Emp_Registration.aspx">Registration</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="Contact.aspx">Contact</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Login.aspx">Salary Status</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Login.aspx">Leave Request</a>
      </li>
        </ul>
        <ul class="navbar-nav">
         <li class="nav-item ">
        <a class="nav-link" href="Login.aspx">Login</a>
      </li>

         <li class="nav-item ">
        <a class="nav-link" href="Login.aspx">Admin</a>
      </li>
    </ul>
  </div>
</nav>
 </div>
    <br />

       <div class="container a1 jumbotron" style="width: 75%">
           
           <h1 class="container text-center" style="font-family: 'Arial Black'; color: #000000">Employee Registration.</h1>
           <hr />
           &nbsp;Emp_Name&nbsp;
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox1" type="Text" class="form-control container" runat="server"></asp:TextBox>
           
       
           &nbsp;Department&nbsp;

           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
           &nbsp;<asp:TextBox ID="TextBox2" type="Text" CssClass="form-control container" runat="server"></asp:TextBox>
           
           &nbsp;DOJ&nbsp;&nbsp;
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox3" type="Text" CssClass="form-control container" runat="server"></asp:TextBox>
           
           &nbsp;Address&nbsp;
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
           &nbsp;<asp:TextBox ID="TextBox4" type="Text" CssClass="form-control container" runat="server"></asp:TextBox>
          
           &nbsp;Mobile No&nbsp;
          
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" class="text-danger" runat="server" ErrorMessage="Required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
           &nbsp;<asp:TextBox ID="TextBox5" type="Text" CssClass="form-control container" runat="server"></asp:TextBox>
           
           &nbsp;Email&nbsp;
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
           &nbsp;<asp:TextBox ID="TextBox6" type="Email" CssClass="form-control container" runat="server"></asp:TextBox>
           
           &nbsp;Password&nbsp;
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
           &nbsp;<asp:TextBox ID="TextBox7" type="Password" CssClass="form-control container" runat="server"></asp:TextBox>

           &nbsp;Salary&nbsp;

           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
           &nbsp;<asp:TextBox ID="TextBox8" type="Text" CssClass="form-control container" runat="server"></asp:TextBox>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
            &nbsp;Date Of Birth&nbsp;

           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" class="text-danger" ErrorMessage="Required" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
           &nbsp;<asp:TextBox ID="TextBox9" type="Text" CssClass="form-control container" runat="server"></asp:TextBox>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary" OnClick="Button1_Click1"  />
           <br />
         
          
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
          
        
            </div>
        <br />
        <br />
           
        <!-- Footer -->
<footer class="page-footer font-small unique-color-dark">

  <div style="background-color:mediumvioletred;">
    <div class="container">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          <h6 class="mb-0">Get connected with us on social networks!</h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right">

          <!-- Facebook -->
           <a class="fb-ic" href="#">
            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic" href="#">
            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          
          
          <!--Instagram-->
          <a class="ins-ic" href="#">
            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">Company name</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
            Vs Infotech
          </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
     
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
       
          <p>
          <a href="Home.aspx">Home</a>
        </p>
       
          
          <p>
          <a href="Contact.aspx">Contact</a>
        </p>
       
       
      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fas fa-home mr-3"></i> 636/3 VsInfotech, Thane, West</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> VSInfotech@gmail.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i> + 91 99219 43785</p>
        <p>
          <i class="fas fa-print mr-3"></i> + 91 234 567 89</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->


  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="Home.aspx">VS Infotech</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
     </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>

