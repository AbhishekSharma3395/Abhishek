<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="sessionlogin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
        </div>
        <table border="1" style="width: 100%; border: 1px #04AFEF; background-color: #FFFFFF">
            <tr style="text-align: center">
                <th style="width: 10%"><b>S.No</b><span class="city"></span> </th>
                <th style="width: 10%"><b>Name</b><span class="postal"></span></th>
                <th style="width: 10%"><b>Address </b><span class="postal"></span></th>
                <th style="width: 10%"><b>Role No </b><span class="country"></span></th>
                <th style="width: 10%"><b>Class </b><span class="country"></span></th>
                <th style="width: 10%"><b>Per </b><span class="country"></span></th>
                <th style="width: 10%"><b>Edit </b><span class="country"></span></th>
                <th style="width: 10%"><b>Delete </b><span class="country"></span></th>
                
            </tr>
        </table>
        <asp:DataList ID="DataList1" runat="server" Width="100%" GridLines="Horizontal">
            <%-- <FooterStyle BackColor="#CCCC99" ForeColor="Red" BorderColor="Red"/> 
          <%--  <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
 --%>           <ItemTemplate>
                <tr style="text-align: center; border-bottom: solid 1px green; border-top: hidden;">
                    <td style="width: 10%; height:100px;"><%# Eval("Sno") %></td>
                    <td style="width: 10%;"><%# Eval("Name") %></td>
                    <td style="width: 10%;"><%# Eval("Address") %></td>
                    <td style="width: 10%;"><%# Eval("Role No")%> </td>
                    <td style="width: 10%;"><%# Eval("Class")%></td>
                    <td style="width: 10%;"><%# Eval("Per")%></td>
                   <td style="width: 10%;"> <asp:LinkButton ID="LinkButton1" runat="server">Edit</asp:LinkButton></td>
                    <td style="width: 10%;"><asp:LinkButton ID="LinkButton2" runat="server">Delete</asp:LinkButton></td>
                    
                  
                </tr>
            </ItemTemplate>
           <%-- <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />--%>
        </asp:DataList>


    </form>


</body>
</html>
