using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_BirthCertificate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";

        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd2 = new SqlCommand("insert into  BirthdateCertificate  values('" + txtbdate.Text + "','" + txtFullname.Text + "','" + txtSex.Text + "','" + txtBplace.Text + "','" + txtfName.Text + "','" + txtpAddess.Text + "','" + txtRoad.Text + "','" + txtState.Text + "','" + txtCityName.Text + "','" + txtPincode.Text + "','" + txtContactNumber.Text + "','" + txtEmail.Text + "')", con);

        con.Open();

        int res = cmd2.ExecuteNonQuery();


        if (res > 0)
        {
            Response.Write("<script>alert('Application add Successfully .');</script>");
            txtbdate.Text = "";
            txtFullname.Text = "";
            txtSex.Text = "";
            txtBplace.Text = "";
            txtfName.Text = "";
            txtpAddess.Text = "";
            txtRoad.Text ="";
            txtState.Text="";
            txtCityName.Text="";
            txtPincode.Text="";
            txtContactNumber.Text="";
            txtEmail.Text = "";
        }
        else
        {
            Response.Write("<script>alert('UnSuccessfully .');</script>");

        }

        con.Close();
    }
}