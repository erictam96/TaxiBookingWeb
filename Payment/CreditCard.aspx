<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="CreditCard.aspx.cs" Inherits="Payment_CreditCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="auto-style28">PAY WITH CREDIT CARD</span> <span class="auto-style27">- </span> <span class="auto-style29">the safer, easier way to pay<br />
        <br />
        </span> <span class="auto-style36">BOOKING NO&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server"></asp:Label>
        </span> <span class="auto-style29">
                <span class="auto-style10">&nbsp;</span><br />
        </span>
    <table>
        <tr>
            <td>
        <table style="height: 49px; width: 454px; font-size: small;">
            <tr>
                <td class="auto-style1">You have choose credit card as your payment method. Please enter your card details into the form below and click &quot;pay&quot; to complete your purchase.</td>
            </tr>
        </table>

            </td>
        </tr>
    </table>

        <table style="height: 153px; width: 478px">
            <tr>
            <td class="auto-style31">TOTAL PAYABLE AMOUNT </td>
            <td class="auto-style26">
                <asp:Label ID="Label1" runat="server" style="font-size: medium"></asp:Label>
                </td>
        </tr>
            <tr>
            <td class="auto-style31">BANK</td>
            <td class="auto-style26">
                <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="auto-style35">
                    &nbsp;</td>
        </tr>
            <tr>
            <td class="auto-style33">CREDIT CARD NO</td>
            <td class="auto-style34">
                <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="auto-style35">
                    &nbsp;</td>
        </tr>
            <tr>
            <td class="auto-style31">CARD HOLDER NAME</td>
            <td class="auto-style26">
                <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
                <td class="auto-style35">
                    &nbsp;</td>
        </tr>
            <tr>
            <td class="auto-style31">EXPIRE DATE</td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox18" runat="server" Width="46px" style="margin-left: 0px"></asp:TextBox>
                &nbsp;<strong>/ </strong>&nbsp;<asp:TextBox ID="TextBox20" runat="server" Width="47px"></asp:TextBox>
&nbsp;month / year&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox18" ErrorMessage="Please Enter Date of Expire" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox20" ErrorMessage="Please Enter Year of Expire" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox18" ErrorMessage="Invalid Format, Date Only Accept 2 Digits No" ForeColor="Red" ValidationExpression="&quot;\d{2}&quot;/">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox20" ErrorMessage="Invalid Format, Date of Expire Only 2 Digits" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style35" aria-autocomplete="none">
                    &nbsp;</td>
            
        </tr>
            <tr>
            <td class="auto-style31">SECURITY CODE (CVV)</td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox19" runat="server" Width="46px"></asp:TextBox>
                &nbsp;(3 Digits Numeric)&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox19" ErrorMessage="Please Enter Security Code" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox19" ErrorMessage="Security Code 3 Digits Only" ForeColor="Red" ValidationExpression="&quot;\d{3}&quot;/">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style35">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">
                &nbsp;</td>
            <td class="auto-style32">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/cvv.gif" />
                <br />
                <span class="auto-style29">The 3 digits after the card number on the signature panel of your card</span></td>
        </tr>
    </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Text="Cancel" Height="30px" PostBackUrl="~/Payment/PaymentMethod.aspx" CausesValidation="False" />
        &nbsp;<asp:Button ID="Button2" runat="server" BorderStyle="Solid" Text="Pay" Height="30px" Width="60px" OnClick="Button2_Click"  />
        <br />
    <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="The following problems have been encountered " />
        <br />
        <br />
</asp:Content>