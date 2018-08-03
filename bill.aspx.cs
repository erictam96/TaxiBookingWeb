using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class bill : System.Web.UI.Page
{
    string ct;
    string cabid;
    string typeid;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from booking where bookingid=@bkid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            myreader.Read();
            Label2.Text = myreader["bookingid"].ToString();
            Label3.Text = myreader["travellername"].ToString();
            Label4.Text = myreader["travellerphone"].ToString();
            ct = myreader["pickupcity"].ToString();
            typeid = myreader["typeid"].ToString();
        }
        myreader.Close();
        myreader.Dispose();
        myconn.Close();

        q = "select * from assigncabtobooking where bookingid=@bkid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        myconn.Open();
        myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            myreader.Read();
            cabid = myreader["drivrid"].ToString();
        }
        myreader.Close();
        myreader.Dispose();
        myconn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        int minbill=0, fkms=0, wchg=0, perkmchrg=0;
        
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from addtype where cityid=@ctid and typeid=@tid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@ctid", ct);
        mycomm.Parameters.AddWithValue("@tid", typeid);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            myreader.Read();
            minbill = Convert.ToInt32(myreader["minbillcharge"].ToString());
            fkms = Convert.ToInt32(myreader["freekms"].ToString());
            wchg = Convert.ToInt32(myreader["waitingcharges"].ToString());
            perkmchrg = Convert.ToInt32(myreader["charge"].ToString());
        }
        myreader.Close();
        myreader.Dispose();
        int totalkms = Convert.ToInt32(TextBox1.Text);
        int chrkms = totalkms - fkms;
        if (chrkms > 0)
        {
            Label6.Text = chrkms.ToString();
        }
        else
        {
            Label6.Text = "0";
        }
        Label11.Text = perkmchrg.ToString();
        Label5.Text = fkms.ToString();
        Label7.Text = wchg.ToString();
        Label8.Text = minbill.ToString();
        Label10.Text = (Convert.ToInt32(TextBox2.Text) * wchg).ToString();

        int nchrgkms = Convert.ToInt32(Label6.Text);

        int tbill = minbill + (nchrgkms * perkmchrg) + (Convert.ToInt32(TextBox2.Text) * wchg);
        Label9.Text = tbill.ToString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into billing values(@bkid,@tbill,@bdt,@cabid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        mycomm.Parameters.AddWithValue("@tbill",Label9.Text);
        mycomm.Parameters.AddWithValue("@bdt", DateTime.Now);
        mycomm.Parameters.AddWithValue("@cabid", cabid);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();

        q = "select amount from addcomm";
        mycomm = new SqlCommand(q, myconn);
        myconn.Open();
        double commper = Convert.ToDouble(mycomm.ExecuteScalar().ToString());
        myconn.Close();

        double commamt = commper * Convert.ToDouble(Label9.Text)/100;

        q = "insert into commiss values(@bkid,@comm,@dt,@did,@tbill)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        mycomm.Parameters.AddWithValue("@comm", commamt);
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now.ToShortDateString());
        mycomm.Parameters.AddWithValue("@did", Session["un"].ToString());
        mycomm.Parameters.AddWithValue("@tbill", Label9.Text);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();

        q = "delete from assigncabtobooking where bookingid=@bkid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();

        q = "update adddriver set status='Free' where driverid=@carid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@carid", cabid);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label12.Text = "Bill generated successfully";

        q = "update booking set status='Completed' where bookingid=@bkid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bkid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label12.Text = "Bill generated successfully";


    }
}