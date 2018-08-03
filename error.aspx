<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            font-size: x-large;
        }
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: medium;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td align="center">
                <strong>
                <span class="style4">Authorization Error! Login is required!<br />
                </span></strong>
                <span class="auto-style1">Redirecting to login page in 3 seconds...</span><a href="login.aspx"><span class="auto-style2">Click me!</span></a><br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="423px" ImageUrl="~/images/error.png" Width="453px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

