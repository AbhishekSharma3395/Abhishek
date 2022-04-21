<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegisterAndLogIn.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center><h1>Sign Up Form</h1></center>
        <div>
            <center>
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Correct Username" ControlToValidate="TextBox1" ForeColor="Red" Validationgroup="LocationInfoGroup"></asp:RequiredFieldValidator>
        </div>
        <p> <center>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Correct Password" ControlToValidate="TextBox2" ForeColor="Red" Validationgroup="LocationInfoGroup"></asp:RequiredFieldValidator>
        </p>
        <p> <center>
            <asp:Label ID="Label3" runat="server" Text="ReType Password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Correct Retype Password" ControlToValidate="TextBox3" ForeColor="Red" Validationgroup="LocationInfoGroup"
></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Mobile No"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Correct Mobile No" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="LocationInfoGroup"
></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Email Id"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Correct Email Id" ControlToValidate="TextBox5" ForeColor="Red" Validationgroup="LocationInfoGroup"
></asp:RequiredFieldValidator>
        </p>
     
         
     
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Validationgroup="LocationInfoGroup"
/>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">LogIn</asp:LinkButton>

    </form>
</body>
</html>
