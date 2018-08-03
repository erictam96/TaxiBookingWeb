using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addcity : System.Web.UI.Page
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
        string q = "insert into addcity values(@cnm)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cnm", TextBox1.Text);
        myconn.Open();
        int ans = mycomm.ExecuteNonQuery();
        myconn.Close();
        
        myconn.Close();
        if (ans == 1)
        {
            Response.Write("<script>alert('City added successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('City not added, please try again')</script>");
        }
        GridView1.DataBind();
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "No cities added yet";
        }
        else
        {
            Label2.Text = "";
        }
    }
}