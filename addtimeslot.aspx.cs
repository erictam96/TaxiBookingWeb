using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addtimeslot : System.Web.UI.Page
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
        string q = "insert into addtime values(@slt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@slt", TextBox1.Text);
        myconn.Open();
        int ans = mycomm.ExecuteNonQuery();
        myconn.Close();

        myconn.Close();
        if (ans == 1)
        {
            Response.Write("<script>alert('Time added successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Time not added, please try again')</script>");
        }
    }
}