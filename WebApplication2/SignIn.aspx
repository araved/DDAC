﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>e-Pro Academy | SignIn</title>

    
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
  

        <div>
            
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
                            <li ><a href ="BrowseCourse.aspx">Browse Courses</a> </li>
                            <li ><a href ="Subscription.aspx">Subscription</a> </li>
                            <li ><a href ="About.aspx">About</a> </li>
                            <li ><a href ="Contact.aspx">Contact Us</a> </li>
                            <li ><a href ="SignUp.aspx">SignUp</a> </li>

                            <li class ="active"><a href ="SignIn.aspx">SignIn</a> </li>

                            </ul>

                    </div>
                </div>
            </div>
         </div>

<!--SignIn Form Start-->

<div class="container">
    <div class="form-horizontal">
        <br />
         <br />
       <h2>Sign In</h2>
        <hr />
      
        <div class="form-group">
            

            <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Username"></asp:Label>
            <div class ="col-md-3">
                <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger" ErrorMessage="Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class ="form-group">
            <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
             <div class ="col-md-3 ">

                <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Enter Passwword" ForeColor="Red" ControlToValidate="txtPass"></asp:RequiredFieldValidator>

             </div>
        </div>


        <div class ="form-group">
            <div class ="col-md-2 "> </div>
            <div class ="col-md-6 ">

                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>
            </div>
        </div>

        <div class ="form-group"> 
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">SignUp</asp:HyperLink>
                    </div>
        </div>
        
        <div class ="form-group"> 
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:Label ID="lblError" CssClass="text-danger" runat="server"></asp:Label>

                  
                    </div>
        </div>



               
    </div>
</div>



<!--SignIn Form End-->

<!---Footer COntents Start here---->
 <hr />
<footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="#">Back to top</a></p>
        <p>&copy;2020 e-Pro Academy &middot; <a href ="WebForm1.aspx">Home</a>&middot;<a href ="About.aspx">About</a>&middot;<a href ="Contact.aspx">Contact</a></p>
     </div>

</footer>

<!---Footer Cntents End---->





    </form>
</body>
</html>
