using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class Client_CitizenRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtRegister_Click(object sender, EventArgs e)
    {
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        string value = gender.SelectedItem.Value.ToString();
        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("insert into CitizenRegistration (Name,EmailId,Birthdate,Gender,Mobileno ,Password) values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtBdate.Text + "','" + value + "','" + txtMobileNo.Text + "','" + txtpassword.Text + "')", con);
        
        con.Open();

        int res = cmd.ExecuteNonQuery();
       
        if (res > 0)
        {
            Response.Write("<script>alert('Citizen Registration Successfully .');</script>");
             Response.Redirect("startPage.aspx");
        }
        else
        {
            Response.Write("<script>alert('Registration UnSuccessfully .');</script>");

        }



        con.Close();



    }
}