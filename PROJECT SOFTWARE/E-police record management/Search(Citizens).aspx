<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search(Citizens).aspx.cs" Inherits="Search_Citizens_" %>

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
                     <li><a href="Complaints.aspx">COMPLAINTS</a></li>
                    <li><a href="Citizens.aspx">CITIZENS</a></li>
                      <li><a href="Search(Citizens).aspx">SEARCH</a></li>
                      <li><a href="Change_Password(Police).aspx">CHANGE PASSWORD</a></li>
                    <li><a href="Police_Login.aspx">LOGOUT</a></li>
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
<div class="col-md-13">

    <form id="form1" runat="server">
  
    <div>
      <h1><center>CITIZENS DETAILS</center></h1>
    <table>
    <tr>
   <td> <asp:DropdownList ID="DropdownList1" Height="35" runat="server">
    <asp:ListItem Text="C_Id"  Value="C_Id"/>
      <asp:ListItem Text="C_Name" Value="C_Name"/>
        <asp:ListItem Text="C_Gender" Value="C_Gender"/>
          <asp:ListItem Text="C_Contact" Value="C_Contact"/>
            <asp:ListItem Text="C_Address" Value="C_Address"/>
              <asp:ListItem Text="C_Email" Value="C_Email"/>
                <asp:ListItem Text="C_Adhar" Value="C_Adhar"/>
                  <asp:ListItem Text="C_Id" Value="C_Id"/>
    </asp:DropdownList></td>
   <td> <asp:Textbox ID="Textbox1" runat="server"/></td>
   <td> <asp:Button ID="Button1" runat="server" Text="SEARCH" onclick="Button1_Click" /></td>
   </tr>
   
   </table>
 <table>
   <tr>
   <td>Adharcard Number</td>
   <td><asp:Textbox ID="Textbox2" runat="server" ReadOnly="true"/></td>
   </tr>
   </table>
     <table>
   <tr>
   <td><asp:Button ID="Button2" runat="server" Text="Complaints" 
           onclick="Button2_Click"/></td>
      <td><asp:Button ID="Button3" runat="server" Text="View Complaints" 
              onclick="Button3_Click"/></td>
 
   </tr>
   </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="C_Id" HeaderText="C_Id" SortExpression="C_Id" />
                <asp:BoundField DataField="C_Name" HeaderText="C_Name" 
                    SortExpression="C_Name" />
                <asp:BoundField DataField="C_Gender" HeaderText="C_Gender" 
                    SortExpression="C_Gender" />
                <asp:BoundField DataField="C_Contact" HeaderText="C_Contact" 
                    SortExpression="C_Contact" />
                <asp:BoundField DataField="C_Address" HeaderText="C_Address" 
                    SortExpression="C_Address" />
                <asp:BoundField DataField="C_Email" HeaderText="C_Email" 
                    SortExpression="C_Email" />
                <asp:BoundField DataField="C_Adhar" HeaderText="C_Adhar" 
                    SortExpression="C_Adhar" />
                <asp:BoundField DataField="C_Username" HeaderText="C_Username" 
                    SortExpression="C_Username" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:E_Police_Record_ManagementConnectionString5 %>" 
            SelectCommand="SELECT * FROM [Citizen]"></asp:SqlDataSource>
        <br />
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
    
    <script src="assets/js/jquery-1.11.1.js"></script>
   
    <script src="assets/js/bootstrap.js"></script>
  
    <script src="assets/js/custom.js"></script>
</body>
</html>



