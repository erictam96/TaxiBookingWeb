<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Email" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:Label ID="Label1" runat="server" Text="Driver's Email:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDriver" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" Visible="False">chash jin</asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Receipient:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Subject:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Description:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDescription" runat="server" Height="147px" TextMode="MultiLine" Width="198px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="BtnSend" runat="server" OnClick="Button1_Click" Text="Send" />
        <br />
   </asp:Content> 
