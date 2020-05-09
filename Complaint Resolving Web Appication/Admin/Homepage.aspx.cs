using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("select count (*) from RoadComplaint", con);
        SqlCommand cmd1 = new SqlCommand("select count (*) from ElectricityComplaint1", con);
       SqlCommand cmd2 = new SqlCommand("select count (*) from WaterComplaint", con);
       SqlCommand cmd3 = new SqlCommand("select count (*) from GarbageComplaints", con);
      
        
        con.Open();
        String output = cmd.ExecuteScalar().ToString();
        BtnRoad.Text = output;

        String output1 = cmd1.ExecuteScalar().ToString();
       BtnElectricity.Text= output1;

       String output2 = cmd2.ExecuteScalar().ToString();
       BtnWater.Text = output2;

       String output3 = cmd3.ExecuteScalar().ToString();
       BtnGarbage.Text = output3;

        con.Close();
    }
    protected void BtnRoad_Click(object sender, EventArgs e)
    {

        Response.Redirect("ViewRoadComplaints.aspx");

    }
    protected void BtnWater_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewWaterComplaints.aspx");

    }
    protected void BtnRoad1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewRoadComplaints.aspx");


    }
    protected void BtnWater1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewWaterComplaints.aspx");

    }
    protected void BtnElectricity_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewElectricityComplaints.aspx");

    }
    protected void BtnElectricity1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewElectricityComplaints.aspx");

    }
    protected void BtnGarbage_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewGarbageComplaint.aspx");
    }
    protected void BtnGarbage1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewGarbageComplaint.aspx");
    }
}