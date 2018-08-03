<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addtimeslot.aspx.cs" Inherits="addtimeslot" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4">
                <h2>
                Add Time Slot</h2>
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <strong>Time Slot</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <cc1:MaskedEditExtender ID="TextBox1_MaskedEditExtender" runat="server" 
                    AcceptAMPM="True" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99:99" MaskType="Time" TargetControlID="TextBox1">
                </cc1:MaskedEditExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                Press A or P Button to change between AM and PM</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Time" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

