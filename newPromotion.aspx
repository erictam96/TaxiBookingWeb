<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newPromotion.aspx.cs" Inherits="newPromotion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 286px;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <span class="auto-style2">Create New Promotion<br />
        </span>&nbsp;<table style="width:100%;">
            <tr>
                <td class="auto-style1">Promotion Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
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
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
               
            </tr>

            <tr>
                <td class="auto-style1">status:</td>
                <td>
                    <asp:DropDownList ID="status" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>inactive</asp:ListItem>
                    </asp:DropDownList>
                </td>
               
            </tr>
        </table>
    
        <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create" />
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
    
</asp:Content>