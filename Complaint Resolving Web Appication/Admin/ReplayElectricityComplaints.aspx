<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/AdminMaster.master" CodeFile="ReplayElectricityComplaints.aspx.cs" Inherits="Admin_ReplayElectricityComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #990000;
            text-align: center;
        }
            .auto-style3 {
            font-weight: bold;
            font-style: italic;
            text-align: center;
        }
         .auto-style9 {
           
            float: none;
             width: 30%;
            /*width: 320px;*/
		height: 250px;
	    width: 650px;
	/*position: absolute;*/
	top: 50%;
    left: 50%;
	transform: translateX(5%) translateY(0%);
	background: rgba(255, 255, 255, 0.5);
	padding: 20px;
	border: 1px solid #ffd800;
	box-shadow: 0 0 8px 3px #ffd800;
        }
          .btnRegister 
        {
          
            border:none;
            outline:none;
            height:45px;
            background:#fb2525;
            color:#fff;
            font-size:18px;
            border-radius:20px;
        

        }

        .btnRegister:hover 
        {
            cursor:pointer;
            background:#ffc107;
            color:#000;
        }

       
            .auto-style4 {}
            </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br/>
     <br/> 
    <br/> 
   <div>
       <asp:Label ID="Label1" runat="server" ></asp:Label>
   <h1 class="auto-style1"><em>Electricity Complaints</em></h1>
        <br />
        <table align="center" class="auto-style9">
            <tr>
                <td class="auto-style3">Complaint Id</td>
                <td>
                    <asp:Label ID="Complaintid" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Registered Date And Time</td>
                <td>
                    <asp:Label ID="RegdateAndTime" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Customer Name</td>
                <td>
                    <asp:Label ID="Cname" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Complaint Details</td>
                <td>
                    <asp:Label ID="ComplaintDetails" runat="server" ></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Complaint Address</td>
                <td>
                    <asp:Label ID="ComplaintAddress" runat="server" ></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
           
            <tr>
                <td class="auto-style3">Status</td>
                <td>
                    <asp:Label ID="status" runat="server" ForeColor="Red" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Reply</td>
                <td>
                    <asp:TextBox ID="TxtReplay" runat="server" CssClass="auto-style4" Height="61px" TextMode="MultiLine" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" BackColor="#FF9933" class="btnRegister" Height="26px" Text="Submit" Width="108px" OnClick="BtnSubmit_Click"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><asp:Label ID="reply" runat="server" ForeColor="Red" ></asp:Label>
       </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ViewElectricityComplaints.aspx">View All  Electricity Complaints</asp:HyperLink>
                
                </td>
                 
                <td> </td>
            </tr>
        </table>
        <br />
        <br />

       </div>
    
   </asp:Content>
