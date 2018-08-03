<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcity.aspx.cs" Inherits="addcity" %>



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
                Add City</h2>
            </td>
            <td>
               
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                City Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add City" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <h2>
                    Already Added Cities</h2>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="CityID" DataSourceID="SqlDataSource1" 
                    Width="100%">
                    <Columns>
                        <asp:BoundField DataField="CityName" HeaderText="CityName" 
                            SortExpression="CityName" />
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
                    DeleteCommand="DELETE FROM [addcity] WHERE [CityID] = @original_CityID" 
                    InsertCommand="INSERT INTO [addcity] ([CityName]) VALUES (@CityName)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [addcity]" 
                    
                    UpdateCommand="UPDATE [addcity] SET [CityName] = @CityName WHERE [CityID] = @original_CityID" 
                    onselected="SqlDataSource1_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CityID" Type="Decimal" />
                        <asp:Parameter Name="original_CityName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CityName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CityName" Type="String" />
                        <asp:Parameter Name="original_CityID" Type="Decimal" />
                        <asp:Parameter Name="original_CityName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

