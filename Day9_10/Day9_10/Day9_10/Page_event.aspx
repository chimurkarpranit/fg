<%--Day 9_10 :  Page_Error_Event
Created By: Pranit Chimurkar
Date: 2019/08/05--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page_event.aspx.cs" Inherits="Day9_10.Page_event" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Error Event</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;margin-top:200px">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="fileasinput" runat="server" Text="Enter file name as <b>File.txt</b>"></asp:Label><br />
            <asp:TextBox ID="file1" runat="server"></asp:TextBox><br />
            <asp:Button ID="ErrorButton1" runat="server" Text="ErrorButton1" OnClick="ErrorButtonClick1" Height="37px" Width="151px" />
            <br />
            <asp:Label ID="filedata1" runat="server"></asp:Label>
        </asp:Panel>
    </div>
    </form>
</body>
</html>