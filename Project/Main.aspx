<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Project.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Main<br />
            <asp:Label ID="lbUserName" runat="server" Text="username"></asp:Label>
            <br />
            <asp:LinkButton ID="lbCustInfo" runat="server" OnClick="lbCustInfo_Click">CustInfo</asp:LinkButton>
&nbsp;<asp:LinkButton ID="lbLogout" runat="server" OnClick="lbLogout_Click">Logout</asp:LinkButton>
        </div>
    </form>
</body>
</html>
