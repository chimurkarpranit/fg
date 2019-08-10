<%--Author Name: Pranit Chimurkar
Created on: 2019/08/02
Task Name: Exercise No. 8 : Create sample application which reads the file and Diplays text on webpage. Catch specific Exception in the code. And display Exception message in label.--%>
<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="ReadFile.aspx.cs" Inherits="Day9_10.ReadFile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Read And Exception</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center;margin-top:200px">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="fileasinput" runat="server" Text="Enter file name as <b>File.txt</b>"></asp:Label><br />
            <asp:TextBox ID="file1" runat="server"></asp:TextBox><br />
            <asp:Button ID="ErrorButton" runat="server" Text="ErrorButton" OnClick="ErrorButtonClick" Height="37px" Width="151px" />
            <br />
            <asp:Label ID="filedata" runat="server"></asp:Label>
        </asp:Panel>
    </div>
    </form>
</body>
</html>