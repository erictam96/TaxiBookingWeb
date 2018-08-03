using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage mm = new MailMessage(txtDriver.Text, txtTo.Text);                                //sender email, receiver
        mm.Subject = txtSubject.Text;           //email subject
        mm.Body = txtDescription.Text;                 //body content

        mm.IsBodyHtml = false;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
        NetworkCredential NetworkCred = new NetworkCredential(txtDriver.Text, txtPassword.Text);     //Sender email n password
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(mm);
        ClientScript.RegisterStartupScript(GetType(), "(alert);", "alert('Email sent.');", true);

        txtSubject.Text = "";
        txtDescription.Text = "";

    }
}