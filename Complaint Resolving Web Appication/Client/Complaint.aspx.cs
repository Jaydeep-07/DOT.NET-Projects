using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Complaint : System.Web.UI.Page
{
    static int complaintid;

    protected void Page_Load(object sender, EventArgs e)
    {
        getcomplaintid();
        Label2.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "insert into ComplaintDetails(complaintId,registerdatetime,cname,complaintsdetails,Status) values(" + complaintid + ",'" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','Under Processing')";
        String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label3.Text = "Your Complaint ID is " + complaintid + " . You can Check the Status of Complaint Using Complaint ID";
    }
    public void getcomplaintid()
    {
        String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select complaintId from ComplaintDetails";
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
            String myquery1 = "select max(complaintId) from ComplaintDetails";
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