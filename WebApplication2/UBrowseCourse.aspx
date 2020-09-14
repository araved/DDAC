<%@ Page Language="C#" CodeBehind="BrowseCourse.aspx.cs" Inherits="WebApplication2.UBrowseCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Download Course</title>
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
                    
                                                <li ><a href ="UserHome.aspx">Home</a> </li>
                                                <li class="active"><a href ="UBrowseCourse.aspx">Download Courses</a> </li>
                                                <li ><a href ="UAbout.aspx">About</a> </li>
                                                <li ><a href ="UContact.aspx">Contact Us</a> </li>
                                           
                    
                                                                                                  <li> <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="SignOut" OnClick="btnlogout_Click"/></li>

                    
                                                </ul>
                    
                                        </div>
                                    </div>
                                </div>
            
                </div>
            <!--Browse Form Start-->
    <div>
        <br/>
        <br/>
        <h2>Course List:</h2>

        <ul id="menu" runat="server"> </ul>

    </div>
        <!--Upload Form Ends-->
    
        
        <!---Footer COntents Start here---->
         <hr />
        <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="#">Back to top</a></p>
                <p>&copy;2020 e-Pro Academy &middot; <a href ="WebForm1.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a></p>
             </div>
        
        </footer>
        
        <!---Footer Cntents End---->
</form>
</body>
</html>