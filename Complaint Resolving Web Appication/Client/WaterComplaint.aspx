<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Client/MasterPageCitizen.master"  CodeFile="WaterComplaint.aspx.cs" Inherits="Client_WaterComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="Citizen.css" rel="stylesheet" />
   
         <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>
    
</asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <br/>
     <br/> 
    <br />
          <div class="animated bounceIn" >
        <h1 class="auto-style5"><em>Register Water Complaint</em></h1>
        <br />
       

        <table align="center" class="auto-style9">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style2">Complaint Registration On :</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style2"><br />Enter Your Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Please Enter The Full Name.."  Width="301px" class="txtBox"></asp:TextBox>
                
                    </td>
            </tr>
           
            <tr>
                <td class="auto-style2">Enter Your Complaint Message</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtComplaintMessage" runat="server" placeholder="Please Enter the full Discreption of complaint.." class="txtBox"  Height="50px" TextMode="MultiLine" Width="301px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">Enter Address :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtAddress" runat="server" class="txtBox" placeholder="Please Enter The Full Address.."  Height="30px" TextMode="MultiLine" Width="301px" ></asp:TextBox>
                
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Upload image :</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" />
                    
                    <asp:Image ID="Image1" runat="server" />
                    <br />
                    
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="BtnRegister" runat="server" class="btnRegister" Font-Bold="True" ForeColor="#333300"   Width="240px"  Text="Register Complaint"  OnClick="BtnRegister_Click"   />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
        
        <br />
    </div>
     
  </asp:Content>