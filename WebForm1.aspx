<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RegistartionForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
        #btnSubmit{
            color:red;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
    <link href="CSS/Registration.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl="~/Images/library.jpg" Width="100%" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style3">
                        <asp:Label ID="lblTitle" runat="server" Text="Registration Form" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style3">
                        <asp:Label ID="lblSubTitle" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label></td>
                    
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    
                    <td class="auto-style2">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Please Enter the Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please Enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblRepeatPassword" runat="server" Text="Repeat Password"></asp:Label>
                    </td>
                    
                    <td class="auto-style2">
                        <asp:TextBox ID="txtRepeatPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" Display="Dynamic" ErrorMessage="Please Retype Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvRepeatPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepeatPassword" Display="Dynamic" ErrorMessage="There is a mismatch in the passwords" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblSalary" runat="server" Text="Salary"></asp:Label>
                    </td>
                    
                    <td class="auto-style2">
                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txtSalary" Display="Dynamic" ErrorMessage="Salary Feld Should Not Be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvSalary" runat="server" ControlToValidate="txtSalary" Display="Dynamic" ErrorMessage="Please Enter Salary Between 15000 and 25000" ForeColor="Red" MaximumValue="25000" MinimumValue="15000" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="Gender" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblHobbies" runat="server" Text="Hobbies"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkSwimming" runat="server" Text="Swimming" />
                        <asp:CheckBox ID="chkReading" runat="server" Text="Reading" />
                        <asp:CheckBox ID="chkPainting" runat="server" Text="Painting" />
                        <asp:CheckBox ID="chkCooking" runat="server" Text="Cooking" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="countrySelection">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDOB" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="dobSelection" TitleFormat="Month" Width="400px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                            <DayStyle Width="14%" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                            <TodayDayStyle BackColor="#CCCC99" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmitClick" CssClass="btn btn-success" />
                    </td>
                    <td>
                        <asp:Label ID="lblMesssage" runat="server" Text=""></asp:Label>
                        <asp:Button ID="btnAboutUs" runat="server" Text="Go To About Us" OnClick="btnAboutUs_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="btnContactUs" runat="server" Text="Go To Contact Us" OnClick="btnContactUs_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="btnServices" runat="server" Text="Go To Services" PostBackUrl="~/Services.aspx" CssClass="btn btn-primary"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="vsErrorList" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
