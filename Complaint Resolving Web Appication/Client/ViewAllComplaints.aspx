<%@ Page Title="" Language="C#" MasterPageFile="~/Client/MasterPageCitizen.master" AutoEventWireup="true" CodeFile="ViewAllComplaints.aspx.cs" Inherits="Client_ViewAllComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #990000;
            text-align: center;
        }
        .auto-style2 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />

    <br />
    
    <br />

    <br />
    <h1 class="auto-style1"><em>Electricity Complaints</em></h1>    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" Height="30px" Width="1070px" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
                <asp:BoundField DataField="complaintId" HeaderText="ComplaintId" SortExpression="complaintId" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Registerdatetime" HeaderText="Registration Date And Time" SortExpression="Registerdatetime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Cname" HeaderText="Citizen Name" SortExpression="Cname" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Complaintsdetails" HeaderText="Complaints Details" SortExpression="Complaintsdetails" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ComplaintAddress" HeaderText="Complaint Address" SortExpression="ComplaintAddress" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="CompalintImage" HeaderText="Complaint Image">
                </asp:ImageField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>       
         <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
    <br />
     <h1 class="auto-style1"><em>Garbage Complaints</em></h1>    
   
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false"  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" Height="30px" Width="1070px" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
                <asp:BoundField DataField="complaintId" HeaderText="ComplaintId" SortExpression="complaintId" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Registerdatetime" HeaderText="Registration Date And Time" SortExpression="Registerdatetime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Cname" HeaderText="Citizen Name" SortExpression="Cname" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Complaintsdetails" HeaderText="Complaints Details" SortExpression="Complaintsdetails" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ComplaintAddress" HeaderText="Complaint Address" SortExpression="ComplaintAddress" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="CompalintImage" HeaderText="Complaint Image">
                </asp:ImageField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>       
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
    <br />
     <h1 class="auto-style1"><em>Road Complaints</em></h1>    
       <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"  Height="30px" Width="1070px" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
                <asp:BoundField DataField="complaintId" HeaderText="ComplaintId" SortExpression="complaintId" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Registerdatetime" HeaderText="Registration Date And Time" SortExpression="Registerdatetime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Cname" HeaderText="Citizen Name" SortExpression="Cname" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Complaintsdetails" HeaderText="Complaints Details" SortExpression="Complaintsdetails" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ComplaintAddress" HeaderText="Complaint Address" SortExpression="ComplaintAddress" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="CompalintImage" HeaderText="Complaint Image">
                </asp:ImageField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
         <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
    <br />
    <h1 class="auto-style1"><em>Water Complaints</em></h1>    
   
     <asp:GridView ID="GridView4" runat="server"  AutoGenerateColumns="false" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" Height="30px" Width="1070px" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
                <asp:BoundField DataField="complaintId" HeaderText="ComplaintId" SortExpression="complaintId" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Registerdatetime" HeaderText="Registration Date And Time" SortExpression="Registerdatetime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Cname" HeaderText="Citizen Name" SortExpression="Cname" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Complaintsdetails" HeaderText="Complaints Details" SortExpression="Complaintsdetails" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ComplaintAddress" HeaderText="Complaint Address" SortExpression="ComplaintAddress" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="CompalintImage" HeaderText="Complaint Image">
                </asp:ImageField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
      <br />
      <br />
      <br />
      <br />
      <br />
</asp:Content>

