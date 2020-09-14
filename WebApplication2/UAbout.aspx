<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UAbout.aspx.cs" Inherits="WebApplication2.UAbout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>e-ProAcademy | About</title>

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
                        
                         <a class ="navbar-brand" href ="UserHome.aspx">e-Pro Academy</a>
                    </div>

                    <!--%Menu cration-->


                   <div class ="navbar-collapse collapse">

                        <ul class ="nav navbar-nav navbar-right">

                            <li ><a href ="UserHome.aspx">Home</a> </li>
                                                                           <li ><a href ="UBrowseCourse.aspx">Download Courses</a> </li>
                                                                           <li class="active"><a href ="UAbout.aspx">About</a> </li>
                                                                           <li ><a href ="UContact.aspx">Contact Us</a> </li>
                                                                      
                                               
                                                                                                                             <li> <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="SignOut" OnClick="btnlogout_Click"/></li>
                           
                                               
                            </ul>

                    </div>
                </div>
            </div>



        </div>
<!---Content for About Starts-->


<div class="container">

    <div class="form-horizontal">

        <br />
         <br />

        <h2 style="text-align:center">About</h2>
        
        <p align="justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

        <p align="justify">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
        <p align="justify">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>


           
        </div>
 </div>

<!---Footer Contents Start---->
<hr />
<footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="#">Back to top</a></p>
        <p>&copy;2020 e-Pro Academy &middot; <a href ="UserHome.aspx">Home</a>&middot;<a href ="UAbout.aspx">About</a>&middot;<a href ="#">Contact</a></p>
     </div>

</footer>

<!---Footer Contents End---->

    </form>
</body>
</html>

