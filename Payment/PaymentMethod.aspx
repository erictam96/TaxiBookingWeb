<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="PaymentMethod.aspx.cs" Inherits="Payment_PaymentMethod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <%-- <style type="text/css">
        #form1 {
            width: 550px;
            height: 335px;
        }
        .auto-style2 {
            width: 561px;
            color: red;
            height: 24px;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            height: 104px;
        }
        .auto-style5 {
            width: 548px;
            height: 56px;
        }
        .auto-style6 {
            font-size: x-small;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            height: 104px;
            width: 257px;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
            width: 292px;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            height: 225px;
            width: 541px;
        }
        .auto-style13 {
            height: 23px;
            width: 164px;
            text-align: left;
        }
        </style>--%>
 </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="auto-style12">
                <span class="auto-style11">PAYMENT SUMMARY &amp; CHECKOUT<br />
                </span>
                <br />
                BOOKING NO :
                <asp:Label ID="Label2" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE &amp; TIME :
                <asp:Label ID="Label15" runat="server" Enabled="False"></asp:Label>
                <br />
                <br />
                <table style="width: 472px" id="table1" border="1">
                    <tr>
                        <th class="auto-style10">&nbsp;&nbsp; DESCRIPTION</th>
                        <th class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AMOUNT (RM)</th>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;&nbsp; FARE AMOUNT :</td>
                        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Label ID="Label10" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;&nbsp; GST:</td>
                        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;Included 6% GST</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;&nbsp; DISCOUNT :</td>
                        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; None</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;&nbsp; TOTAL PAYABLE AMOUNT :</td>
                        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Label ID="Label13" runat="server"></asp:Label>
                        &nbsp;</td>
                    </tr>
                    </table>
                <br />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="auto-style2"><span class="auto-style3">* Please confirm above total payable amount are correct and proceed to select your 
                <br />
                payment method by click below image button.</span></td>
        </tr>
    </table>
    <table style="width: 550px">
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" style="text-align: center" Height="58px" ImageUrl="~/images/onlinebanking1.jpg" OnClick="ImageButton1_Click"/>
                <br />
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="58px" Width="178px" ImageUrl="~/images/creditcard.png" OnClick="ImageButton2_Click"/>
            &nbsp;
                <br />
&nbsp;</td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="auto-style5">
                <br />
                <span class="auto-style6">
                <br />
                </span><span class="auto-style7">FOR CREDIT CARD PAYMENT, WE ACCEPT</span>&nbsp;
                <asp:Image ID="Image3" runat="server" Height="16px" Width="119px" ImageUrl="~/images/CreditCardLogos.jpg" />
                <br />
                <span class="auto-style7">NO ADDITIONAL CHARGE FOR CREDIT CARD PAYMENT. CASH BACK FOR MAYBANK VISA 
                USER, 
                <br />
                T&amp;C APPLIED.</span></td>
        </tr>
    </table>
</asp:Content>
