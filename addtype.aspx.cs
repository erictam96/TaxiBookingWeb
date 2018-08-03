using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addtype : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad"] == null)
        {
            Response.Redirect("error.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addtype values(@typnm,@ctid,@minbill,@fkms,@wc,@kmc)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@typnm", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@ctid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@minbill", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@fkms", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@wc", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@kmc", TextBox2.Text);
        myconn.Open();
        int ans = mycomm.ExecuteNonQuery();
        myconn.Close();

        myconn.Close();
        if (ans == 1)
        {
            Response.Write("<script>alert('Type added successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Type not added, please try again')</script>");
        }
        GridView1.DataBind();
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "No car type available";
        }
        else
        {
            Label2.Text = "";
        }
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}