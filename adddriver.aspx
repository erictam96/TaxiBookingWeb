<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adddriver.aspx.cs" Inherits="adddriver" MaintainScrollPositionOnPostback="true" %>

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
            width: 211px;
            font-weight: bold;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <h2>
                Add Driver</h2>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Working for which city</td>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Driver Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Driver&#39;s
                Full Address</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="69px" TextMode="MultiLine" 
                    Width="199px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Email ID(If any)</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Phone Number(Username)</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Password</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Confirm Password</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Driver Picture</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr bgcolor="#CCCCCC">
            <td>
              <font size=5><b>Car Details</b></font></td>
            <td>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Car
                Type</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="TypeName" 
                    DataValueField="TypeID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [TypeID], [TypeName] FROM [addtype] WHERE ([CityID] = @CityID)">
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
            <td class="style5">
                Car Name</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Car Number</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Driver" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <h2>
                    LIST OF DRIVERS</h2>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="Username" 
                    DataSourceID="SqlDataSource2" Width="100%" 
                    onrowupdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="Picture">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DriverPic") %>' 
                                    Visible="False"></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="50px" 
                                    ImageUrl='<%# Eval("DriverPic", "images/{0}") %>' />
                            </ItemTemplate>
                            <ControlStyle Height="50px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" ReadOnly="True" />
                        <asp:BoundField DataField="CarName" HeaderText="CarName" 
                            SortExpression="CarName" />
                        <asp:BoundField DataField="CarNumber" HeaderText="CarNumber" 
                            SortExpression="CarNumber" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            HeaderText="Edit / Delete" CausesValidation="False">
                        <ControlStyle ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [adddriver] WHERE [Username] = @original_Username AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND [EmailID] = @original_EmailID AND (([DriverPic] = @original_DriverPic) OR ([DriverPic] IS NULL AND @original_DriverPic IS NULL)) AND (([CarName] = @original_CarName) OR ([CarName] IS NULL AND @original_CarName IS NULL)) AND (([CarNumber] = @original_CarNumber) OR ([CarNumber] IS NULL AND @original_CarNumber IS NULL))" 
                    InsertCommand="INSERT INTO [adddriver] ([Name], [Address], [EmailID], [Username], [DriverPic], [CarName], [CarNumber]) VALUES (@Name, @Address, @EmailID, @Username, @DriverPic, @CarName, @CarNumber)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Name], [Address], [EmailID], [Username], [DriverPic], [CarName], [CarNumber] FROM [adddriver] WHERE (([WorkingCity] = @WorkingCity) AND ([TypeID] = @TypeID))" 
                    
                    UpdateCommand="UPDATE [adddriver] SET [Name] = @Name, [Address] = @Address, [EmailID] = @EmailID, [DriverPic] = @DriverPic, [CarName] = @CarName, [CarNumber] = @CarNumber WHERE [Username] = @original_Username" 
                    onselected="SqlDataSource2_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_EmailID" Type="String" />
                        <asp:Parameter Name="original_DriverPic" Type="String" />
                        <asp:Parameter Name="original_CarName" Type="String" />
                        <asp:Parameter Name="original_CarNumber" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="DriverPic" Type="String" />
                        <asp:Parameter Name="CarName" Type="String" />
                        <asp:Parameter Name="CarNumber" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="WorkingCity" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="TypeID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="DriverPic" Type="String" DefaultValue="" />
                        <asp:Parameter Name="CarName" Type="String" />
                        <asp:Parameter Name="CarNumber" Type="String" />
                        <asp:Parameter Name="original_Username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

