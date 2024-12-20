<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManualLogin.aspx.cs" Inherits="RegistartionForm.ManualLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblTitle" runat="server" Text="Login Form" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUsername" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Please Enter a User Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please Enter a Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btmSubmit" runat="server" Text="Submit" OnClick="btmSubmit_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
