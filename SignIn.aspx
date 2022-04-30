<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MyEshoppingWebsite.SignIn" %>

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
                            <li class=""><a href="Signup.aspx">SignUp</a></li>
                            <li class="active"><a href="#">SignIn</a></li>
                        </ul>

                    </div>
                </div>
            </div>

</div>
            <!--Sign In Form Start -->
            <div class="container">
                <div class="row">
                <div class="auto-style1">
                    <div class="from-control">
                        <h2>Log In Form</h2>
                        <asp:Label ID="Label1" runat="server" Text="UserName" ></asp:Label>
                    
                        <div>
                         <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User Name" ControlToValidate="txtUsername" ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
</div>                   <div>
                         <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label>
                         <asp:TextBox ID="txtUserPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter User Name" ControlToValidate="txtUserPass" ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
    </div>
                        <div>
                         <asp:Label ID="Label3" runat="server" Text="Remember Me" ></asp:Label>
                        <asp:CheckBox ID="CheckBox1" runat="server" /></div>
                       <div class="col-md-6"><br />
                        <asp:Button ID="btLogin" runat="server" Text="LogIn" CssClass="btn btn-success" OnClick="btLogin_Click" />
                           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">SignUp</asp:HyperLink>
                           </div>
                    </div>

                    <div class="from-group">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" ></asp:Label>
                    </div>
                    <asp:HyperLink ID="HyperLink2" runat="server">Forgot Pasword</asp:HyperLink>

             </div>
          </div>
            </div>
            <!--Sign In Form End -->



        </div>
    </form>
</body>
</html>

