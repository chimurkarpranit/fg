<%--Day 9_10 :  Cache Object Use
Created By: Pranit Chimurkar
Date: 2019/08/05--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCache.aspx.cs" Inherits="Day9_10.DisplayCache" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dispaly Cache</title>
</head>
<body>
    <form id="form1" runat="server">        
        <div style="text-align: center;margin-top:250px">
            <asp:Button ID="updatedate" runat="server" Text="Update Date" OnClick="UpdateDate" OnClientClick="window.location.reload();" /> 
        </div>             
    </form>
</body>
</html>