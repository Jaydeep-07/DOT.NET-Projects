using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_HomePageClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnRoad_Click(object sender, EventArgs e)
    {
        Response.Redirect("RoadComplaint.aspx");
    }
    protected void BtnElectricity_Click(object sender, EventArgs e)
    {
        Response.Redirect("ElectricityComplaints.aspx");
    
    }
    protected void BtnWater_Click(object sender, EventArgs e)
    {
        Response.Redirect("WaterComplaint.aspx");
    
    }
    protected void BtnGarbage_Click(object sender, EventArgs e)
    {
        Response.Redirect("GarbageComplaints.aspx");
    

    }
}