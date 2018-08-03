using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_OnlinePayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label4.Text = Request.QueryString["Bookingno"];
        Label5.Text = Request.QueryString["totalAmount"];
        Label1.Text = "TOTAL PAYABLE AMOUNT :   RM " + Label5.Text;
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {
            if (DropDownList1.SelectedValue == "PleaseSelect")
            {
                Label3.Text = "* Please select your bank service provider before proceed to login account. Thank You.";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
            }

            if (DropDownList1.SelectedValue == "Maybank")
            {
                Label3.Text = "<img src='~/images/maybank.png'/>" + "</br>";
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
            }

            if (DropDownList1.SelectedValue == "PublicBank")
            {
                Label3.Text = "<img src='~/images/pbebank.jpg'/>" + "</br>";
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
            }

            if (DropDownList1.SelectedValue == "HongLeongBank")
            {
                Label3.Text = "<img src='~/images/hong-leong-bank.gif'/>" + "</br>";
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
            }

            if (DropDownList1.SelectedValue == "RHBBank")
            {
                Label3.Text = "<img src='~/images/rhb.gif'/>" + "</br>";
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
            }

            if (DropDownList1.SelectedValue == "Ambank")
            {
                Label3.Text = "<img src='~/images/ambank.gif'/>" + "</br>";
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
            }

            if (DropDownList1.SelectedValue == "CIMBBank")
            {
                Label2.Text = "   --------------------------------------------------------------------" + "</br>";
                Label3.Text = " " + "<img src='~/images/cimb.gif'/>" + "</br>";
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
            }
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "wenghong" && TextBox2.Text == "12345678")
        {
            Response.Redirect("OnlinePayment2.aspx?Bookingno=" + Label4.Text + "&Totalamount=" + Label5.Text);
        }

    }
}