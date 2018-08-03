using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad"] == null)
        {
            Response.Redirect("error.aspx");
        }
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("addtype.aspx");
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("addcity.aspx");
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("addlocality.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adddriver.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("viewbills.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("viewbookings.aspx");
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("assigncab.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("listofmemebers.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("addtimeslot.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("newPromotion.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("retrivePromo.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GenerateReport.aspx");
    }
}