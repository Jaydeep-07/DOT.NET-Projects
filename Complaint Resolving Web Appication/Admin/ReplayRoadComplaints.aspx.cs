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

public partial class Admin_ReplayRoadComplaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["complaintId"] != null)
        {
            int complaintid = Convert.ToInt16(Request.QueryString["complaintId"].ToString());
            String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
            String myquery = "Select * from RoadComplaint where complaintId=" + complaintid;
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
               // Label1.Text = "Data Found";
                Complaintid.Text = ds.Tables[0].Rows[0]["complaintId"].ToString();
                RegdateAndTime.Text = ds.Tables[0].Rows[0]["Registerdatetime"].ToString();
                Cname.Text = ds.Tables[0].Rows[0]["Cname"].ToString();
                ComplaintDetails.Text = ds.Tables[0].Rows[0]["Complaintsdetails"].ToString();
                ComplaintAddress.Text = ds.Tables[0].Rows[0]["ComplaintAddress"].ToString();
                status.Text = ds.Tables[0].Rows[0]["Status"].ToString();
            }
            else
            {
                Response.Redirect("ViewRoadComplaints.aspx");

            }
            con.Close();

        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        String updatedata = "Update RoadComplaint set Status='Processed'" + ", Replaying='" + TxtReplay.Text + "' where complaintId=" + Complaintid.Text;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        reply.Text = "Reply Has Been Processed Properly";


        //        string emailadd1 = "sachingore152@gmail.com";
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.Port = 587;
        //        smtp.Credentials = new System.Net.NetworkCredential("sachingore152@gmail.com", "9657877818");
        //        smtp.EnableSsl = true;
        //        MailMessage msg = new MailMessage();
        //        msg.Subject = "Complaint Resolving Web Application";
        //        msg.Body = "Congratulations.....!!!!!\n\n\nYour Complaint is Complete A\n\n\nThanks & Regards\n\nSJw Tech";
        //        string toaddress = emailadd1;
        //        msg.To.Add(toaddress);
        //        string fromaddress = "<sachingore152@gmail.com>";
        //        msg.From = new MailAddress(fromaddress);
        //        try
        //        {
        //            smtp.Send(msg);


        //        }
        //        catch
        //        {
        //            throw;
        //        }
        //        Response.Write("email sent to " + emailadd1);
        //       // Response.Write("<script>alert('email sent to " + emailadd1 .')</script>");
        ////)




    }
}