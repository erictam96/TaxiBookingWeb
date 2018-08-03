using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class showbookingno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from booking where bookingby=@un order by bookingdate desc";
        mycomm = new SqlCommand(q, myconn);

        mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
        myconn.Open();
        SqlDataReader myreader;

        myreader = mycomm.ExecuteReader();

        if (myreader.HasRows)
        {
            myreader.Read();
            Label2.Text = myreader["bookingid"].ToString();
        }
        myreader.Close();
        myreader.Dispose();
    }
}