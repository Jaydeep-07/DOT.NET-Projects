using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Client_startPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("select count (*) from CitizenRegistration where EmailId='" + TxtEmailid.Text + "'and Password='" + TxtPassword.Text + "' ", con);
        con.Open();
        String output = cmd.ExecuteScalar().ToString();

        if (output == "1")
        {
            Session["user"] = TxtEmailid.Text;
            Response.Redirect("HomePageClient.aspx");
          
        }
        else
        {
            Response.Write("<script>alert('Username or Password are Wrong .');</script>");
            TxtPassword.Text = "";
            TxtEmailid.Text = "";


        }
        con.Close();


    }
}