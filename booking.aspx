<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       

    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
    }
    .style6
    {
    }
    .style7
    {
        width: 242px;
    }
    .style8
    {
        width: 244px;
        font-weight: bold;
    }
    .style9
    {
        width: 242px;
        font-weight: bold;
    }
    .style10
    {
    }
    .style11
    {
        width: 155px;
    }
        .style12
        {
            width: 295px;
        }
        .style14
        {
            width: 138px;
            font-weight: bold;
        }
        .style15
        {
            font-size: 12pt;
        }
    </style>

       <script type="text/javascript">

           function checkDate(sender, args) 
           {
               if (sender._selectedDate < new Date()) {
                   alert("You cannot select a day earlier than today!");
                   sender._selectedDate = new Date();
                   // set the date back to the current date
                   sender._textbox.set_Value(sender._selectedDate.format(sender._format))
               }
           }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style6">
                <table class="style3">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel2" runat="server">
                                <table class="style3">
                                    <tr>
                                        <td class="style6">
                                            <h2>
                                                Book Cab</h2>
                                        </td>
                                        <td class="style12">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                             <script src="Extension.min.js" type="text/javascript"></script>
        <link href="CSS.css" rel="stylesheet" type="text/css" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            Choose City</td>
                                        <td class="style12">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource1" DataTextField="CityName" 
                                                DataValueField="CityID" 
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [CityID], [CityName] FROM [addcity]">
                                            </asp:SqlDataSource>
                                        </td>
                                        <td rowspan="3" valign="bottom">
                                            <asp:Panel ID="Panel4" runat="server" Visible="False">
                                                <table class="style3">
                                                    <tr>
                                                        <td class="style15" colspan="2">
                                                            <strong>Charges Summary</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Min Bill Charges</td>
                                                        <td>
                                                            <asp:Label ID="Label9" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Free KMs</td>
                                                        <td>
                                                            <asp:Label ID="Label10" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Waiting Charges</td>
                                                        <td>
                                                            <asp:Label ID="Label11" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Extra Per KM</td>
                                                        <td>
                                                            <asp:Label ID="Label12" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            Choose Cab type</td>
                                        <td class="style12">
                                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource5" DataTextField="TypeName" DataValueField="TypeID" 
                                                ondatabound="DropDownList5_DataBound" 
                                                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [TypeID], [TypeName] FROM [addtype] WHERE ([CityID] = @CityID)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList1" Name="CityID" 
                                                        PropertyName="SelectedValue" Type="Decimal" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            Pick-Up Locality / Area</td>
                                        <td class="style12">
                                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                                DataSourceID="SqlDataSource2" DataTextField="LocalityName" 
                                                DataValueField="LocID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [LocID], [LocalityName] FROM [addlocality] WHERE ([CityID] = @CityID)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList1" Name="CityID" 
                                                        PropertyName="SelectedValue" Type="Decimal" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            Drop Locality / Area</td>
                                        <td class="style12">
                                            <asp:DropDownList ID="DropDownList4" runat="server" 
                                                DataSourceID="SqlDataSource4" DataTextField="LocalityName" 
                                                DataValueField="LocID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [LocID], [LocalityName] FROM [addlocality] WHERE ([CityID] = @CityID) ORDER BY [LocalityName] DESC">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList1" Name="CityID" 
                                                        PropertyName="SelectedValue" Type="Decimal" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            Pickup Date</td>
                                        <td class="style12">
                                            <asp:TextBox ID="TextBox1" runat="server" 
                                                ontextchanged="TextBox1_TextChanged" CssClass="disable_past_dates" ></asp:TextBox>
                                            <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                                                Enabled="True" TargetControlID="TextBox1" Format="MM/dd/yyyy">
                                            </cc1:CalendarExtender>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            Pickup Time</td>
                                        <td class="style12">
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                
                                                SelectCommand="SELECT [SlotID], [SlotName] FROM [addtime] ORDER BY [SlotName]">
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                Text="Traveller Details" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="style3" cellpadding="0" cellspacing="0">
                        <tr bgcolor="#E4BB18">
                            <td class="style7">
                                <h3>
                                    Traveller&#39;s Details</h3>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Name</td>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Phone</td>
                            <td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Email ID</td>
                            <td>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Book Now" 
                                    onclick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Panel ID="Panel3" runat="server" Visible="False">
                    <table class="style3">
                        <tr>
                            <td class="style10" colspan="2">
                                <h2>
                                    Review Booking Details</h2>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Pick Up From</td>
                            <td>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Pick Up Date</td>
                            <td>
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Pick Up Time</td>
                            <td>
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Traveller Name</td>
                            <td>
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">Price (RM)</td>
                            <td>
                                <asp:Label ID="pricelabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Confirm Booking" 
                                    onclick="Button3_Click" Width="139px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

