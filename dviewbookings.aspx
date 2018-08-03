<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dviewbookings.aspx.cs" Inherits="dviewbookings" %>

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
                View Bookings</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="704px" ForeColor="Blue">
                    <Columns>
                        <asp:BoundField DataField="PickupDate" DataFormatString="{0:d}" 
                            HeaderText="Pickup Date" SortExpression="PickupDate" />
                        <asp:BoundField DataField="SlotName" DataFormatString="{0:T}" 
                            HeaderText="Pick Up Time" SortExpression="SlotName" />
                        <asp:BoundField DataField="TravellerName" HeaderText="TravellerName" 
                            SortExpression="TravellerName" />
                        <asp:BoundField DataField="TravellerPhone" HeaderText="TravellerPhone" 
                            SortExpression="TravellerPhone" />
                        <asp:BoundField DataField="CityName" HeaderText="CityName" 
                            SortExpression="CityName" />
                        <asp:BoundField DataField="LocalityName" HeaderText="LocalityName" 
                            SortExpression="LocalityName" />
                        <asp:HyperLinkField DataNavigateUrlFields="bookingid" 
                            DataNavigateUrlFormatString="bill.aspx?bkid={0}" HeaderText="Generate Bill" 
                            Text="Generate Bill">
                        <ControlStyle ForeColor="#000099" />
                        </asp:HyperLinkField>
                        <asp:HyperLinkField HeaderText="Nortified Customer" Text="Send Email" DataNavigateUrlFields="bookingid" DataNavigateUrlFormatString="Email.aspx?bkid={0}" >
                             <ControlStyle ForeColor="#000099" />
                            </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT assigncabtobooking.BookingID, booking.PickupDate, booking.TravellerName, booking.TravellerPhone, addtime.SlotName, addcity.CityName, addlocality.LocalityName FROM booking INNER JOIN assigncabtobooking ON booking.BookingID = assigncabtobooking.BookingID INNER JOIN addcity ON booking.PickupCity = addcity.CityID INNER JOIN addlocality ON booking.PickupLocality = addlocality.LocID INNER JOIN addtime ON booking.PicupTime = addtime.SlotID WHERE (assigncabtobooking.DriverID = @did)" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:SessionParameter Name="did" SessionField="un" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

