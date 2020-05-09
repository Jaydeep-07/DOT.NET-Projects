<%@ Page Language="C#" MasterPageFile="~/Client/MasterPageCitizen.master" AutoEventWireup="true" CodeFile="HomePageClient.aspx.cs" Inherits="Client_HomePageClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">

           .Roadbtn {
               height: 100px;
               width: 280px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(95%) translateY(-20%);
	
               color: #fff;
               font-size: 18px;
               border-radius: 10px;
               box-shadow: 3px 3px 8px 0 #000;
   
           }
        .Roadbtn:hover {

            cursor: pointer;
	        background: green;
	        color: #000;
	
        }

           .Electricitybtn {
                height: 100px;
               width: 280px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(130%) translateY(-20%);
	
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
           .Waterbtn {
                            height: 100px;
               width: 280px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(95%) translateY(30%);
	
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
           .Garbagebtn {
                  height: 100px;
               width: 280px;
               border: none;
               outline: none;
             
               background: #ffc107;
               transform: translateX(130%) translateY(30%);
	
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
       <h1 class="auto-style1"><em>Complaint Desk</em></h1>
    <hr>
       <br /><br />
        <asp:Button ID="BtnRoad" Class="Roadbtn" runat="server" Text="RoadComplaints" OnClick="BtnRoad_Click" />
              
        <asp:Button ID="BtnElectricity" class="Electricitybtn" runat="server" Text="ElectricityCompalints" OnClick="BtnElectricity_Click" />
       <br />
          <asp:Button ID="BtnWater" class="Waterbtn" runat="server" Text="WaterComplaints" OnClick="BtnWater_Click" />
         
        <asp:Button ID="BtnGarbage" class="Garbagebtn" runat="server" Text="GarbageComplaints" OnClick="BtnGarbage_Click" />
         
    
    </div>
    </asp:Content>
