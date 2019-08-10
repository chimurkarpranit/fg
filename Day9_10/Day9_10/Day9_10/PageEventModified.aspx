<%--Day 9_10 :  Page_Error_Event
Created By: Pranit Chimurkar
Date: 2019/08/05--%>
<%@ Page Language="C#" AutoEventWireup="true"CodeBehind="PageEventModified.aspx.cs" Inherits="Day9_10.PageEventModified" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Error Event which redirects</title>   
</head>
<body>  
    <form id="form1" runat="server">
        <div style="text-align: center;margin-top:200px">
            <asp:Label ID="fileasinput" runat="server" Text="Enter file name as <b>File.txt</b>"></asp:Label><br />
            <asp:TextBox ID="file1" runat="server"></asp:TextBox><br />
            <asp:Button ID="ErrorButton2" runat="server" Text="ErrorButton" OnClick="ErrorButtonClick2" Height="37px" Width="151px" />
            <br />
            <asp:Label ID="filedata2" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>