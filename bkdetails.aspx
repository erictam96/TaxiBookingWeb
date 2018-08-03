<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bkdetails.aspx.cs" Inherits="bkdetails" %>

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
                    Booking Details</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Height="490px" Width="366px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="PickupDate" HeaderText="PickupDate" 
                            SortExpression="PickupDate" />
                        <asp:BoundField DataField="CityName" HeaderText="CityName" 
                            SortExpression="CityName" />
                        <asp:BoundField DataField="LocalityName" HeaderText="LocalityName" 
                            SortExpression="LocalityName" />
                        <asp:BoundField DataField="SlotName" HeaderText="SlotName" 
                            SortExpression="SlotName" />
                        <asp:BoundField DataField="TravellerName" HeaderText="TravellerName" 
                            SortExpression="TravellerName" />
                        <asp:BoundField DataField="TravellerPhone" HeaderText="TravellerPhone" 
                            SortExpression="TravellerPhone" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT booking.PickupDate, addcity.CityName, addlocality.LocalityName, addtime.SlotName, booking.TravellerName, booking.TravellerPhone, booking.Status FROM booking INNER JOIN addlocality ON booking.PickupLocality = addlocality.LocID INNER JOIN addcity ON booking.PickupCity = addcity.CityID INNER JOIN addtime ON booking.PicupTime = addtime.SlotID WHERE (booking.BookingID = @bkid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="bkid" QueryStringField="bkid" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

