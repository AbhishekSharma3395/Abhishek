<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MyEshoppingWebsite.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Custome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx">
                            <img src="Img/img-1533881263.png" alt="myshop" height="30" />
                        </a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class=""><a href="def.aspx">Home</a></li>
                            <li class=""><a href="#">About</a></li>
                            <li class=""><a href="#">Blog</a></li>

                            <li class=""><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products 
                 <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li classs="dropdown-header">Men</li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Men</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Denim</a></li>
                                    <li classs="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Leggings</a></li>
                                    <li><a href="#">Kurti</a></li>

                                </ul>
                            </li>
                            <li class="active"><a href="#">SignUp</a></li>
                              <li class=""><a href="signin.aspx">SignIn</a></li>
                        </ul>

                    </div>
                </div>
            </div>
           
            <div class="center-page">
                <h2>SignUp Form</h2>
                <div class="col-xs-11">
                     <lable class="col-xs-11">User Name:</lable>
                    <asp:TextBox ID="txtUname" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
                </div>


                <div class="col-xs-11">
                    <lable class="col-xs-11">User Password:</lable>
                    <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" placeholder="Enter Your Password"  TextMode="Password"></asp:TextBox>
                </div>


                <div class="col-xs-11">
                    <lable class="col-xs-11">Confirm Pass</lable>
                    <asp:TextBox ID="txtCpass" runat="server" CssClass="form-control" placeholder="Enter Your Password"  TextMode="Password"></asp:TextBox>
                </div>


                <div class="col-xs-11">
                    <lable class="col-xs-11">Your Full Name</lable>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Your full Name"></asp:TextBox>
                </div>


                <div class="col-xs-11">
                    <lable class="col-xs-11">Your Email</lable>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email"></asp:TextBox>
                </div>
              
                <lable class="col-xs-11"><br />
                 <div class="col-xs-11">
                    <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="SignUp" OnClick="txtsignup_Click" />
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIn.aspx">SignIn</asp:HyperLink>
                           </div>
                     <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                </div>
            </div>


       
    </form>
</body>
</html>
