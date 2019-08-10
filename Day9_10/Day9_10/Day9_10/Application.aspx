<%--Day 9_10 :  application Error
Created By: Pranit Chimurkar
Date: 2019/08/05--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="Day9_10.Application" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;margin-top:200px">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="fileasinput" runat="server" Text="Enter file name as <b>File.txt</b>"></asp:Label><br />
            <asp:TextBox ID="file3" runat="server"></asp:TextBox><br />
            <asp:Button ID="ErrorButton3" runat="server" Text="ErrorButton" OnClick="ErrorButtonClick3" Height="37px" Width="151px" />
            <br />
            <asp:Label ID="filedata3" runat="server"></asp:Label>
        </asp:Panel>
        </div>
    </form>
</body>
</html>
