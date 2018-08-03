using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class driverlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select name from adddriver where username=@id and password=@pa";
        mycomm = new SqlCommand(q, myconn);

        mycomm.Parameters.AddWithValue("@id", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@pa", TextBox2.Text);
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();

        if (x == null)
        {
            Label2.Text = "Incorrect Username / Password";

        }
        else
        {
            Session.Add("n", x.ToString());
            Session.Add("un", TextBox1.Text);
            Response.Redirect("driverhome.aspx");
        }
    }
}