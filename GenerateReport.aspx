<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GenerateReport.aspx.cs" Inherits="GenerateReport" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000099" NavigateUrl="~/CustReport.aspx">Customer Report</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="#000099" NavigateUrl="~/DriverReport.aspx">Driver Report</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#000099" NavigateUrl="~/BookingReport.aspx">Booking Report</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="#000099" NavigateUrl="~/PickupReport.aspx">Pickup Report</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="#000099" NavigateUrl="~/BillingReport.aspx">Monthly Report</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="#000099">HyperLink</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#000099" NavigateUrl="~/PromotionReport.aspx">Promotion Report</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="#000099">HyperLink</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 234px;
        }
        .auto-style2 {
            width: 234px;
            font-size: medium;
            color: #000099;
        }
    </style>
</asp:Content>


