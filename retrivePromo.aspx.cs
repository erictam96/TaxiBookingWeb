using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class retrivePromo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection conPromotion;
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conPromotion = new SqlConnection(connStr);
        conPromotion.Open();

        /*Step 2: Create Sql Insert statement and Sql Insert Object*/
        string strRetrieve;

        SqlCommand cmdRetrieve;

        strRetrieve = "Select * From promotion Where promoName = @promoName";


        cmdRetrieve = new SqlCommand(strRetrieve, conPromotion);
        cmdRetrieve.Parameters.AddWithValue("@promoName", txtName.Text);

        /*Step 3: Execute command to retrieve data*/
        SqlDataReader dtr;
        //SqlDataReader read;
        dtr = cmdRetrieve.ExecuteReader();

        /*Step 4: Display result set from the query*/
        if (dtr.HasRows)
        {
            if (dtr.Read())
            {
                txtName.Text = dtr["promoName"].ToString();
                txtDescription.Text = dtr["promoDescription"].ToString();
                txtDate.Text = dtr["date"].ToString();
                txtDate.Text = dtr["date"].ToString();
                txtStatus.Text = dtr["status"].ToString();

            }
        }
        else
        {
  
            txtName.Text = "NIL";
            txtDescription.Text = "NIL";
            txtDate.Text = "NIL";
            txtDate.Text = "NIL";
            txtStatus.Text = "NIL";
        }

        /*Step 5: Close SqlReader and Database connection*/
        conPromotion.Close();
        dtr.Close();
        

       

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        /*Step 1: Create and Open Connection*/
        SqlConnection conSignup;
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conSignup = new SqlConnection(connStr);
        conSignup.Open();


        /*Step 2: Create Sql Insert statement and Sql Insert Object*/
        string strRetrieve;

        SqlCommand cmdRetrieve;

        strRetrieve = "Select Username From signup ";


        cmdRetrieve = new SqlCommand(strRetrieve, conSignup);

        /*Step 3: Execute command to retrieve data*/
        SqlDataReader dtr;
        //SqlDataReader read;
        dtr = cmdRetrieve.ExecuteReader();

        /*Step 4: Display result set from the query*/
        while (dtr.HasRows)
        {
            if (dtr.Read())
            {
                string sender_email = "jinnyboy0628@gmail.com";
                string password = "chash jin";

                string to = dtr["Username"].ToString();

                MailMessage mm = new MailMessage(sender_email, to);                                //sender email, receiver
                mm.Subject = txtName.Text;           //email subject
                mm.Body = txtDescription.Text;                 //body content

                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential(sender_email, password);     //Sender email n password
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                ClientScript.RegisterStartupScript(GetType(), "(alert);", "alert('Email sent.');", true);
            }

        }
    }
}