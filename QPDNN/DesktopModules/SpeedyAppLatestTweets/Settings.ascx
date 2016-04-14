<%@ Control Language="C#" AutoEventWireup="false" Inherits="SpeedyApp.Modules.SpeedyAppLatestTweets.Settings" Codebehind="Settings.ascx.cs" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<style type="text/css">
.frmLabel{text-align:right;}

    .auto-style1 {
        text-align: right;
        width: 125px;
    }
    .auto-style2 {
        width: 36px;
    }
    .auto-style3 {
        width: 192px;
    }
    .auto-style4 {
        text-align: right;
        width: 129px;
    }

</style>
<table border="0" style="height: 141px; width: 819px">
<tr>
<td class="auto-style1">
    
    Twitter ID</td>

<td class="auto-style3"><asp:TextBox ID="txtTwitterID" runat="server">dnncorp</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtTwitterID" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </td>

<td class="auto-style4">Number of Tweets</td>

<td class="auto-style2">
    <asp:DropDownList ID="cboNumTweets" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem Selected="True">5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>13</asp:ListItem>
        <asp:ListItem>14</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>
<tr>
<td class="auto-style1">
    
    Consumer Key</td>

<td class="auto-style3">
    <asp:TextBox ID="txtConsumerKey" runat="server" Width="167px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtTwitterID" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </td>

<td class="auto-style4">Consumer Secret</td>

<td class="auto-style2">
    <asp:TextBox ID="txtConsumerSecret" runat="server" Width="152px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtTwitterID" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="auto-style1">
    
    Access Token Key</td>

<td class="auto-style3">
    <asp:TextBox ID="txtAccessTokenKey" runat="server" Width="167px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtTwitterID" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </td>

<td class="auto-style4">Access Token Secret</td>

<td class="auto-style2">
    <asp:TextBox ID="txtAccessTokenSecret" runat="server" Width="151px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtTwitterID" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td colspan="4">
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </td>
</tr>


</table>
