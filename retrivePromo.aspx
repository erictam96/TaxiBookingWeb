<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="retrivePromo.aspx.cs" Inherits="retrivePromo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 286px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Promotion Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">Promotion Description:</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style1">Date:</td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                </td>
               
            </tr>

            <tr>
                <td class="auto-style1">status:</td>
                <td>
                    <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                </td>
               
            </tr>
        </table>
    
        <p>
            <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send" />
        </p>
</asp:Content>
