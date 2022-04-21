<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="RegisterAndLogIn.Log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

    <div>

        <center><h1>Log In Form</h1>
            <center>
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <p><center>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p><center>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogIn" /><br /><br />
     <center><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>

</asp:Content>
