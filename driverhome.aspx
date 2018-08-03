<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="driverhome.aspx.cs" Inherits="driverhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td>
                <h3>
                    Welcome Driver</h3>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black" 
                    onclick="LinkButton4_Click">View Bookings</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

