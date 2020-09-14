<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UContact.aspx.cs" Inherits="WebApplication2.UContact" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>e-Pro Academy | Contact</title>

    
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

                         
                                                <li ><a href ="UserHome.aspx">Home</a> </li>
                                                <li ><a href ="UBrowseCourse.aspx">Download Courses</a> </li>
                                                <li ><a href ="UAbout.aspx">About</a> </li>
                                                <li class="active" ><a href ="UContact.aspx">Contact Us</a> </li>
                                           

                            <li >
                                                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="SignOut" OnClick="btnlogout_Click"/></li>

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
       <h2>Contact Us</h2>
        <hr />
      
        <div class="form-group">
            

            <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Name"></asp:Label>
            <div class ="col-md-3">
                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" CssClass="text-danger" ErrorMessage="Enter Name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class ="form-group">
            <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Request Type"></asp:Label>
             <div class ="col-md-3 ">

                 <asp:DropDownList ID="DDLRT" CssClass="form-control" runat="server">
                     <asp:ListItem>General Enquiry</asp:ListItem>
                     <asp:ListItem>Cancel Subscription</asp:ListItem>
                     <asp:ListItem>Feeback</asp:ListItem>
                 </asp:DropDownList>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorRT" runat="server" CssClass="text-danger" ErrorMessage="Select Request Type" ForeColor="Red" ControlToValidate="DDLRT"></asp:RequiredFieldValidator>

             </div>
        </div>

         <div class="form-group">
            

            <asp:Label ID="Label4" CssClass="col-md-2 control-label" runat="server" Text="Message"></asp:Label>
            <div class ="col-md-10">
                <asp:TextBox ID="txtmessage" CssClass="form-control" tabindex="4" PlaceHolder="Write your details" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorMessage" runat="server" CssClass="text-danger" ErrorMessage="Enter Message" ControlToValidate="txtmessage" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>



        <div class ="form-group"> 
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnSend" CssClass="btn btn-success" runat="server" Text="Send Message" OnClick="btnSend_Click" />
                    </div>
        </div>
        
        <div class ="form-group"> 
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:Label ID="lblError" CssClass="text-danger" runat="server" Text="Label"></asp:Label>

                  
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
        <p>&copy;2020 e-Pro Academy &middot; <a href ="WebForm1.aspx">Home</a>&middot;<a href ="UAbout.aspx">About</a>&middot;<a href ="UContact.aspx">Contact</a></p>
     </div>

</footer>

<!---Footer Cntents End---->





    </form>
</body>
</html>