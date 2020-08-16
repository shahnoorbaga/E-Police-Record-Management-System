<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_Password(Admin).aspx.cs" Inherits="Change_Password_Admin_" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>E-Police Record Management System</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLE CSS -->
     <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 243px;
        }
    </style>
</head>
<body > 
   
        <div class="navbar navbar-inverse navbar-fixed-top " >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" ><strong style="">Records</strong></a>
            </div>
            <div class="navbar-collapse collapse move-me">
                <ul class="nav navbar-nav navbar-right set-links">
                    <li><a href="index.html" class="active-menu-item"></a></li>
                     <li><a href="about.html"></a></li>
                       <li><a href="Police_Station.aspx">POLICE STATION</a></li>
                     <li><a href="Change_Password(Admin).aspx">CHANGE PASSWORD</a></li>
                     <li><a href="Admin_Login.aspx">LOGOUT</a></li>
                    
                    <li><a href="pgAdminLogin.aspx"></a></li>
                </ul>
            </div>

        </div>
    </div>
    <!--MENU SECTION END-->
    <section id="home-sec">
        <div class="overlay text-center">
            <h1 >E-Police Records</h1>
            <hr class="hr-set"/>

            <p>Secured | Anonymous</p>
        </div>
    </section>
    <!--HOME SECTION END-->

    <section id="features-sec"  >
        <div class="container">
           
            <div class="row text-center" >
<div class="col-md-3">
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td class="style1">Old Password</br></br></br></td>
    <td><asp:Textbox ID="Textbox1" runat="server"/><asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="Textbox1" ErrorMessage="Enter Old Password" ForeColor="Red"/></br></br></td>
    </tr>
     <tr>
    <td class="style1">New Password</br></br></br></td>
    <td><asp:Textbox ID="Textbox2" runat="server"/><asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="Textbox2" ErrorMessage="Enter New Password" ForeColor="Red"/></br></br></td>
    </tr>
     <tr>
    <td class="style1">Retype Password</br></br></br></td>
    <td><asp:Textbox ID="Textbox3" runat="server"/>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="Textbox2" ControlToValidate="Textbox3" 
            ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator></br></br>
         </td>
    </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
    <asp:Label ID="Label1" runat="server"/>
    </div>
    </form>
</div>
            </div>
        </div>
    </section>
     <!--FEATURES SECTION END-->
    <div class="copy-txt">
         <div class="container">
        <div class="row">
<div class="col-md-12 set-foot" >
    &copy 2016. All rights reserved | Design by :
</div>
            </div>
                   </div>
    </div>
     <!-- COPY TEXT SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>



