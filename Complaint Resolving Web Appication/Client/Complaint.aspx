<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Complaint.aspx.cs" Inherits="Complaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 66%;
            height: 312px;
        }
        .auto-style2 {
            width: 205px;
        }
        .auto-style3 {
            width: 481px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="Complaint Resolving Web Application" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Complaint Registration On</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Type Your Complaint Message</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="61px" TextMode="MultiLine" Width="301px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="Yellow" Font-Bold="True" ForeColor="#333300" OnClick="Button1_Click" Text="Register Complaint" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
    </div>
    </form>
</body>
</html>
