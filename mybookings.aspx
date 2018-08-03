<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mybookings.aspx.cs" Inherits="mybookings" %>

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
                Booking History</h2>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="BookingID" DataSourceID="SqlDataSource1" Width="100%">
                <Columns>
                    <asp:BoundField DataField="BookingID" HeaderText="BookingID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="BookingID" />
                    <asp:BoundField DataField="PickupDate" HeaderText="PickupDate" 
                        SortExpression="PickupDate" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="CityName" HeaderText="CityName" 
                        SortExpression="CityName" />
                    <asp:BoundField DataField="LocalityName" HeaderText="LocalityName" 
                        SortExpression="LocalityName" />
                    <asp:BoundField DataField="SlotName" HeaderText="PickUp Time" 
                        SortExpression="SlotName" DataFormatString="{0:t}" />
                    <asp:BoundField DataField="TravellerName" HeaderText="TravellerName" 
                        SortExpression="TravellerName" />
                    <asp:BoundField DataField="TravellerPhone" HeaderText="TravellerPhone" 
                        SortExpression="TravellerPhone" />
                    <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" 
                        SortExpression="BookingDate" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
                    <asp:HyperLinkField DataNavigateUrlFields="bookingid" 
                        DataNavigateUrlFormatString="driverdetails.aspx?bkid={0}" 
                        HeaderText="Driver Details" Text="Details">
                    <ControlStyle ForeColor="Black" />
                    </asp:HyperLinkField>
                </Columns>
            </asp:GridView>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                onselected="SqlDataSource1_Selected" 
                SelectCommand="SELECT booking.BookingID, booking.PickupDate, addcity.CityName, addlocality.LocalityName, addtime.SlotName, booking.TravellerName, booking.TravellerPhone, booking.BookingDate, booking.Status FROM booking INNER JOIN addlocality ON booking.PickupLocality = addlocality.LocID INNER JOIN addtime ON booking.PicupTime = addtime.SlotID INNER JOIN addcity ON booking.PickupCity = addcity.CityID WHERE (booking.BookingBy = @un)">
                <SelectParameters>
                    <asp:SessionParameter Name="un" SessionField="un" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

