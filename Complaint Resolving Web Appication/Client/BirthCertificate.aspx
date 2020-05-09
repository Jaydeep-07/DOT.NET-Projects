<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BirthCertificate.aspx.cs" Inherits="Client_BirthCertificate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #6666FF;
            text-align: center;
        }
        .auto-style2 {
            width: 70%;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 class="auto-style1"><em>Birth Cetificate Application Form</em></h1>

        <br />
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3">Date Of Birth</td>
                <td>
                    <asp:TextBox ID="txtbdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Sex</td>
                <td>
                    <asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Place Of Birth</td>
                <td>
                    <asp:TextBox ID="txtBplace" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Full Name Of Father/Husband</td>
                <td>
                    <asp:TextBox ID="txtfName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Permanent Address</td>
                <td>
                    <asp:TextBox ID="txtpAddess" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Road/Street Name</td>
                <td>
                    <asp:TextBox ID="txtRoad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">State</td>
                <td>
                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">City Name</td>
                <td>
                    <asp:TextBox ID="txtCityName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Pincode/Zipcode</td>
                <td>
                    <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Contact Number</td>
                <td>
                    <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
            </tr>
            
        </table>

    </div>
    </form>
</body>
</html>
