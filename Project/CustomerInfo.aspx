<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerInfo.aspx.cs" Inherits="Project.CustomerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 379px;
        }
        .auto-style3 {
            width: 164px;
        }
        .auto-style4 {
            width: 154px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Customer Information"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbFirstName" runat="server" Text="FirstName"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="tbFirstName" ErrorMessage="FirstName Needed" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbLastName" runat="server" Text="LastName"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="LastName Needed" ControlToValidate="tbLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbEmailAddress" runat="server" Text="EmailAddress"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbEmailAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">EmailAddress Needed</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbPhoneNumber" runat="server" Text="PhoneNumber"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbPhoneNumber" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPhoneNumber" ErrorMessage="RequiredFieldValidator" ForeColor="Red">PhoneNumber Needed</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="UnitNumber" runat="server" Text="UnitNumber"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbUnitNumber" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbStreetAddress" runat="server" Text="StreetAddress"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbStreetAddress" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbProvince" runat="server" Text="Province"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbProvince" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbState" runat="server" Text="State"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbState" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="lbPostalCode" runat="server" Text="PostalCode"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="tbPostalCode" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
            <asp:Label ID="lbResult" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                    <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" Text="Change" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" OnClick="btnCancel_Click" Text="Cancel " />
                    </td>
                    <td>
                    <asp:LinkButton ID="lbMain" runat="server" CausesValidation="False" OnClick="lbMain_Click">Main</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
