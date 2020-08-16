<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Police_Station.aspx.cs" Inherits="Police_Station" %>

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
    <h1><center>Police Station Details</center></h1>
    <table style="margin-top: 0px">
    <tr>
    <td class="style4" >Police Station ID</br></br></td>
    <td ><asp:Textbox ID="Textbox1" runat="server" Width="169px" /></br></br></td>
    </tr>
    <tr>
    <td class="style4" >Police Station Name</br></br></td>
    <td ><asp:Textbox ID="Textbox2" runat="server" 
            Width="169px"/><asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="Textbox2" ErrorMessage="Enter Name" ForeColor="Red"/></td>
    </tr>
    <tr>
    <td class="style4" >Police Station Area</br></br></td>
     <td  ><asp:Textbox ID="Textbox3" runat="server"
            Width="169px"/><asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="Textbox3" ErrorMessage="Enter Area" ForeColor="Red"/></td>
   
    </tr>

     <tr>
    <td class="style4" >Inspector(Incharge)</br></br></td>
     <td  ><asp:Textbox ID="Textbox4" runat="server"
            Width="169px"/><asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="Textbox4" ErrorMessage="Enter Inspector Incharge" ForeColor="Red"/></br></td>
   
    </tr>
     <tr>
    <td class="style4" >Username</br></br></td>
     <td  ><asp:Textbox ID="Textbox5" runat="server"
            Width="169px"/><asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="Textbox5" ErrorMessage="Enter Username" ForeColor="Red"/></td>
   
    </tr>
     <tr>
    <td class="style4" >Password</br></br></br></td>
     <td  ><asp:Textbox ID="Textbox6" runat="server"
            Width="169px"/><asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="Textbox6" ErrorMessage="Enter Password" ForeColor="Red"/></br></br></td>
   
    </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click"/>
    <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click"/>
    <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click"/>
        <asp:Button ID="Button4" runat="server" Text="Clear" onclick="Button4_Click"/>
    <asp:Label ID="Label1" runat="server"/>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="P_ID" HeaderText="P_ID" SortExpression="P_ID" />
                <asp:BoundField DataField="P_Name" HeaderText="P_Name" 
                    SortExpression="P_Name" />
                <asp:BoundField DataField="P_Area" HeaderText="P_Area" 
                    SortExpression="P_Area" />
                <asp:BoundField DataField="P_Inspector" HeaderText="P_Inspector" 
                    SortExpression="P_Inspector" />
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:E_Police_Record_ManagementConnectionString %>" 
            SelectCommand="SELECT * FROM [Police_Station]"></asp:SqlDataSource>
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


