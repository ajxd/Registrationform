<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="RegistartionForm.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblProducts" runat="server" Text="Select Product:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" />
    </form>
</body>
</html>