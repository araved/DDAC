<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication2.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>e-Pro Academy | SignUp</title>

 <meta charset ="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Firefox" />
    <link href="css/Custom.css" rel="stylesheet" />


   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
     
             <div class="navbar navbar-default navbar-fixed-top" role ="navigation">
                <div class="container">

                    <div class ="navbar-header">
                        <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class ="sr-only">Toggle navigation</span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>
                        </button>
                        
                         <a class ="navbar-brand" href ="WebForm1.aspx">e-Pro Academy</a>
                    </div>

                    <!--%Menu cration-->


                   <div class ="navbar-collapse collapse">

                        <ul class ="nav navbar-nav navbar-right">

                            <li ><a href ="WebForm1.aspx">Home</a> </li>
    
                            <li ><a href ="#">Browse Courses</a> </li>
                            <li ><a href ="#">Subscription</a> </li>
                            <li ><a href ="About.aspx">About</a> </li>
                            <li ><a href ="Contact.aspx">Contact Us</a> </li>
                            <li class="active"><a href ="SignUp.aspx">SignUp</a> </li>
                            <li ><a href ="SignIn.aspx">SignIn</a> </li>
                            </ul>
                    </div>
                </div>
            </div>





<!--SignUp Form Starts-->
<div class="center-page">

    <label class="col-xs-11">UserName</label>
    <div class="col-xs-11">
        <asp:TextBox ID="txtUname" runat="server" class="form-control" placeholder="Enter UserName"></asp:TextBox>
     
     </div>
   <label class="col-xs-11"></label>
   <label class="col-xs-11"></label>

    <label class="col-xs-11">Password</label>
    <div class="col-xs-11">
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Password"></asp:TextBox>
    </div>
   <label class="col-xs-11"></label>
   <label class="col-xs-11"></label>

    
    <label class="col-xs-11">Confirm Password</label>
    <div class="col-xs-11">
        <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
    </div>
   <label class="col-xs-11"></label>
   <label class="col-xs-11"></label>

    
    <label class="col-xs-11">Your Full Name</label>
    <div class="col-xs-11">
        <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
    </div>
     <label class="col-xs-11"></label>
   <label class="col-xs-11"></label>


    <label class="col-xs-11">Email Address</label>
    <div class="col-xs-11">
        <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
    </div>
     <label class="col-xs-11"></label>
   <label class="col-xs-11"></label>


    <label class="col-xs-11"></label>
    <div class="col-xs-11">
        <asp:Button ID="textsignup" runat="server" class="btn btn-success" Text="SignUp" OnClick="textsignup_Click" />

        <asp:Label ID="lblMsg" runat="server"></asp:Label>

    </div>


</div>
<!--SignUp Form Ends-->

<!---Footer Contents Start---->
<hr />
<footer class="footer-postion">
    <div class ="container ">
        <p class ="pull-right "><a href ="#">Back to top</a></p>
        <p>&copy;2020 e-Pro Academy &middot; <a href ="WebForm1.aspx">Home</a>&middot;<a href ="About.aspx">About</a>&middot;<a href ="Contact.aspx">Contact</a></p>
     </div>

</footer>

<!---Footer Contents End---->

    </form>
</body>
</html>
