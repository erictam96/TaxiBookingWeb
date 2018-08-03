<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: 46pt;
        }
        .auto-style2 {
            text-align: center;
        }
      
        .auto-style3 {
            text-align: center;
            font-size: medium;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td>
            <h1 class="auto-style2">
      
                
		        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/slider1.jpg" Width="1134px" />
	
                
            </h1>
            <h1 class="auto-style2"><span class="auto-style1">Welcome to CabMY Services</span></h1>
            <p class="auto-style3">
                <strong>CabMY offers return airport transfer from Klang Valley, Kuala Lumpur City Centre and within Peninsular Malaysia to KLIA, KLIA 2 and Subang Airport. It is a licenced public transports which offer variant type of car. Customers can&nbsp; book our taxi for your travel needs within Kuala Lumpur.</strong></p>
            <p class="auto-style2">
                <asp:Button ID="Button1" runat="server" Height="68px" OnClick="Button1_Click" Text="Book Now" Width="257px" />
            </p>
            <p>
                &nbsp;</p>
        </td>
    </tr>
    <tr>
        <td>
           
            <ul style="margin: 0px; padding: 0px; width: 980px; color: rgb(34, 34, 34); font-family: 'Helvetica Neue', Helvetica, Verdana; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.2339992523193px; orphans:auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            </ul>
           
        </td>
    </tr>
   </table> 
</asp:Content>

