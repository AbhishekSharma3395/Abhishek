<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Label.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        </div>
    
        <div>
        <asp:Label ID="Label2" runat="server" Text="Adderess"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        </div>
       
        <div>
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        </div>
        
        <div>
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
        </div>

        <div>
        <asp:Label ID="Label5" runat="server" Text="Contact No."></asp:Label><br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />
        </div>

     
        <div>
        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Click Here" OnClick="Button1_Click" />
        </div><br/><br/>
        <asp:Button ID="Button2" runat="server" Text="Button" /><br/>

        <asp:Label ID="Label6" runat="server"></asp:Label><br/>
        <asp:Label ID="Label11" runat="server"></asp:Label><br />
        <asp:Label ID="Label8" runat="server"></asp:Label><br/>
        <asp:Label ID="Label9" runat="server"></asp:Label><br/>
        <asp:Label ID="Label10" runat="server"></asp:Label><br/>
        <asp:Label ID="Label12" runat="server"></asp:Label>
        <asp:Label runat="server" ID="FileUploadStatus"></asp:Label> 
    </form>
</body>
</html>
