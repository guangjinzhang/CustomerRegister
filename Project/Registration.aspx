<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 141px;
        }
        .auto-style4 {
            width: 197px;
        }
        .auto-style5 {
            width: 358px;
        }
        .auto-style6 {
            width: 358px;
            height: 26px;
        }
        .auto-style7 {
            width: 141px;
            height: 26px;
        }
        .auto-style8 {
            width: 197px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Registration"></asp:Label>
            <br />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbUserName" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ControlToValidate="tbUserName" ErrorMessage="UserName Needed" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password Needed" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbRetypePassword" runat="server" Text="ConfirmPassword"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbRetypePassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RetypePasswordValidator" runat="server" ControlToValidate="tbRetypePassword" ErrorMessage="RetypePassword Needed" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbRetypePassword" ErrorMessage="Password must match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    </td>
                <td class="auto-style7">
                    <asp:Label ID="lbFirstName" runat="server" Text="FirstName"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="tbFirstName" ErrorMessage="FirstName Needed" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbLastName" runat="server" Text="LastName"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="LastName Needed" ControlToValidate="tbLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbEmailAddress" runat="server" Text="EmailAddress"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbEmailAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">EmailAddress Needed</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbPhoneNumber" runat="server" Text="PhoneNumber"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbPhoneNumber" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPhoneNumber" ErrorMessage="RequiredFieldValidator" ForeColor="Red">PhoneNumber Needed</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="UnitNumber" runat="server" Text="UnitNumber"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbUnitNumber" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbStreetAddress" runat="server" Text="StreetAddress"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbStreetAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbProvince" runat="server" Text="Province"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbProvince" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbState" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbState" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lbPostalCode" runat="server" Text="PostalCode"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbPostalCode" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
            <asp:Label ID="lbResult" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnMA" runat="server" OnClick="btnMA_Click" Text="SignUp" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" OnClick="btnCancel_Click" Text="Cancel " />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Login</asp:LinkButton>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
