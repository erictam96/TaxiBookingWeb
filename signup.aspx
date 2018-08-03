<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 219px;
    }
    .style4
    {
        width: 246px;
    }
    .style5
    {
        width: 219px;
        font-weight: bold;
    }
        .style6
        {
            width: 237px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3">
            <h2>
                Sign Up</h2>
        </td>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            Name</td>
        <td class="style4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
        </td>
        <td align="center" rowspan="8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            Address</td>
        <td class="style4">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            City</td>
        <td class="style4">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            State</td>
        <td class="style4">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            Phone</td>
        <td class="style4">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            Email ID(Username)</td>
        <td class="style4">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Please enter in proper format" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Password</td>
        <td class="style4">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Confirm Password</td>
        <td class="style4">
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox8" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                ErrorMessage="Password doesn't match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            <asp:Button ID="Button1" runat="server" Text="Sign Up" 
                onclick="Button1_Click" />
        </td>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

