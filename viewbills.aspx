<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewbills.aspx.cs" Inherits="viewbills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 244px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4">
                <h2>
                    View Bills</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <strong>Choose Date</strong></td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" Width="288px"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <strong>Bills Generated</strong></td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="BillingID" DataSourceID="SqlDataSource1" Width="521px">
                    <Columns>
                        <asp:BoundField DataField="BillingID" HeaderText="BillingID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="BillingID" />
                        <asp:HyperLinkField DataNavigateUrlFields="bookingid" 
                            DataNavigateUrlFormatString="bkdetails.aspx?bkid={0}" DataTextField="BookingID" 
                            HeaderText="Booking ID">
                        <ControlStyle ForeColor="Blue" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="TotalBill" HeaderText="TotalBill" 
                            SortExpression="TotalBill" />
                        <asp:BoundField DataField="BillDate" HeaderText="BillDate" 
                            SortExpression="BillDate" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    onselected="SqlDataSource1_Selected" 
                    SelectCommand="SELECT [BillingID], [BookingID], [TotalBill], [BillDate], [CabID] FROM [billing] WHERE ([BillDate] = @BillDate) ORDER BY [BillDate] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="BillDate" 
                            PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

