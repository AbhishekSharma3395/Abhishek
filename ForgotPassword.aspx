<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="MyEshoppingWebsite.ForgotPassword" %>

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
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            height: 300px;
            position: absolute;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 250px;
        }
    </style>
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
                         
                            <li><a href="#">SignIn</a></li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
