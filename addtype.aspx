<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addtype.aspx.cs" Inherits="addtype" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
        }
        .style4
        {
            width: 200px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" width="100%">
        <tr>
            <td class="style3">
                <h2>
                    Add Type</h2>
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Choose City</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [addcity]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Car Type</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Minimum Bill Charge</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox3">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Free KMs</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox4">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Waiting Charges</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox5_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox5">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Extra
                Per KM Charge</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox2">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Type" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <h2>
                    Already added car types for this city</h2>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="TypeID" DataSourceID="SqlDataSource1" 
                    Width="100%">
                    <Columns>
                        <asp:BoundField DataField="TypeName" HeaderText="TypeName" 
                            SortExpression="TypeName" />
                        <asp:BoundField DataField="MinBillCharge" HeaderText="MinBillCharge" 
                            SortExpression="MinBillCharge" />
                        <asp:BoundField DataField="FreeKms" HeaderText="FreeKms" 
                            SortExpression="FreeKms" />
                        <asp:BoundField DataField="WaitingCharges" HeaderText="WaitingCharges" 
                            SortExpression="WaitingCharges" />
                        <asp:BoundField DataField="charge" HeaderText="charge" 
                            SortExpression="charge" />
                        <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" 
                            ShowEditButton="True" CausesValidation="False">
                        <ControlStyle ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [addtype] WHERE [TypeID] = @original_TypeID" 
                    InsertCommand="INSERT INTO [addtype] ([TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (@TypeName, @CityID, @MinBillCharge, @FreeKms, @WaitingCharges, @charge)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [addtype] WHERE ([CityID] = @CityID)" 
                    
                    UpdateCommand="UPDATE [addtype] SET [TypeName] = @TypeName, [CityID] = @CityID, [MinBillCharge] = @MinBillCharge, [FreeKms] = @FreeKms, [WaitingCharges] = @WaitingCharges, [charge] = @charge WHERE [TypeID] = @original_TypeID" 
                    onselected="SqlDataSource1_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_TypeID" Type="Decimal" />
                        <asp:Parameter Name="original_TypeName" Type="String" />
                        <asp:Parameter Name="original_CityID" Type="Decimal" />
                        <asp:Parameter Name="original_MinBillCharge" Type="Decimal" />
                        <asp:Parameter Name="original_FreeKms" Type="Decimal" />
                        <asp:Parameter Name="original_WaitingCharges" Type="Decimal" />
                        <asp:Parameter Name="original_charge" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TypeName" Type="String" />
                        <asp:Parameter Name="CityID" Type="Decimal" />
                        <asp:Parameter Name="MinBillCharge" Type="Decimal" />
                        <asp:Parameter Name="FreeKms" Type="Decimal" />
                        <asp:Parameter Name="WaitingCharges" Type="Decimal" />
                        <asp:Parameter Name="charge" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CityID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TypeName" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="CityID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:Parameter Name="MinBillCharge" Type="Decimal" />
                        <asp:Parameter Name="FreeKms" Type="Decimal" />
                        <asp:Parameter Name="WaitingCharges" Type="Decimal" />
                        <asp:Parameter Name="charge" Type="String" />
                        <asp:Parameter Name="original_TypeID" Type="Decimal" />
                        <asp:Parameter Name="original_TypeName" Type="String" />
                        <asp:Parameter Name="original_CityID" Type="Decimal" />
                        <asp:Parameter Name="original_MinBillCharge" Type="Decimal" />
                        <asp:Parameter Name="original_FreeKms" Type="Decimal" />
                        <asp:Parameter Name="original_WaitingCharges" Type="Decimal" />
                        <asp:Parameter Name="original_charge" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

