using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net.Mail;
using System.Net;

public partial class Client_ElectricityComplaints : System.Web.UI.Page
{
    static int complaintid;
   // String s;
    String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        
    protected void Page_Load(object sender, EventArgs e)
     {
       

        getcomplaintid();
        Label2.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();
   

    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
     String   s1 = Session["user"].ToString();

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd1 = new SqlCommand("select RegistrationId from CitizenRegistration where EmailId='"+s1+"' ", con);
        con.Open();
        String regId = cmd1.ExecuteScalar().ToString();
        Label4.Text = regId;

     
       
        FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
        String Link = "images/" + Path.GetFileName(FileUpload1.FileName);

        String query = "insert into ElectricityComplaint1(complaintId,Registerdatetime,Cname,Complaintsdetails,ComplaintAddress,CompalintImage,Status,RegistrationId) values(" + complaintid + ",'" + Label2.Text + "','"+txtName.Text+"','" + txtComplaintMessage.Text + "','" + txtAddress.Text + "','" + Link + "','Under Processing','"+regId+"')";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
       
        Label3.Text = "Your Complaint ID is " + complaintid + " . You can Check the Status of Complaint Using Complaint ID";
       
        String s="Welcome \n Your Complaint About Electricity Is Registered Sucessfuly !!!\n Below are the details\n\n\n ";
        string ComplaintId1 = complaintid.ToString();
        string registerDateTime1 = Label2.Text;
        String CitizenName1 = txtName.Text;
        String ComplaintDetails1 = txtComplaintMessage.Text;
        String ComplaintAddress = txtAddress.Text;
        string emailadd1 = s1;// "sachingore152@gmail.com";
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("sachingore152@gmail.com", "9657877818");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Complaint Resolving Web Application";
        msg.Body = s + " Complaint Id :" + ComplaintId1 + "\n" + "Register Date And time :" + registerDateTime1 + "\n" + "Citizen Name :" + CitizenName1 + "\n" + "Complaints Details :" + ComplaintDetails1 + "\n" + "ComplaintAddress :" + ComplaintAddress + "\n\n\n\nTeam\n\nCRWA Projects";

        string toaddress = emailadd1;
        msg.To.Add(toaddress);
        string fromaddress = "<sachingore152@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        if (FileUpload1.HasFile)
        {
            string filename = (FileUpload1.PostedFile.FileName);
            msg.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, filename));

        }
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
        Response.Write("email sent to " + emailadd1);
        // Response.Write("<script>alert('email sent to " + emailadd1 .')</script>");
        //)


        txtName.Text = "";
        txtComplaintMessage.Text = "";
        txtAddress.Text = "";

   
    }
    public void getcomplaintid()
    {
        String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select complaintId from ElectricityComplaint1";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            complaintid = 10001;

        }
        else
        {



            String mycon1 = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(complaintId) from ElectricityComplaint1";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            int a;
            a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
            a = a + 1;
            complaintid = a;
            scon1.Close();
        }

    }
}