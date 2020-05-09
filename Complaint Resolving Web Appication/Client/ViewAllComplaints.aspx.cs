using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_ViewAllComplaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s1 = Session["user"].ToString();

        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);



        SqlCommand cmd1 = new SqlCommand("select RegistrationId from CitizenRegistration where EmailId='" + s1 + "' ", con);
        con.Open();
        String regId = cmd1.ExecuteScalar().ToString();

        SqlCommand cmd = new SqlCommand("select * from ElectricityComplaint1 where RegistrationId ='" + regId + "'", con);
        SqlCommand cmd2 = new SqlCommand("select * from  GarbageComplaints  where RegistrationId ='" + regId + "'", con);
        SqlCommand cmd3 = new SqlCommand("select * from  RoadComplaint where RegistrationId ='" + regId + "'", con);

        SqlCommand cmd4 = new SqlCommand("select * from WaterComplaint where RegistrationId ='" + regId + "'", con);
      
        SqlDataReader rdr = cmd.ExecuteReader();
        GridView1.DataSource = rdr;
        GridView1.DataBind();
        con.Close();

        con.Open();
        SqlDataReader rdr1 = cmd2.ExecuteReader();
        GridView2.DataSource = rdr1;
        GridView2.DataBind();
        con.Close();

        con.Open();
        SqlDataReader rdr2 = cmd3.ExecuteReader();
        GridView3.DataSource = rdr2;
        GridView3.DataBind();
        con.Close();

        con.Open();
        SqlDataReader rdr3 = cmd4.ExecuteReader();
        GridView4.DataSource = rdr3;
        GridView4.DataBind();

        con.Close();
       
       
       


      

    }
}