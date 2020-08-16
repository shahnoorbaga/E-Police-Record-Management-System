<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Citizens.aspx.cs" Inherits="Citizens" %>



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
<div class="col-md-3">
    <form id="form1" runat="server">
    <div>
    <h1><center>CITIZENS DETAIL</center></h1>
    <table>
    <tr>
    <td class="style1">Citizen ID</br></br></td>
    <td><asp:Textbox ID="Textbox1" runat="server" /></br></br></td>
    </tr>
    <tr>
    <td class="style1">Citizen Name</br></br></td>
    <td><asp:Textbox ID="Textbox2" runat="server" /><asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="Textbox2" ForeColor="Red" ErrorMessage="Enter Name"/></td>
    </tr>
     <tr>
    <td class="style1">Citizen Gender</br></br></td>
    <td><asp:DropdownList  ID="DropdownList1" runat="server" >
    <asp:ListItem Value="Male" Text="Male"/>
    <asp:ListItem value="Female" Text="Female"/>
    </asp:DropdownList></br></br></td>
    </tr>
    <tr>
    <td class="style1">Citizen Contact</br></br></td>
    <td><asp:Textbox ID="Textbox3" runat="server" MaxLength="10" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox3" ForeColor="Red" ErrorMessage="Enter Contact Number"/></td>
    </tr>
    <tr>
    <td class="style1">Citizen Address</br></br></td>
    <td><asp:Textbox ID="Textbox4" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbox4" ForeColor="Red" ErrorMessage="Enter Address"/></td>
    </tr>
    <tr>
    <td class="style1">Citizen Email</br></br></br></td>
    <td><asp:Textbox ID="Textbox5" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textbox5" ForeColor="Red" ErrorMessage="Enter Email Id"/>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="Textbox5" ErrorMessage="Enter Valid Email" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></br>
        </td>
    </tr>
    <tr>
    <td class="style1">Adhar Number</br></br></br></br></td>
    <td><asp:Textbox ID="Textbox6" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textbox6" ForeColor="Red" ErrorMessage="Enter Adhar Number"/></br></br></br></td>
    </tr>
    </table>
     <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click1" />
    <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="Clear" onclick="Button4_Click" /></br></br>
    <asp:Label ID="Label1" runat="server"/>
    </div>
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
        ConnectionString="<%$ ConnectionStrings:E_Police_Record_ManagementConnectionString2 %>" 
        SelectCommand="SELECT * FROM [Citizen]"></asp:SqlDataSource>
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



