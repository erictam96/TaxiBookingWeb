using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Billing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BookingNo.Text = Request.QueryString["BookingID"];
        totalAmount.Text = Request.QueryString["Totalamount"];

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataClasses1DataContext db1 = new DataClasses1DataContext();
        Billing billing = new Billing();
        billing.CreditCardNo = CreditNo.Text;
        billing.Bank = Banklist.SelectedValue.ToString();
        billing.CardHolderName = cardHolderName.Text;
        billing.BillingAddress1 = Address1.Text;
        billing.BillingAddress2 = Address2.Text;
        billing.Town = Town.Text;
        billing.Country = Countrylist.SelectedValue.ToString();
        billing.Postcode = Postcode.Text;
        billing.ContactNo = Contact.Text;
        billing.Email = Email.Text;
        billing.BookingNo = BookingNo.Text;

        db1.Billings.InsertOnSubmit(billing);
        db1.SubmitChanges();

        Response.Redirect("CreditCard.aspx?bookingNo=" + BookingNo.Text + "&bank=" + Banklist.SelectedValue.ToString() + "&creditcard=" + CreditNo.Text + "&cardholderName=" + cardHolderName.Text + "&tpAmount=" + totalAmount.Text);
    }
}