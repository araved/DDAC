<%@ Page Language="C#" CodeBehind="Subscription.aspx.cs" Inherits="WebApplication2.Subscription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subscription</title>
    
    <meta charset ="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Firefox" />
    <link href="css/Custom.css" rel="stylesheet" />


   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form id="HtmlForm" runat="server">
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
    
                                <li class ="active"><a href ="WebForm1.aspx">Home</a> </li>
        
                                <li ><a href ="BrowseCourse.aspx">Browse Courses</a> </li>
                                <li class ="active"><a href ="Subscription.aspx">Subscription</a> </li>
                                <li ><a href ="About.aspx">About</a> </li>
                                <li ><a href ="Contact.aspx">Contact Us</a> </li>
                                <li ><a href ="SignUp.aspx">SignUp</a> </li>
                                <li ><a href ="SignIn.aspx">SignIn</a> </li>
                                </ul>
                        </div>
                    </div>
                </div>

    <div>
        <br/>
        <br/>
        <h2 align="center">Subscription</h2>
        <br/>
        <div align="center">        <img src="image_slider/Subscription_Offer.png" alt="Subscription offer" style="align-content: center", align="middle" width="500", height="300">
            <br/>
                    <br/>
                <p style="text-align:center"><a class ="btn btn-lg btn-primary" href ="SignUp.aspx" role ="button">Sign Up Now!</a></p>

</div>
        
        
    </div>
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