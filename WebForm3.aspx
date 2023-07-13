<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="extra.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <asp:RadioButton ID="MaleRadioButton" runat="server" Text="Male" GroupName="Gender" AutoPostBack="True" OnCheckedChanged="MaleRadioButton_CheckedChanged" />
          <asp:RadioButton ID="FemaleRadioButton" runat="server" Text="Female" GroupName="Gender" AutoPostBack="True" OnCheckedChanged="FemaleRadioButton_CheckedChanged" />
          <asp:RadioButton ID="BothRadioButton" runat="server" Text="All" AutoPostBack="True" GroupName="Gender" OnCheckedChanged="BothRadioButton_CheckedChanged" />
            <br />
         <%--   <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />--%>

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
