<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  CodeFile="OnlinePayment.aspx.cs" Inherits="Payment_OnlinePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
        <tr>
            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="TOTAL PAYABLE AMOUNT :   RM ---- . --" style="font-size: x-large"></asp:Label>
            </td>
    </table>
        <br />
    <table>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BANK SERVICE PROVIDER&nbsp; </td>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="34px" Width="143px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                    <asp:ListItem Value="PleaseSelect">Please Select</asp:ListItem>
                    <asp:ListItem>Maybank</asp:ListItem>
                    <asp:ListItem Value="PublicBank">Public Bank</asp:ListItem>
                    <asp:ListItem Value="HongLeongBank">Hong Leong Bank</asp:ListItem>
                    <asp:ListItem Value="RHBBank">RHB Bank</asp:ListItem>
                    <asp:ListItem Value="Ambank">Ambank</asp:ListItem>
                    <asp:ListItem Value="CIMBBank">CIMB Bank</asp:ListItem>
                </asp:DropDownList>
            &nbsp;</td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="   --------------------------------------------------------------------------"></asp:Label>
                &nbsp;&nbsp;<br />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" style="font-size: x-small">* Please select your bank service provider before proceed to login account. Thank You.</asp:Label>
                </td>
        </tr>
    </table>
    <table style="height: 111px; width: 470px">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;USER ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style12" >
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="142px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter User ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Enabled="False" Width="142px" style="margin-bottom: 0px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
            &nbsp;<asp:Button ID="Button3" runat="server" Text="Cancel" BorderStyle="Solid" Height="30px" PostBackUrl="~/Payment/PaymentMethod.aspx" CausesValidation="False"/>
&nbsp;<asp:Button ID="Button2" runat="server" Text="Login" BorderStyle="Solid" Height="30px" Width="60px" OnClick="Button2_Click1"/>
                </td>
        </tr>
    </table>
        <table>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="The following problems have been encountered" ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
        </table>
</asp:Content>
