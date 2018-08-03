using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["n"] == null)
        {
            Label1.Text = "Guest";
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
        }
        else
        {
            Label1.Text = Session["n"].ToString();
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = true;
            LinkButton4.Visible = true;
        }

        if (Session["ad"] != null)
        {
            LinkButton4.Visible = false;

            LinkButton5.Visible = true;

        }
        else
        {
            LinkButton5.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("mybookings.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpanel.aspx");
    }
}
