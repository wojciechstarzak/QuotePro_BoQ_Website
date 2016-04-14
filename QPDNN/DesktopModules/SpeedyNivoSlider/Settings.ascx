<%@ Control Language="C#" AutoEventWireup="false" Inherits="SpeedyApp.Modules.SpeedyNivoSlider.Settings" Codebehind="Settings.ascx.cs" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

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
    height:10px;
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


    .auto-style1
    {
        height: 10px;
    }


</style>




<table align="center" id="box-table-a">
    <tr>
        <td class="auto-style2">Effect</td>
        <td>
            <asp:DropDownList ID="cboEffect" runat="server">
                <asp:ListItem Selected="True">random</asp:ListItem>
                <asp:ListItem>fold</asp:ListItem>
                <asp:ListItem>fade</asp:ListItem>
                <asp:ListItem>boxRandom</asp:ListItem>
                <asp:ListItem>boxRain</asp:ListItem>
                <asp:ListItem>boxRainReverse</asp:ListItem>
                <asp:ListItem>boxRainGrow</asp:ListItem>
                <asp:ListItem>boxRainGrowReverse</asp:ListItem>
                <asp:ListItem>sliceDownRight</asp:ListItem>
                <asp:ListItem>sliceDownLeft</asp:ListItem>
                <asp:ListItem>sliceUpRight</asp:ListItem>
                <asp:ListItem>sliceUpLeft</asp:ListItem>
                <asp:ListItem>sliceUpDown</asp:ListItem>
                <asp:ListItem>sliceUpDownLeft</asp:ListItem>
                <asp:ListItem>sliceUpDownRight</asp:ListItem>
                <asp:ListItem>sliceDown</asp:ListItem>
                <asp:ListItem>sliceUp</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Slices</td>
        <td>
            <asp:TextBox ID="txtSlices" runat="server">15</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtSlices" ErrorMessage="Please Enter a Valid Value for Slices" ForeColor="#FF3300" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSlices" ErrorMessage="Slices Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Box Columns</td>
        <td class="auto-style1">
            <asp:TextBox ID="txtBoxCols" runat="server" ValidationGroup="Settings">8</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBoxCols" ErrorMessage="Please Enter a Valid Number Value for Box Columns" ForeColor="#FF3300" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxCols" ErrorMessage="Box Columns Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1">Box Rows</td>
        <td class="auto-style1">
            <asp:TextBox ID="txtBoxRows" runat="server">4</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtBoxRows" ErrorMessage="Please Enter a Valid Value for Box Rows" ForeColor="#FF3300" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBoxRows" ErrorMessage="Box Rows Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Animation Speed</td>
        <td>
            <asp:TextBox ID="txtAnimSpeed" runat="server">500</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAnimSpeed" ErrorMessage="Please Enter a Valid Value for Animation Speed" ForeColor="#FF3300" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnimSpeed" ErrorMessage="Animation Speed Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
        <td>Pause Time</td>
        <td>
            <asp:TextBox ID="txtPauseTime" runat="server">3000</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPauseTime" ErrorMessage="Please Enter a Valid Value for Pause Time" ForeColor="#FF3300" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPauseTime" ErrorMessage="Pause Time Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Starting Slide</td>
        <td>
            <asp:DropDownList ID="cboStartSlide" runat="server">
                <asp:ListItem Selected="True">0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Direction Nav</td>
        <td>
            <asp:DropDownList ID="cboDirectionNav" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Direction Nav (On Hover)</td>
        <td>
            <asp:DropDownList ID="cboDirectionNavHide" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Control Nav</td>
        <td>
            <asp:DropDownList ID="cboControlNav" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Control Nav Thumbs</td>
        <td>
            <asp:DropDownList ID="cboControlNavThumbs" runat="server">
                <asp:ListItem>true</asp:ListItem>
                <asp:ListItem Selected="True">false</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Pause On Hover</td>
        <td>
            <asp:DropDownList ID="cboPauseOnHover" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Manual Advance</td>
        <td>
            <asp:DropDownList ID="cboManualAdvance" runat="server">
                <asp:ListItem>true</asp:ListItem>
                <asp:ListItem Selected="True">false</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Random Start</td>
        <td>
            <asp:DropDownList ID="cboRandomStart" runat="server">
                <asp:ListItem>true</asp:ListItem>
                <asp:ListItem Selected="True">false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Prev Text</td>
        <td>
            <asp:TextBox ID="txtPrevText" runat="server">Prev</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrevText" ErrorMessage="Prev Text Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
        <td>Next Text</td>
        <td>
            <asp:TextBox ID="txtNextText" runat="server">Next</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNextText" ErrorMessage="Next Text Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Theme</td>
        <td>
            <asp:DropDownList ID="cboTheme" runat="server">
                <asp:ListItem Selected="True">default</asp:ListItem>
                <asp:ListItem>light</asp:ListItem>
                <asp:ListItem>dark</asp:ListItem>
                <asp:ListItem>bar</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="4">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="#FF3300" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="4">&nbsp;</td>
    </tr>
</table>

<table align="center" id="box-table-a">
    <tr>
        <td colspan="3">
            <strong><span class="style1">Upload and Insert Image</span></strong></td>
    </tr>
    <tr>
        <td>
            Image To Upload</td>
        <td>
            Image Text</td>
        <td>
            Image Link</td>
    </tr>
    <tr>
        <td>
            <br />
            <asp:FileUpload ID="uploadImages" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtImageHtml" runat="server" Width="251px" Height="170px" 
                TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="txtImageLink" runat="server" Width="250px" Height="159px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnInsert" runat="server" Text="Upload and Insert" 
                ValidationGroup="Images" OnClick="btnInsert_Click" />
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
            <asp:GridView ID="gvImages" runat="server" 
                Width="800px" AutoGenerateColumns="False" EnableModelValidation="True" OnRowDeleting="gvImages_RowDeleting"  >
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="gvDelete" runat="server"  Text="Delete" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        
                       <asp:Image ID="Image1"   runat="server" ImageUrl='<%# Eval("imagePath") %>' Width="250" ImageAlign="Middle" />

                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Link">
                    <ItemTemplate> <asp:Label ID="Label1" runat="server" Text='<%# Eval("link") %>'></asp:Label></ItemTemplate>
                   
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Text">
                    <ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("text") %>'></asp:Label></ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
                <RowStyle Width="200px" />
        </asp:GridView></td>
    </tr>
    </table>


<p>
    <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
</p>








