<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewbookings.aspx.cs" Inherits="viewbookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 114px;
            font-weight: bold;
        }
        .style5
        {
            width: 178px;
        }
        .style6
        {
            width: 110px;
        }
        .style7
        {
            width: 262px;
        }
        .style8
        {
            width: 111px;
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style3">
                    <tr>
                        <td class="style4" valign="top">
                            Choose City</td>
                        <td>
                            <table class="style3">
                                <tr>
                                    <td class="style5" valign="top">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [CityID], [CityName] FROM [addcity]">
                            </asp:SqlDataSource>
                                    </td>
                                    <td class="style6" valign="top">
                                        <strong>Choose Date</strong></td>
                                    <td class="style7">
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                            BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                                            Width="200px">
                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                            <NextPrevStyle VerticalAlign="Bottom" />
                                            <OtherMonthDayStyle ForeColor="#808080" />
                                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                            <SelectorStyle BackColor="#CCCCCC" />
                                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                            <TodayDayStyle ForeColor="Black" />
                                            <WeekendDayStyle BackColor="#FFFFCC" />
                                        </asp:Calendar>
                                    </td>
                                    <td class="style8" valign="top">
                                        <strong>Choose Status</strong></td>
                                    <td valign="top">
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem>Pending</asp:ListItem>
                                            <asp:ListItem>Driver Assigned</asp:ListItem>
                                            <asp:ListItem>Completed</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" valign="top">
                            Bookings</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="BookingID" DataSourceID="SqlDataSource1" Width="645px">
                                <Columns>
                                    <asp:BoundField DataField="TypeName" HeaderText="TypeName" 
                                        SortExpression="TypeName" />
                                    <asp:BoundField DataField="PickupDate" DataFormatString="{0:d}" 
                                        HeaderText="PickupDate" SortExpression="PickupDate" />
                                    <asp:BoundField DataField="SlotName" DataFormatString="{0:T}" 
                                        HeaderText="Pick Up Time" SortExpression="SlotName" />
                                    <asp:BoundField DataField="TravellerName" HeaderText="TravellerName" 
                                        SortExpression="TravellerName" />
                                    <asp:BoundField DataField="TravellerPhone" HeaderText="TravellerPhone" 
                                        SortExpression="TravellerPhone" />
                                    <asp:BoundField DataField="LocalityName" HeaderText="LocalityName" 
                                        SortExpression="LocalityName" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:HyperLinkField DataNavigateUrlFields="bookingid,pickupcity,typeid" 
                                        DataNavigateUrlFormatString="assigncab.aspx?bkid={0}&amp;ctid={1}&amp;tid={2}" 
                                        HeaderText="Assign Cab" Text="Assign Cab">
                                    <ControlStyle ForeColor="Black" />
                                    </asp:HyperLinkField>
                                </Columns>
                            </asp:GridView>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT booking.Status, booking.BookingID, booking.PickupDate, booking.PicupTime, booking.TravellerName, booking.TravellerPhone, addlocality.LocalityName, addtime.SlotName, booking.PickupCity, addtype.TypeName, booking.TypeID FROM booking INNER JOIN addtime ON booking.PicupTime = addtime.SlotID INNER JOIN addlocality ON booking.PickupLocality = addlocality.LocID INNER JOIN addtype ON booking.TypeID = addtype.TypeID WHERE (booking.PickupCity = @PickupCity) AND (booking.Status = @st) AND (booking.PickupDate = @pkdt)" 
                                onselected="SqlDataSource1_Selected">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="PickupCity" 
                                        PropertyName="SelectedValue" Type="Decimal" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="st" 
                                        PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="Calendar1" Name="pkdt" 
                                        PropertyName="SelectedDate" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
&nbsp;</td>
        </tr>
    </table>
</asp:Content>

