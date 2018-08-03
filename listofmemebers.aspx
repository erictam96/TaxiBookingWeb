<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="listofmemebers.aspx.cs" Inherits="listofmemebers" %>

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
                    List of Members</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="Username">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="UserType" HeaderText="UserType" 
                            SortExpression="UserType" />
                        <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" 
                            ShowEditButton="True">
                        <ControlStyle ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [Name], [Address], [City], [State], [Phone], [UserType], [Username] FROM [signup]" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [signup] WHERE [Username] = @original_Username" 
                    InsertCommand="INSERT INTO [signup] ([Name], [Address], [City], [State], [Phone], [UserType], [Username]) VALUES (@Name, @Address, @City, @State, @Phone, @UserType, @Username)" 
                    OldValuesParameterFormatString="original_{0}" 
                    UpdateCommand="UPDATE [signup] SET [Name] = @Name, [Address] = @Address, [City] = @City, [State] = @State, [Phone] = @Phone, [UserType] = @UserType WHERE [Username] = @original_Username">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_UserType" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="UserType" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="UserType" Type="String" />
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_UserType" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

