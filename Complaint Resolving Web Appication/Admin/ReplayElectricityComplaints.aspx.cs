using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;


public partial class Admin_ReplayElectricityComplaints : System.Web.UI.Page
{
    String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
    //String output1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["complaintId"] != null)
        {
            int complaintid = Convert.ToInt32(Request.QueryString["complaintId"].ToString());
            
            SqlConnection con = new SqlConnection(mycon);
            con.Open();

            //SqlCommand cmd1 = new SqlCommand("select RegistrationId from ElectricityComplaint1 where complaintId='" + complaintid + "' ", con);
            //int output = Convert.ToInt32(cmd1.ExecuteScalar());


            //String  output1 = cmd1.ExecuteScalar().ToString();
           // Label1.Text = output1 ;


            String myquery = "Select * from ElectricityComplaint1 where complaintId=" + complaintid;

           //String nikhil = "select EmailId from CitizenRegistration where RegistrationId='" + output;
           //SqlCommand cmd2 = new SqlCommand();
           //cmd2.CommandText = nikhil;
           //cmd2.Connection = con;
           //SqlDataAdapter sda = new SqlDataAdapter();
           //sda.SelectCommand = cmd2;
           //DataSet db = new DataSet();
           //sda.Fill(db);
           //if (db.Tables[0].Rows.Count > 0)
           //{
           //    Label1.Text = db.Tables[0].Rows[0]["EmailId"].ToString();


           //}
           //else
           //{
           //}


           // SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label1.Text = "Data Found";
                Complaintid.Text = ds.Tables[0].Rows[0]["complaintId"].ToString();
                RegdateAndTime.Text = ds.Tables[0].Rows[0]["Registerdatetime"].ToString();
                Cname.Text = ds.Tables[0].Rows[0]["Cname"].ToString();
                ComplaintDetails.Text = ds.Tables[0].Rows[0]["Complaintsdetails"].ToString();
                ComplaintAddress.Text = ds.Tables[0].Rows[0]["ComplaintAddress"].ToString();
                status.Text = ds.Tables[0].Rows[0]["Status"].ToString();
            }
            else
            {
                Response.Redirect("ViewElectricityComplaints.aspx");

            }
            con.Close();

        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        String updatedata = "Update ElectricityComplaint1 set Status='Processed'" + ", Replaying='" + TxtReplay.Text + "' where complaintId=" + Complaintid.Text;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        reply.Text = "Reply Has Been Processed Properly";

        //String s = " \n Your Complaint About Electricity Is Resolvedd Sucessfuly !!!\n Below are the details\n\n\n ";
        //String emailadd1 = output1;// "sachingore152@gmail.com";
        //String ComplaintId1 = Complaintid.Text;
        //String registerDateTime1 = RegdateAndTime.Text;
        //String CitizenName1 = Cname.Text;//code lihaycha aahe registration page zalya var name database madhun ghyayacha aaahe
        //String ComplaintDetails1 = ComplaintDetails.Text;
        //String ComplaintAddress1 = ComplaintAddress.Text;
        //String  w = "Processed";
        //SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        //smtp.Port = 587;
        //smtp.Credentials = new System.Net.NetworkCredential("sachingore152@gmail.com", "9657877818");
        //smtp.EnableSsl = true;
        //MailMessage msg = new MailMessage();
        //msg.Subject = "Complaint Resolving Web Application";
        //msg.Body = s + " Complaint Id :" + ComplaintId1 + "\n" + "Register Date And time :" + registerDateTime1 + "\n" + "Citizen Name :" + CitizenName1 + "\n" + "Complaints Details :" + ComplaintDetails1 + "\n" + "ComplaintAddress :" + ComplaintAddress +" \n"+" Status:"  + w +  "\n\n\n\nTeam\n\nCRWA Projects";
        //string toaddress = emailadd1;
        //msg.To.Add(toaddress);
        //string fromaddress = "<sachingore152@gmail.com>";
        //msg.From = new MailAddress(fromaddress);
        //try
        //{
        //    smtp.Send(msg);


        //}
        //catch
        //{
        //    throw;
        //}
        //Response.Write("email sent to " + emailadd1);
        //// Response.Write("<script>alert('email sent to " + emailadd1 .')</script>");
        ////)

    



    }
}