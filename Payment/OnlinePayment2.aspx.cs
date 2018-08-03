using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_OnlinePayment2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = "<img src='header.jpg'/>";
        Label4.Text = DateTime.Now.ToString();
        Label1.Text = Request.QueryString["Bookingno"];
        Label2.Text = "RM " + Request.QueryString["Totalamount"];
    }
}