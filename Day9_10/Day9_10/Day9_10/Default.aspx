<%--Day 9_10 :  Cache Object Use
Created By: Pranit Chimurkar
Date: 2019/08/05--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day9_10.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cache</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;margin-top:250px">
            <table>                
                <tr>
                    <td>Store User Browser's Information</td>
                    <td><asp:Button ID="browserinfo" runat="server" Text="Store Browser Information" OnClick="StoreBrowserClick" /></td>
                </tr>
                <tr>
                    <td>View Cache Data</td>
                    <td><asp:Button ID="view" runat="server" Text="View cache Data" PostBackUrl="~/DisplayCache.aspx"/></td>
                </tr>
                <tr>
                    <td>Remove Data From Cache</td>
                    <td><asp:Button ID="expirecache" runat="server" Text="Expire Cache After 15 Seconds" OnClick="ExpireCacheClick" /></td>
                </tr>
                <tr>
                    <td>Add Current Date to Cache</td>
                    <td><asp:Button ID="adddate" runat="server" Text="Add Current Date to Cache" OnClick="AddDate" /></td>
                 </tr>
            </table>
        </div>
    </form>
</body>
</html>