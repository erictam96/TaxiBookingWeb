using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
public partial class booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
        {
            Response.Redirect("login.aspx?returnurl=booking.aspx");
        }



        

        //SqlConnection myconn;
        //SqlCommand mycomm;
        //myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //TimeSpan tm = DateTime.Now.TimeOfDay;

        //string q = "select slotid, CONVERT(datetime,CAST(slotname AS DateTime),114)as slotname from addtime where slotname>@tm";

        //mycomm = new SqlCommand(q, myconn);
        //mycomm.Parameters.AddWithValue("@tm", tm);

        //myconn.Open();
        //SqlDataReader myreader;

        //myreader = mycomm.ExecuteReader();

        //DropDownList3.DataSource = myreader;
        //DropDownList3.DataTextField = "slotname";
        //DropDownList3.DataValueField = "Slotid";
        //DropDownList3.DataBind();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible=true;
        Panel2.Visible = false;
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from signup where username=@un";
        mycomm = new SqlCommand(q, myconn);

        mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
        myconn.Open();
        SqlDataReader myreader;

        myreader = mycomm.ExecuteReader();

        if(myreader.HasRows)
        {
            myreader.Read();
            Label2.Text = myreader["name"].ToString();
            Label3.Text = myreader["phone"].ToString();
            Label4.Text = myreader["username"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Panel1.Visible = false;
        Panel2.Visible = false;
        Label5.Text = DropDownList2.SelectedItem.Text;
        Label6.Text = TextBox1.Text;
        Label7.Text = DropDownList3.SelectedItem.Text;
        Label8.Text = Label2.Text;
        pricelabel.Text = Label9.Text;
            
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into booking values(@pkupdt,@pkuptm,@pkupct,@pkuploc,@drploc,@tnm,@tph,@bkby,@bkdt,@st,@tid,@bp)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pkupdt", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@pkuptm", DropDownList3.SelectedValue);
        mycomm.Parameters.AddWithValue("@pkupct", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@pkuploc", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@drploc", DropDownList4.SelectedValue);
        mycomm.Parameters.AddWithValue("@tnm", Label2.Text);
        mycomm.Parameters.AddWithValue("@tph", Label3.Text);
        mycomm.Parameters.AddWithValue("@bkby", Session["un"].ToString());
        mycomm.Parameters.AddWithValue("@bkdt", DateTime.Now);
        mycomm.Parameters.AddWithValue("@st", "Pending");
        mycomm.Parameters.AddWithValue("@tid", DropDownList5.SelectedValue);
        mycomm.Parameters.AddWithValue("@bp", Label9.Text);

        myconn.Open();
        int ans = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (ans == 1)
        {
            Response.Redirect("~/Payment/PaymentMethod.aspx");
        }
        else
        {
            Response.Write("<script>alert('Some error while booking, please try again')</script>");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //DateTime dt = DateTime.ParseExact(TextBox1.Text, "MM/dd/yyyy", CultureInfo.InvariantCulture);
        DateTime tddt = DateTime.Now.Date;
        if (TextBox1.Text.Length == 10 || TextBox1.Text.Length == 9 || TextBox1.Text.Length == 8)
        {
            if (TextBox1.Text == DateTime.Now.ToShortDateString())
            {
                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                TimeSpan tm = DateTime.Now.TimeOfDay;

                string q = "select slotid, CONVERT(varchar(15),CAST(slotname AS TIME),100)as slotname from addtime where slotname>@tm";

                mycomm = new SqlCommand(q, myconn);
                mycomm.Parameters.AddWithValue("@tm", tm);

                myconn.Open();
                SqlDataReader myreader;

                myreader = mycomm.ExecuteReader();

                DropDownList3.DataSource = myreader;
                DropDownList3.DataTextField = "slotname";
                DropDownList3.DataValueField = "Slotid";
                DropDownList3.DataBind();
            }
            else
            {
                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                TimeSpan tm = DateTime.Now.TimeOfDay;

                string q = "select slotid, CONVERT(varchar(15),CAST(slotname AS TIME),100)as slotname from addtime";

                mycomm = new SqlCommand(q, myconn);
                mycomm.Parameters.AddWithValue("@tm", tm);

                myconn.Open();
                SqlDataReader myreader;

                myreader = mycomm.ExecuteReader();

                DropDownList3.DataSource = myreader;
                DropDownList3.DataTextField = "slotname";
                DropDownList3.DataValueField = "Slotid";
                DropDownList3.DataBind();
            }

        }
        else
        {
            DropDownList3.Items.Clear();
        }

       
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList5.SelectedIndex > 0)
        {
            Panel4.Visible = true;

            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataReader myreader;
            string q = "select * from addtype where typeid=@tid and cityid=@ctid";

            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@tid", DropDownList5.SelectedValue);
            mycomm.Parameters.AddWithValue("@ctid", DropDownList1.SelectedValue);
            myconn.Open();
            myreader = mycomm.ExecuteReader();

            if (myreader.HasRows)
            {
                myreader.Read();
                Label9.Text = myreader["minbillcharge"].ToString();
                Label10.Text = myreader["freekms"].ToString();
                Label11.Text = myreader["waitingcharges"].ToString();
                Label12.Text = myreader["charge"].ToString();
            }
            else
            {
                Label9.Text = "NA";
                Label10.Text = "NA";
                Label11.Text = "NA";
                Label12.Text = "NA";
            }
            myreader.Close();
            myconn.Close();
        }
        else
        {
            Panel4.Visible = false;
        }
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
    protected void DropDownList5_DataBound(object sender, EventArgs e)
    {
        
            DropDownList5.Items.Insert(0, "Select");
       
    }
}