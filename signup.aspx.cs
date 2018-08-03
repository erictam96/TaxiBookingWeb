using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from signup where username=@un";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox6.Text);
        myconn.Open();
        object res = mycomm.ExecuteScalar();
        myconn.Close();
        if (res == null)
        {
            q = "insert into signup values(@nm,@add,@ct,@st,@ph,@un,@pass,@ut)";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@nm", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@add", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@ct", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@st", TextBox4.Text);
            mycomm.Parameters.AddWithValue("@ph", TextBox5.Text);
            mycomm.Parameters.AddWithValue("@un", TextBox6.Text);
            mycomm.Parameters.AddWithValue("@pass", TextBox7.Text);
            mycomm.Parameters.AddWithValue("@ut", "normal");
            myconn.Open();
            int ans = mycomm.ExecuteNonQuery();
            myconn.Close();
            if (ans == 1)
            {
                Response.Redirect("thanks.aspx");
            }
            else
            {
                Response.Write("<script>alert('Not added, please try again')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('You have already signed up, please login')</script>");
        }
    }
}