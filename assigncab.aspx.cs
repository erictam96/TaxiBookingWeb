using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class assigncab : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad"] == null)
        {
            Response.Redirect("error.aspx");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "SELECT adddriver.CarNumber, adddriver.Name, adddriver.Username, adddriver.CarName, adddriver.DriverPic, addtype.TypeName FROM adddriver INNER JOIN addtype ON adddriver.TypeID = addtype.TypeID WHERE (adddriver.DriverID = @did)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@did", DropDownList1.SelectedValue);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            myreader.Read();
            Image1.ImageUrl = "images/" + myreader["driverpic"].ToString();
            Label2.Text = myreader["name"].ToString();
            Label3.Text = myreader["username"].ToString();
            Label4.Text = myreader["carname"].ToString();
            Label5.Text = myreader["carnumber"].ToString();
            Label6.Text = myreader["typename"].ToString();
        }
        myreader.Close();
        myreader.Dispose();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into assigncabtobooking values(@bkid,@ctid,@drvid,@did)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        mycomm.Parameters.AddWithValue("@ctid", Request.QueryString["ctid"]);
        mycomm.Parameters.AddWithValue("@drvid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@did", Label3.Text);
        myconn.Open();
        int ans = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (ans == 1)
        {
            Response.Write("<script>alert('Cab assigned successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Cab assigned, please try again')</script>");
        }

        q = "update adddriver set status='busy' where driverid=@did";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@did", DropDownList1.SelectedValue);
        myconn.Open();
        ans = mycomm.ExecuteNonQuery();
        myconn.Close();

        q = "update booking set status='Driver Assigned' where bookingid=@bkid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        myconn.Open();
        ans = mycomm.ExecuteNonQuery();
        myconn.Close();
        DropDownList1.DataBind();
    }
}