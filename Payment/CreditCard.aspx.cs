using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 

public partial class Payment_CreditCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Request.QueryString["bookingNo"];
        Label1.Text = "RM " + Request.QueryString["tpAmount"];
        Label2.Text = Request.QueryString["bank"];
        Label3.Text = Request.QueryString["creditcard"];
        Label8.Text = Request.QueryString["cardholderName"];
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}