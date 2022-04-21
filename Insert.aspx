<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="insert.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="Enter Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Enter Pass"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="EId"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Enter ID"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click"  Text="Search" />
         <asp:Button ID="Button5" runat="server" OnClick="Button5_Click"  Text="Show" />
        <asp:GridView ID="GridView1" runat="server" Width="547px">
        </asp:GridView>


    </form>
</body>
</html>
