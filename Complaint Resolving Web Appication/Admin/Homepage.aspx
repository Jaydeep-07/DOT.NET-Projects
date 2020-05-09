<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Admin_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
       .Roadbtn {
               height: 70px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(110%) translateY(-20%);
	
               color: #fff;
               font-size: 16px;
               border-radius: 8px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
        .Roadbtn:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
         .Roadbtn1 {
               height: 50px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(8%) translateY(100%);
	
               color: #fff;
               font-size: 16px;
               border-radius: 8px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
        .Roadbtn1:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
        .Electricitybtn {
                 height: 70px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(60%) translateY(-20%);
	
               color: #fff;
               font-size: 18px;
               border-radius: 10px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
            .Electricitybtn:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
            .Electricitybtn1 {
                 height: 50px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(-40%) translateY(104%);
	
               color: #fff;
               font-size: 16px;
               border-radius: 10px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
            .Electricitybtn1:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
           
           .Waterbtn {
                           height: 70px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(110%) translateY(140%);
	
               color: #fff;
               font-size: 18px;
               border-radius: 10px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
            .Waterbtn:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
               .Waterbtn1 {
                height: 50px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(8%) translateY(325%);
	
               color: #fff;
               font-size: 18px;
               border-radius: 10px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
            .Waterbtn1:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
           .Garbagebtn {
                 height: 70px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(60%) translateY(140%);
	
               color: #fff;
               font-size: 18px;
               border-radius: 10px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
           Garbagebtn:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
           .Garbagebtn1 {
                  height: 50px;
               width: 250px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(-40%) translateY(325%);
	
               color: #fff;
               font-size: 18px;
               border-radius: 10px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
           Garbagebtn1:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }
           .auto-style1 {
            color: #990033;
              transform: translateX(25%) translateY(0%);
	
        }
      
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
   <div>
        <br/>
        <br/>
         <br/>
       <h1 class="auto-style1"><em>Complaint Details</em></h1>
    <hr>
       <br /><br />
        <asp:Button ID="BtnRoad" Class="Roadbtn" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="BtnRoad_Click"  />
          <asp:Button ID="BtnRoad1" Class="Roadbtn1" runat="server"  ForeColor="Black"  Text="RoadComplaints" OnClick="BtnRoad1_Click"  />
       
       <asp:Button ID="BtnElectricity" Class="Electricitybtn" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="BtnElectricity_Click"  />
          <asp:Button ID="BtnElectricity1" Class="Electricitybtn1" runat="server"  ForeColor="Black"  Text="ElectricityComplaints" OnClick="BtnElectricity1_Click"  />
       
        <asp:Button ID="BtnWater" Class="Waterbtn" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="BtnWater_Click"  />
          <asp:Button ID="BtnWater1" Class="Waterbtn1" runat="server"  ForeColor="Black"  Text="WaterComplaints" OnClick="BtnWater1_Click"  />
      
        
       <asp:Button ID="BtnGarbage" Class="Garbagebtn" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="BtnGarbage_Click"  />
          <asp:Button ID="BtnGarbage1" Class="Garbagebtn1" runat="server"  ForeColor="Black"  Text="GarbageComplaints" OnClick="BtnGarbage1_Click"  />
            
      
    </div>
 
</asp:Content>

