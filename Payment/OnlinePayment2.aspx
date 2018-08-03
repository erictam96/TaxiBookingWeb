<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="OnlinePayment2.aspx.cs" Inherits="Payment_OnlinePayment2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 597px">
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="auto-style8">
                <span class="auto-style10">System Date &amp; Time : </span>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style10"></asp:Label>
                <br />
                <br />
                NEW 3rd PARTY ACCOUNT TRANSFER<br />
                <span style="color: rgb(46, 46, 46); font-family: Arial, Helvetica, sans-serif; font-size: 11px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 14.3px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Make a one-off transfer to another bank Savings or Current Account<br />
                </span></td>
        </tr>
    </table>
    <table style="width: 474px">
        <tr>
            <td class="auto-style3">BOOKING NUMBER</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">TOTAL PAYABLE AMOUNT </td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style3">FROM ACCOUNT</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Third Party Account" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">TO THIRD PARTY ACCOUNT</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Third Party Account" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">RECIPIENT NAME</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Recipient Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">PAYMENT DETAILS</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Payment Details" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
        <br />
        <table border="0" cellpadding="4" cellspacing="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; line-height: 14.3px; color: rgb(46, 46, 46); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: transparent;">
            <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                    <td colspan="2" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: transparent;">Notes:</b></td>
                </tr>
                <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">1.</td>
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">Default transaction limit is<span class="Apple-converted-space">&nbsp;</span><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: transparent;">RM3,000 per day</b>.</td>
                </tr>
                <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">2.</td>
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">To increase your transaction limit, please select Transaction Limit Maintenance.</td>
                </tr>
                <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">3.</td>
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">The maximum limit for residents is<span class="Apple-converted-space">&nbsp;</span><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: transparent;">RM30,000 each</b><span class="Apple-converted-space">&nbsp;</span>for 3rd party transfers and interbank GIRO transfers.</td>
                </tr>
            </tbody>
        </table>
        <table border="0" cellpadding="4" cellspacing="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; line-height: 14.3px; color: rgb(46, 46, 46); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: transparent;">
            <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">4.</td>
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">The maximum<span class="Apple-converted-space">&nbsp;</span><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: transparent;">combined limit</b><span class="Apple-converted-space">&nbsp;</span>for non-residents is<span class="Apple-converted-space">&nbsp;</span><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: transparent;">RM10,000</b><span class="Apple-converted-space">&nbsp;</span>for both 3rd party transfers and interbank GIRO transfer.</td>
                </tr>
                <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">5.</td>
                    <td style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: top; border-spacing: 0px; border-collapse: collapse; line-height: 1.3; background: transparent;">There is no transfer limit to SMF accounts.</td>
                </tr>
            </tbody>
        </table>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="30px" PostBackUrl="~/Payment/OnlinePayment.aspx" Text="Logout" Width="77px" CausesValidation="False"/>
&nbsp;
        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" Height="30px" Text="Pay" Width="77px"/>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="The following problems have been encountered" ShowMessageBox="True" ShowSummary="False" />
    </asp:Content>