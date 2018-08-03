<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thanks.aspx.cs" Inherits="thanx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: xx-large;
        }
    .auto-style1 {
        font-size: medium;
    }
    .auto-style2 {
        font-size: small;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" width="100%">
        <tr>
            <td align="center" class="style3">
                <strong>
                <br />
                Thanks for signing up.<br />
                <span class="auto-style1">Redirecting to login in 3 seconds...</span></strong><asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" ForeColor="#0000CC" NavigateUrl="~/login.aspx">Click here!</asp:HyperLink>
                <strong>
                <br />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

