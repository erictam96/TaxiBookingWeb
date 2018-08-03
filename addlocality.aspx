<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addlocality.aspx.cs" Inherits="addlocality" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
            width: 219px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4">
                <h2>
                Add Area</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Choose City</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="CityName" 
                    DataValueField="CityID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CityID], [CityName] FROM [addcity]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;Area Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Locality" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <h2>
                    Area List</h2>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="LocID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="LocalityName" HeaderText="Area Name" 
                            SortExpression="LocalityName" />
                        <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" 
                            ShowEditButton="True" CausesValidation="False">
                        <ControlStyle ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [addlocality] WHERE [LocID] = @original_LocID" 
                    InsertCommand="INSERT INTO [addlocality] ([LocalityName]) VALUES (@LocalityName)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [LocID], [LocalityName] FROM [addlocality] WHERE ([CityID] = @CityID)" 
                    
                    UpdateCommand="UPDATE [addlocality] SET [LocalityName] = @LocalityName WHERE [LocID] = @original_LocID" 
                    onselected="SqlDataSource2_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_LocID" Type="Decimal" />
                        <asp:Parameter Name="original_LocalityName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LocalityName" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CityID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LocalityName" Type="String" />
                        <asp:Parameter Name="original_LocID" Type="Decimal" />
                        <asp:Parameter Name="original_LocalityName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

