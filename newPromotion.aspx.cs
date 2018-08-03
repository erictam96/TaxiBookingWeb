using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class newPromotion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        /*Step 1: Create and Open Connection*/
        System.Data.SqlClient.SqlConnection conPromotion;
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conPromotion= new SqlConnection(connStr);
        conPromotion.Open();

        /*Step 2: Create Sql Insert statement and Sql Insert Object*/
        string strInsert;
        SqlCommand cmdInsert;
        strInsert = "Insert Into promotion (promoName, promoDescription, date, status ) Values (@promoName, @promotionDescription, @date, @status )";

        cmdInsert = new SqlCommand(strInsert, conPromotion);

        cmdInsert.Parameters.AddWithValue("@promoName", txtName.Text);
        cmdInsert.Parameters.AddWithValue("@promotionDescription", txtDescription.Text);
        cmdInsert.Parameters.AddWithValue("@date", Calendar1.SelectedDate);
        cmdInsert.Parameters.AddWithValue("@status", status.SelectedValue);

        /*Step 3: Execute command to insert*/
        int n = cmdInsert.ExecuteNonQuery();

        /*Display insert status*/
        if (n > 0)
            lblDisplay.Text = "New promotion detail added!";
        else
            lblDisplay.Text = "Sorry, insertion failed.";

        /*Step 4: Close database connection*/
        conPromotion.Close();
    }
}