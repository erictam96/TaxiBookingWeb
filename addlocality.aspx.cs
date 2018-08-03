using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addlocality : System.Web.UI.Page
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
        string q = "insert into addlocality values(@ctnm,@locnm)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@ctnm", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@locnm", TextBox1.Text);
        myconn.Open();
        int ans = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (ans == 1)
        {
            Response.Write("<script>alert('Locality added successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Locality not added, please try again')</script>");
        }
        GridView1.DataBind();
    }
    protected void SqlDataSource2_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "No Localities added";
        }
        else
        {
            Label2.Text = "";
        }
    }
}