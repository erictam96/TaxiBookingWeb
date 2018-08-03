using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewbookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad"] == null)
        {
            Response.Redirect("error.aspx");
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 2 || DropDownList2.SelectedIndex == 3)
        {
            GridView1.Columns[7].Visible = false;
        }
        else
        {
            GridView1.Columns[7].Visible = true;
        }
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "No bookings";

        }
        else
        {
            Label2.Text = "";
        }
    }
}