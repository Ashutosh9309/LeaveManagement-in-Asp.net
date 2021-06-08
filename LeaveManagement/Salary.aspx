<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Salary.aspx.cs" Inherits="LeaveManagement.Salary" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css\bootstrap.min.css" rel="stylesheet" />
    <link href="font-Awesome/css/all.css" rel="stylesheet" />
<meta charset="utf-8" />
    <title>Employee Salary</title> 
    <link href="css\bootstrap.min.css" rel="stylesheet" />
    <link href="font-Awesome/css/all.css" rel="stylesheet" />
  
    <style type="text/css">

         *{
            padding:0;
            margin:0;
        }
         .jumbotron
         {
             background-image: url("images/img4.jpg");
             opacity:0.7;
             
         }
        .auto-style1 {
            margin-left: 0;
        }
        .auto-style2 {
            width: 64%;
            max-width: 1140px;
            min-width: 992px;
            height: 589px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>
</head>
<body style="height: 381px" >
    <br />
    <form id="form1" runat="server" >
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
    </ul>
  </div>
</nav>
 </div>
<br />
        <div class="jumbotron text-black auto-style2">
        <br />
            <br />
        <h2 class="text-center container ">Salary Update</h2>
            <br />
            &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Enter Eployee Id"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="Total Leave Taken"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <hr />
            <asp:Label ID="Label3" runat="server" Text="Employee Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Actual Salary"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" Class="btn btn-info" runat="server" Text="Calculate" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
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
</body>
</html>
