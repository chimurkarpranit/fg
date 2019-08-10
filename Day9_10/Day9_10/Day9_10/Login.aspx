<%--Day 9_10 :  Login
Created By: Pranit Chimurkar
Date: 2019/08/05--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Day9_10.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>    
</head>
<body>
 <form id="form1" runat="server">
    <div style="text-align: center;margin-top:250px;margin-left:500px">
    <table>
    <caption><h2>Login Details</h2></caption>
        <tr><td><asp:Label runat="server" ID="LabelUserName" Text="UserName" style="font-weight: 700"></asp:Label></td>                        
            <td><asp:TextBox runat="server" ID="usrname" Width="180px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" ID="reqname" ControlToValidate="usrname" ErrorMessage="Enter UserName" ForeColor="Red" Width="110px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr><td><asp:Label runat="server" ID="LabelPassword" Text="Password" style="font-weight: 700"></asp:Label></td>                        
            <td><asp:TextBox runat="server" ID="pswd" Width="180px" TextMode="Password"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" ID="reqpswd" ControlToValidate="pswd" ErrorMessage="Enter Password" ForeColor="Red" Width="100px"></asp:RequiredFieldValidator></td>
        </tr>        
        <tr><td colspan="3"><asp:Label ID="LabelInvalid" runat="server" Text="*Invalid UserName or Password" ForeColor="Red" Visible="false"></asp:Label></td></tr>              
        <tr><td colspan="3"><asp:Button runat="server" ID="BtnSubmit" Text="Submit" onclick="BtnSubmit_Click" style="font-weight: 700" Width="100px"/></td></tr> 
    </table>
    </div>
 </form>
</body>
</html>