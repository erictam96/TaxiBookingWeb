<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="driverdetails.aspx.cs" Inherits="driverdetails" %>

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
                <h2>
                    <strong>Driver Details</strong></h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="Username" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Height="261px" Width="284px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:ImageField DataImageUrlField="DriverPic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Picture">
                            <ControlStyle Height="75px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Username" HeaderText="Phone" ReadOnly="True" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="CarNumber" HeaderText="CarNumber" 
                            SortExpression="CarNumber" />
                        <asp:BoundField DataField="CarName" HeaderText="CarName" 
                            SortExpression="CarName" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT adddriver.Name, adddriver.Username, adddriver.DriverPic, adddriver.CarNumber, adddriver.CarName FROM adddriver INNER JOIN assigncabtobooking ON adddriver.DriverID = assigncabtobooking.DrivrID WHERE (assigncabtobooking.BookingID = @bkid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="bkid" QueryStringField="bkid" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

