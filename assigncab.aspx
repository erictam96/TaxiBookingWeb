<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="assigncab.aspx.cs" Inherits="assigncab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
        }
        .style7
        {
        }
        .style12
        {
            width: 137px;
        }
        .style15
        {
            width: 137px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style7" colspan="2">
                <h2>
                Booking Summary</h2>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <strong>Choose Car</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                    AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CarName" 
                    DataValueField="DriverID" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [CarName], [DriverID] FROM [adddriver] WHERE (([TypeID] = @TypeID) AND ([Status] = @Status) AND ([WorkingCity] = @WorkingCity))">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="TypeID" QueryStringField="tid" Type="Decimal" />
                        <asp:Parameter DefaultValue="Free" Name="Status" Type="String" />
                        <asp:QueryStringParameter Name="WorkingCity" QueryStringField="ctid" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="style3">
                        <tr>
                            <td class="style15">
                                Driver Picture</td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="82px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                Driver Name</td>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                Driver Phone</td>
                            <td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                Car Name</td>
                            <td>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                Car Number</td>
                            <td>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <strong>Car Type</strong></td>
                            <td>
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Assign Cab" />
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT adddriver.CarNumber, adddriver.Name, adddriver.Username, adddriver.CarName, adddriver.DriverPic, addtype.TypeName FROM adddriver INNER JOIN addtype ON adddriver.TypeID = addtype.TypeID WHERE (adddriver.DriverID = @did)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="did" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

