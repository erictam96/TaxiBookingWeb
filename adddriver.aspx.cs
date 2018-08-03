using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class adddriver : System.Web.UI.Page
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
        string q = "insert into adddriver values(@dnm,@dadd,@wkct,@eid,@un,@pass,@dpic,@tid,@cname,@cnum,@st)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@dnm", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@dadd", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@wkct",DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@eid", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@un", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@pass", TextBox5.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@dpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@dpic", "cardrivder.png");
        }
        mycomm.Parameters.AddWithValue("@tid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@cname", TextBox7.Text);
        mycomm.Parameters.AddWithValue("@cnum", TextBox8.Text);
        mycomm.Parameters.AddWithValue("@st", "Free");
        myconn.Open();
        int ans = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (ans == 1)
        {
            Response.Write("<script>alert('Driver added successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Driver not added, please try again')</script>");
        }
        GridView1.DataBind();
        
    }
    protected void SqlDataSource2_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "No drivers found";
        }
        else
        {
            Label2.Text = "";
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        FileUpload fileUpload = GridView1.Rows[e.RowIndex].Cells[0].FindControl("FileUpload2") as FileUpload;
       Label img = GridView1.Rows[e.RowIndex].Cells[0].FindControl("Label3") as Label;
        if (fileUpload.HasFile)
        {
            fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("images"), fileUpload.FileName));
            SqlDataSource2.UpdateParameters["DriverPic"].DefaultValue = fileUpload.FileName;
        }
        else
        {
            SqlDataSource2.UpdateParameters["DriverPic"].DefaultValue = img.Text;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}