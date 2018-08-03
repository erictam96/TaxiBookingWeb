<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 206px;
        }
        .style4
        {
            width: 206px;
            font-weight: bold;
        }
        .style5
        {
            width: 298px;
        }
    .auto-style1 {
        font-size: 14pt;
        color: #FFFFFF;
        width: 204px;
    }
    .auto-style2 {
        width: 204px;
        font-weight: bold;
    }
    .auto-style3 {
        font-size: 14pt;
        color: #FFFFFF;
        width: 204px;
        height: 51px;
    }
    .auto-style4 {
        width: 298px;
        height: 51px;
    }
    .auto-style5 {
        height: 51px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" width="100%">
        <tr>
            <td class="auto-style1">
                <h2>
                Login</h2>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td align="right">
                <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Black" 
                    onclick="LinkButton6_Click" CausesValidation="False">Driver Login</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Username</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Password</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                </td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" Height="39px" Width="216px" />
            </td>
            <td class="auto-style5">
                </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="style5">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/signup.aspx">Click me to register.</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

