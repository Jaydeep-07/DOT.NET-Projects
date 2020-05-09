using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddRoadServiceMan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";

        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd2 = new SqlCommand("insert into  RoadServicemans  values('" + txtName.Text + "','" + txtBdate.Text + "','" + txtAge.Text + "','" + txtAddress.Text + "','"+txtworklocation.Text+"','" + txtMobileNo.Text + "','" + txtEmail.Text + "','" + txtAdharcardNo.Text + "')", con);

        con.Open();

        int res = cmd2.ExecuteNonQuery();


        if (res > 0)
        {
            Response.Write("<script>alert('Road Serviceman add Successfully .');</script>");
            txtName.Text = "";
            txtBdate.Text = "";
            txtAge.Text = "";
            txtMobileNo.Text = "";
            txtEmail.Text = "";
            txtAdharcardNo.Text = "";
            txtworklocation.Text = "";
            txtAddress.Text = "";
        }
        else
        {
            Response.Write("<script>alert('UnSuccessfully .');</script>");

        }

        con.Close();

    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtBdate.Text = "";
        txtAge.Text = "";
        txtMobileNo.Text = "";
        txtEmail.Text = "";
        txtAdharcardNo.Text = "";
        txtworklocation.Text = "";
        txtAddress.Text = "";
    }
}