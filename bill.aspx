<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
            width: 219px;
            font-weight: bold;
        }
        .style6
        {
            width: 228px;
        }
        .style7
        {
            width: 228px;
            font-weight: bold;
        }
        .style8
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4">
                <h2>
                    Generate Bill</h2>
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Booking ID</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Traveller Name</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Traveller Phone</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Total Distance (in KMs)</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox1">
                </asp:FilteredTextBoxExtender>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Waiting Time (if Any)</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server">0</asp:TextBox>
                <asp:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox2">
                </asp:FilteredTextBoxExtender>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Generate Bill" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="style3">
                        <tr>
                            <td class="style7">
                                Per KM Charge</td>
                            <td>
                                RM.
                                <asp:Label ID="Label11" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Free KMs</td>
                            <td>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                                &nbsp;KMs</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Chargable KMs</td>
                            <td>
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                                &nbsp;KMs</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Waiting Charges</td>
                            <td>
                                RM.
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Chargable Waiting Charges</td>
                            <td>
                                RM.
                                <asp:Label ID="Label10" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Minimum Bill</td>
                            <td>
                                RM.
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Total Bill</td>
                            <td>
                                RM.
                                <asp:Label ID="Label9" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                    Text="Confirm Billing" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label12" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

