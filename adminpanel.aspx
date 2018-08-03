<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            border-color:dimgrey;
        }
        .style4
        {
        width: 236px;
        }
        .style5
        {
        width: 260px;
        }
    .auto-style4 {
        width: 236px;
        height: 220px;
            text-align: center;
        }
    .auto-style5 {
        width: 238px;
        height: 220px;
            text-align: center;
        }
    .auto-style6 {
        width: 240px;
        height: 220px;
            text-align: center;
        }
    .auto-style7 {
        height: 220px;
            text-align: center;
        }
    .auto-style21 {
        width: 236px;
        height: 221px;
            text-align: center;
            font-size: 14pt;
        }
        .auto-style22 {
            width: 238px;
            height: 221px;
            text-align: center;
        }
        .auto-style23 {
            width: 240px;
            height: 221px;
            text-align: center;
        }
        .auto-style24 {
            height: 221px;
            text-align: center;
        }
        .auto-style25 {
            font-size: 14pt;
            color: #FFFFFF;
            width: 100%;
            margin-right: 0;
        }
        .auto-style26 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Admin</h1>
&nbsp;<br />
    <table class="auto-style25" border="1" ">
        <tr>
   
            <td class="auto-style5">
                <strong>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/images/city_icon.png" OnClick="ImageButton1_Click1" Width="75px" />
                <br />
                Add City</strong></td>
            <td class="auto-style6">
                <strong>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/images/area_icon.png" OnClick="ImageButton2_Click1" Width="75px" />
                <br />
                Add Area</strong></td>
            <td class="auto-style7">
                <strong>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="70px" ImageUrl="~/images/driver_icon.png" OnClick="ImageButton3_Click" Width="75px" />
                <br />
                Add Driver</strong></td>
                <td class="auto-style26">
                <strong>
                <asp:ImageButton ID="ibAddType" runat="server" Height="70px" ImageUrl="~/images/add_icon.png" OnClick="ImageButton1_Click" Width="75px" />
                    <br />
                Add type</strong></td>
           
        </tr>
        <tr>
            <td class="auto-style21">
                <strong>
                <br />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="70px" ImageUrl="~/images/bill_icon.png" OnClick="ImageButton4_Click" Width="75px" />
                <br />
                View Bill<br />
                </strong>
            </td>
            <td class="auto-style22"><strong>
                <asp:ImageButton ID="ImageButton5" runat="server" Height="70px" ImageUrl="~/images/booking_icon.png" OnClick="ImageButton5_Click" Width="75px" />
                <br />
                View Booking</strong></td>
            <td class="auto-style23">
                <strong>
                <asp:ImageButton ID="ImageButton6" runat="server" Height="70px" ImageUrl="~/images/cab_icon.png" OnClick="ImageButton6_Click" Width="75px" />
                <br />
                Assign Cab to Booking</strong></td>
            <td class="auto-style24">
                <strong>
                <asp:ImageButton ID="ImageButton7" runat="server" Height="70px" ImageUrl="~/images/cust_icon.jpg" OnClick="ImageButton7_Click" Width="75px" />
                <br />
                Customer List</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:ImageButton ID="ImageButton8" runat="server" Height="70px" ImageUrl="~/images/time_icon.png" OnClick="ImageButton8_Click" Width="75px" />
                <br />
                <strong>Add Time Slot</strong></td>
            <td class="auto-style5"><strong>&nbsp;
                <asp:ImageButton ID="ImageButton9" runat="server" Height="70px" ImageUrl="~/images/add_icon.png" OnClick="ImageButton9_Click" Width="75px" />
                <br />
                Create Promotion</strong></td>
            <td class="auto-style6">
                <strong>
                <asp:ImageButton ID="ImageButton10" runat="server" Height="70px" ImageUrl="~/images/promotion-icon.png" OnClick="ImageButton10_Click" Width="75px" />
                <br />
                Send Promotion</strong></td>
            <td class="auto-style7">
                <strong>
                <asp:ImageButton ID="ImageButton11" runat="server" Height="70px" ImageUrl="~/images/report_icon.png" OnClick="ImageButton11_Click" Width="75px" />
                <br />
                Generate Report</strong></td>
        </tr>
        </table>
</asp:Content>

