<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Day9_10.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">        
        <div style="text-align: center;margin-top:250px">
            <asp:Label ID="ErrorMessage" runat="server" Text="ErrorMsg" Font-Bold="True" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
