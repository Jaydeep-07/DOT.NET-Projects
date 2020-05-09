<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewGarbageServiceMans.aspx.cs" Inherits="Admin_ViewGarbageServiceMans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="adminStyles/StyleSheet.css" rel="stylesheet" />
     <link href="adminStyles/search.css" rel="stylesheet" />  
   
     <style type="text/css">
   
          .auto-style9 {
              text-align: center;
              color: white;
          }
         .auto-style10 {
             width: 40%;
         }
         .auto-style12 {
             text-align: right;
         }
         .auto-style13 {
             width: 100%;
         }
         .jay {
           
             width: 40%;
             transition: .5s;

       

         }
           .backroad {
    left: 0px;
    height: 100%;
    background: url(a.jpg);
}
             .auto-style9 {
              text-align: center;
              color: white;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    <br/>
    <br/>
    <br/>
    <br />
     <div  class="backroad">
           <h1 class="auto-style9"><em>Garbage Serviceman</em></h1>
    
       
          <br />
          <br />
          <br />
       <table align="right" class="jay">
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtsearch" placeholder="Enter area name..." runat="server" class="searchbtn" Width="125px"></asp:TextBox>
</td>
            <td><asp:Button ID="btnsearch" runat="server"  class="searchbox"  Text="Search" OnClick="btnsearch_Click"   /></td>
        </tr>
    </table>
     
          <table align="center" class="auto-style13">
              <tr>
                  <td>

                      <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" Height="30px" Width="1010px" CellPadding="4" CellSpacing="2" ForeColor="Black" >
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
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999"  Height="30px" Width="1010px"  BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="workarea" HeaderText="workarea" SortExpression="workarea" />
                <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                <asp:BoundField DataField="AadharCardNo" HeaderText="AadharCardNo" SortExpression="AadharCardNo" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CRWAConnectionString %>"
             SelectCommand="SELECT * FROM [GarbageServicemans]" DeleteCommand="DELETE FROM [GarbageServicemans] WHERE [Id] = @Id" InsertCommand="INSERT INTO [GarbageServicemans] ([Name], [Birthdate], [Age], [Address], [workarea], [EmailId], [MobileNo], [AadharCardNo]) VALUES (@Name, @Birthdate, @Age, @Address, @workarea, @EmailId, @MobileNo, @AadharCardNo)" UpdateCommand="UPDATE [GarbageServicemans] SET [Name] = @Name, [Birthdate] = @Birthdate, [Age] = @Age, [Address] = @Address, [workarea] = @workarea, [EmailId] = @EmailId, [MobileNo] = @MobileNo, [AadharCardNo] = @AadharCardNo WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Birthdate" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="workarea" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="AadharCardNo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Birthdate" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="workarea" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="AadharCardNo" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

</td>
              </tr>
         </table>
            
          <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      
   
    </div>
  
</asp:Content>

