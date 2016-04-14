<%@ Control Language="C#" AutoEventWireup="false" Inherits="SpeedyApp.Modules.SpeedyAppResponsiveTabs.Settings" Codebehind="Settings.ascx.cs" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
<style type="text/css">
   #box-table-a
{
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 12px;
	margin-left:auto;
	margin-right:auto;
	width: 850px;
	text-align: left;
	border-collapse: collapse;
}
#box-table-a th
{
	font-size: 13px;
	font-weight: normal;
	padding: 8px;
	background: #b9c9fe;
	border-top: 4px solid #aabcfe;
	border-bottom: 1px solid #fff;
	color: #039;
	text-align:center;
}
#box-table-a td
{
	padding: 8px;
	background: #e8edff; 
	border-bottom: 1px solid #fff;
	color: #669;
	border-top: 1px solid transparent;
        text-align: center;
    }
#box-table-a tr:hover td
{
	background: #d0dafd;
	color: #339;
}

.tdRight{text-align:center;
    }


    .style1
    {
        font-size: large;
    }


    .auto-style1 {
        text-align: center;
        width: 176px;
    }
    .auto-style2 {
        width: 176px;
    }


    .auto-style3 {
        text-align: center;
        width: 260px;
    }
    .auto-style4 {
        text-align: center;
        width: 187px;
    }
    .auto-style5 {
        width: 187px;
    }


</style>

<table id="box-table-a">
    <thead>
    <tr>
        <th align="center"  colspan="4">
            <strong>SpeedyApplication.com - Responsive Tabs Settings</strong></th>
    </tr>
    </thead>
    <tr>
        <td class="auto-style3">
            Tab Title Background Color</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtTabTitleBGCol" runat="server" Width="109px">#000000</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTabTitleBGCol" ErrorMessage="Please Enter Text Color" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTabTitleBGCol" ErrorMessage="Please Enter a Valid Hex Color" ForeColor="#FF3300" ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style1">
            Tab Title Font Color</td>
        <td>
            <asp:TextBox ID="txtTabTitleFontCol" runat="server" Width="109px">#ffffff</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTabTitleFontCol" ErrorMessage="Please Enter Text Color" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTabTitleFontCol" ErrorMessage="Please Enter a Valid Hex Color" ForeColor="#FF3300" ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Selected Tab Title Background Color</td>
        <td class="auto-style5" >
            <asp:TextBox ID="txtSelTabTitleBGCol" runat="server" Width="109px">#ffffff</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSelTabTitleBGCol" ErrorMessage="Please Enter Text Color" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSelTabTitleBGCol" ErrorMessage="Please Enter a Valid Hex Color" ForeColor="#FF3300" ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style1">
            Selected Tab Title Font Color</td>
        <td>
            <asp:TextBox ID="txtSelTabTitleFontCol" runat="server" Width="109px">#000000</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSelTabTitleFontCol" ErrorMessage="Please Enter Text Color" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtSelTabTitleFontCol" ErrorMessage="Please Enter a Valid Hex Color" ForeColor="#FF3300" ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Tab Hover Background Color</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtHovBGColor" runat="server" Width="109px">#303030</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtHovBGColor" ErrorMessage="Please enter a valid Hover Background Color" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtHovBGColor" ErrorMessage="Please enter a valid Hover Background Color" ForeColor="#FF3300" ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style2">
            Tab Hover Font Color</td>
        <td class="style17">
            <asp:TextBox ID="txtHovFontColor" runat="server" Width="109px">#000000</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtHovFontColor" ErrorMessage="Please enter a valid Hover Font Color" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtHovFontColor" ErrorMessage="Please enter a valid Hover Font Color" ForeColor="#FF3300" ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Sace Between Tabs</td>
        <td class="auto-style5">
            <asp:DropDownList ID="cboTabMargin" runat="server">
                <asp:ListItem>0px</asp:ListItem>
                <asp:ListItem Selected="True">1px</asp:ListItem>
                <asp:ListItem>2px</asp:ListItem>
                <asp:ListItem>3px</asp:ListItem>
                <asp:ListItem>4px</asp:ListItem>
                <asp:ListItem>5px</asp:ListItem>
                <asp:ListItem>6px</asp:ListItem>
                <asp:ListItem>7px</asp:ListItem>
                <asp:ListItem>8px</asp:ListItem>
                <asp:ListItem>9px</asp:ListItem>
                <asp:ListItem>10px</asp:ListItem>
                <asp:ListItem>11px</asp:ListItem>
                <asp:ListItem>12px</asp:ListItem>
                <asp:ListItem>13px</asp:ListItem>
                <asp:ListItem>14px</asp:ListItem>
                <asp:ListItem>15px</asp:ListItem>
                <asp:ListItem>16px</asp:ListItem>
                <asp:ListItem>17px</asp:ListItem>
                <asp:ListItem>18px</asp:ListItem>
                <asp:ListItem>19px</asp:ListItem>
                <asp:ListItem>20px</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            Tab Border Size</td>
        <td class="style17">
            <asp:DropDownList ID="cboTabBorderSize" runat="server">
                <asp:ListItem>0px</asp:ListItem>
                <asp:ListItem Selected="True">1px</asp:ListItem>
                <asp:ListItem>2px</asp:ListItem>
                <asp:ListItem>3px</asp:ListItem>
                <asp:ListItem>4px</asp:ListItem>
                <asp:ListItem>5px</asp:ListItem>
                <asp:ListItem>6px</asp:ListItem>
                <asp:ListItem>7px</asp:ListItem>
                <asp:ListItem>8px</asp:ListItem>
                <asp:ListItem>9px</asp:ListItem>
                <asp:ListItem>10px</asp:ListItem>
                <asp:ListItem>11px</asp:ListItem>
                <asp:ListItem>12px</asp:ListItem>
                <asp:ListItem>13px</asp:ListItem>
                <asp:ListItem>14px</asp:ListItem>
                <asp:ListItem>15px</asp:ListItem>
                <asp:ListItem>16px</asp:ListItem>
                <asp:ListItem>17px</asp:ListItem>
                <asp:ListItem>18px</asp:ListItem>
                <asp:ListItem>19px</asp:ListItem>
                <asp:ListItem>20px</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Tab Border Color</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtTabBorderColor" runat="server" Width="109px">#ffffff</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtTabBorderColor" ErrorMessage="Please enter a valid Tab Border Color" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtTabBorderColor" ErrorMessage="Please enter a valid Tab Border Color" ForeColor="#FF3300" ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style2">
            Tab Border Style</td>
        <td class="style17">
            <asp:DropDownList ID="cboTabBorderStyle" runat="server">
                <asp:ListItem Selected="True">solid</asp:ListItem>
                <asp:ListItem>dashed</asp:ListItem>
                <asp:ListItem>dotted</asp:ListItem>
                <asp:ListItem>none</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    </table>
