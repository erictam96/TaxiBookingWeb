<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showbookingno.aspx.cs" Inherits="showbookingno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
        .style4
        {
            font-size: x-large;
            font-family: Calibri;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
    <tr>
        <td align="center" class="style4">
            Thanks for booking taxi on our website. Your booking reference number is
            <asp:Label ID="Label2" runat="server"></asp:Label>
            . You will shortly get call from our driver.<br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="300px" 
                ImageUrl="~/images/many-thanks.jpg" Width="500px" />
        </td>
    </tr>
</table>
</asp:Content>

