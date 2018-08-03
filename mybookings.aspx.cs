using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mybookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (GridViewRow mygvr in GridView1.Rows)
        {
            if (mygvr.Cells[8].Text != "Driver Assigned")
            {
                mygvr.Cells[9].Text = "NA";
            }
  
            
        }
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "No Bookings";
        }
        else
        {
            Label2.Text="";
        }
    }
}