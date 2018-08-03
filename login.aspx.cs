using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select name from signup where username=@id and password=@pa";
        mycomm = new SqlCommand(q, myconn);

        mycomm.Parameters.AddWithValue("@id", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@pa", TextBox2.Text);
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();

        if (x == null)
        {
            Label1.Text = "Incorrect Username / Password";

        }
        else
        {
            Session.Add("n", x.ToString());
            Session.Add("un", TextBox1.Text);
            q = "select usertype from signup where username=@un";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@un", TextBox1.Text);
            myconn.Open();
            object res = mycomm.ExecuteScalar();
            myconn.Close();
            if (res.ToString() == "normal")
            {
                Response.Redirect("default.aspx");
            }
            else if (res.ToString().ToLower() == "admin")
            {
                Session.Add("ad", "admin");
                Response.Redirect("adminpanel.aspx");
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("driverlogin.aspx");
    }
}