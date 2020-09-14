<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>e-Pro Academy</title>

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

                            <li class ="active"><a href ="WebForm1.aspx">Home</a> </li>
    
                            <li ><a href ="BrowseCourse.aspx">Browse Courses</a> </li>
                            <li ><a href ="Subscription.aspx">Subscription</a> </li>
                            <li ><a href ="About.aspx">About</a> </li>
                            <li ><a href ="Contact.aspx">Contact Us</a> </li>
                            <li ><a href ="SignUp.aspx">SignUp</a> </li>
                            <li ><a href ="SignIn.aspx">SignIn</a> </li>
                            </ul>
                    </div>
                </div>
            </div>


                    <!--Image Slider Start-->

                     <div class="container">
                          <br />
                          <br />
  <h2 style="text-align:center">Welcome to e-Pro Academy</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="image_slider/Python_Course.png" alt="Python Programming course" style="width:100%;height:500px; ">

          <div class="carousel-caption">
          <p><a class ="btn btn-lg btn-primary" href ="#" role ="button">Subscribe Now!</a></p>


        </div>
      </div>

      <div class="item">
        <img src="image_slider/Digital_Marketing.png" alt="Digital Marketing Course" style="width:100%;height:500px;">
          <div class="carousel-caption">
          <p><a class ="btn btn-lg btn-primary" href ="#" role ="button">Subscribe Now!</a></p>
        </div>
      </div>

     <div class="item">
        <img src="image_slider/Digital-Brand-Strategy-For-Optimal-Growth.png" alt="Digital Brand Course" style="width:100%;height:500px;">
          <div class="carousel-caption">
          <p><a class ="btn btn-lg btn-primary" href ="#" role ="button">Subscribe Now!</a></p>
        </div>
      </div>

    
      <div class="item">
        <img src="image_slider/E-commerce-Marketing.png" alt="E-Commerce" style="width:100%;height:500px;">
          <div class="carousel-caption">
          <p><a class ="btn btn-lg btn-primary" href ="#" role ="button">Subscribe Now!</a></p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<!--Image Slider End-->



<!---Middle Content start---->
<hr />
<div class ="container center ">
    <h1 style="text-align:center;font-size:300%;font-weight: bold;">We Are Netflix of Professionals!</h1>
    <h2 style="text-align:center;color:green;font-weight: bold;">Get Access to All The Courses</h2>
    <h2 style="text-align:center;font-weight: bold;">With</h2>
    <p style="text-align:center"><a class ="btn btn-lg btn-primary" href ="Subscription.aspx" role ="button">One Subscription</a></p>
  
</div>
<!---Middle Content end---->

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
