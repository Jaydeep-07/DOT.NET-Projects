using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class Admin_ViewElectricalServiceMans : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        String  m = txtsearch.Text;

        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=CRWA;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        SqlDataAdapter sqlDa = new SqlDataAdapter("select * from ElectricityServiceMan where workarea ='" + m + "'", con);
        //DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        sqlDa.Fill(ds, "ElectricityServiceMan");
        GridView2.DataSource = ds;
        GridView2.DataBind();
        txtsearch.Text = "";

    }
}