<p>
<table id="box-table-a">
    <tr>
        <td colspan="3" class="style1">
            <strong>Tab Title</strong></td>
    </tr>
    <tr>
        <td>
            <br />
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtTabTitle" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTabTitle" ErrorMessage="Please Enter Tab Title" ForeColor="#FF3300" ValidationGroup="Tabs">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" colspan="3">
            <strong>Tab Text</strong></td>
    </tr>
    <tr>
        <td colspan="3">
            

 <dnn:texteditor id="txtTabDesc" runat="server" height="500" width="100%" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnInsert" runat="server" Text="Insert Tab" 
                onclick="btnInsert_Click" ValidationGroup="Tabs" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdateTab" runat="server" OnClick="btnUpdateTab_Click" Text="Update Tab" Width="95px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" class="tdRight">
            <asp:GridView ID="gvTabs" runat="server" onrowdeleting="gvTabs_RowDeleting" 
                Width="800px" EnableModelValidation="True" 
                onrowdatabound="gvTabs_RowDataBound" ondatabound="gvTabs_DataBound" onrowcreated="gvTabs_RowCreated" OnRowEditing="gvTabs_RowEditing" OnSelectedIndexChanged="gvTabs_SelectedIndexChanged" 
                >
            <Columns>
                <asp:TemplateField>
                    
                    <ItemTemplate>
                        <asp:LinkButton ID="btnMoveUp" runat="server"  Text="Move Up" OnClick="btnMoveUp_Click" CommandArgument="<%# Container.DataItemIndex %>">Move Up</asp:LinkButton>
                        <br /><br />
                        <asp:LinkButton ID="btnMoveDown" runat="server"  Text="Move Down" OnClick="btnMoveDown_Click" CommandArgument="<%# Container.DataItemIndex %>">Move Down</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="gvSelect" runat="server"  Text="Select" CommandName="Select">Select</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="gvDelete" runat="server"  Text="Delete" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
                <RowStyle Width="200px" />
        </asp:GridView></td>
    </tr>
    </table>


<p>
    <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
</p>
<p>
    </p>



<asp:ValidationSummary ID="ValidationSummary1" runat="server" 
    ForeColor="#FF3300" />



<br />


