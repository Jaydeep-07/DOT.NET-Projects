<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddGarbageServiceMans.aspx.cs" Inherits="Admin_AddGarbageServiceMans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="adminStyles/StyleSheet.css" rel="stylesheet" type="text/css" />
      <style type="text/css">
   
        .auto-style1 {
            width: 70%;
            /*border: 1px solid #FF9933;*/
            /*background-color: antiquewhite;*/
        }
        .auto-style2 {
            
            text-align: left;
        }
        .backroad {
    left: 0px;
    height: 100%;
    background: url(a.jpg);
}
        .auto-style3 {
            text-align: center;
            font-size: x-large;
            width: 298px;
              font-style: italic;
              color: #FFFFFF;
              font-weight: 700;
          }
        .auto-style4 {
              text-align: center;
              font-weight: bold;
              font-style: italic;
              font-size: x-large;
              width: 298px;
              color: #FFFFFF;
          }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
              text-align: center;
              font-weight: bold;
              font-style: italic;
              font-size: x-large;
              width: 298px;
              height: 35px;
              color: #FFFFFF;
          }
        .auto-style7 {
            height: 35px;
        }
          .auto-style9 {
              text-align: center;
              color: #CC3300;
          }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     </br>
     </br> 
    </br> 
   

    <div  class="backroad">
        <h1 class="auto-style9"><em>Add Garbage ServiceMan</em></h1>
    
       
    <table align="center" cellpadding="4" class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Name&nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtName"  Class="text"  runat="server" placeholder="Enter Name..." BorderColor="#FF3300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter BirthDate</td>
            <td>
                <asp:TextBox ID="txtBdate"  Class="text" placeholder=" Enter birthdate..."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Age</td>
            <td>
                <asp:TextBox ID="txtAge" Class="text"  placeholder=" Enter Age...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Address</td>
            <td>&nbsp;<asp:TextBox ID="txtAddress" Class="text"  placeholder=" Enter Address...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Work Area</td>
            <td>&nbsp;<asp:TextBox ID="txtworklocation" Class="text"  placeholder=" Enter work area...." runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Mobile No</td>
            <td>
                <asp:TextBox ID="txtMobileNo" Class="text" placeholder=" Enter MobileNo...."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Email Id</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtEmail" Class="text" placeholder=" Enter Email Id...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Aadhar card No</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtAdharcardNo" Class="text" placeholder=" Enter Aadhar Card No...." runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnadd"   runat="server"  style="margin-left: 190px; " Class ="loginbtn"  Height="42px" Text="Add" Width="150px" OnClick="btnadd_Click"  />
            </td>
            <td class="auto-style5">
               <asp:Button ID="btnCancle"   runat="server"  style="margin-left: 20px; " Class ="loginbtn"  Height="42px" Text="Cancle" Width="150px" OnClick="btnCancle_Click"    />
          </td>
        </tr>
    </table>
    </div>
        
    </br>
</asp:Content>

