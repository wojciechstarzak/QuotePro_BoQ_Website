<%@ Control Language="C#" AutoEventWireup="false" Inherits="SpeedyApp.Modules.SpeedyTouchFlexi.Settings" Codebehind="Settings.ascx.cs" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
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
        width: 122px;
    }
    .auto-style2 {
        width: 122px;
    }


</style>

<table id="box-table-a">
    <thead>
    <tr>
        <th align="center"  colspan="4">
            <strong>SpeedyApplication.com - Touch Flexi Slider Settings</strong></th>
    </tr>
    </thead>
    <tr>
        <td class="tdRight">
            Slider Mode</td>
        <td class="tdRight">
            <asp:DropDownList ID="cboSliderMode" runat="server" OnSelectedIndexChanged="cboSliderMode_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Selected="True">Slide Show</asp:ListItem>
                <asp:ListItem>Carousel</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style1">
            Smooth Height</td>
        <td>
            <asp:DropDownList ID="cboSmoothHeight" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Animation</td>
        <td >
            <asp:DropDownList ID="cboAnimation" runat="server">
                <asp:ListItem>fade</asp:ListItem>
                <asp:ListItem Selected="True">slide</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style1">
            Slide Direction</td>
        <td>
            <asp:DropDownList ID="cboSlideDir" runat="server">
                <asp:ListItem Selected="True">horizontal</asp:ListItem>
                <asp:ListItem>vertical</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Reverse Direction</td>
        <td>
            <asp:DropDownList ID="cboReverseDir" runat="server">
                <asp:ListItem>true</asp:ListItem>
                <asp:ListItem Selected="True">false</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style1">
            Animation Loop</td>
        <td>
            <asp:DropDownList ID="cboAnimationLoop" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Starting Slide</td>
        <td class="style17">
            <asp:DropDownList ID="cboStartingSlide" runat="server">
                <asp:ListItem Selected="True">0</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style1">
            Auto Start Slides</td>
        <td>
            <asp:DropDownList ID="cboAutoStartSlides" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Slideshow Speed </td>
        <td class="style17">
            <asp:TextBox ID="txtSlideshowSpeed" runat="server">1000</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtSlideshowSpeed" 
                ErrorMessage="Please Enter Slideshow Speed" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSlideshowSpeed" ErrorMessage="Please Enter a valid number" ForeColor="#FF3300" ValidationExpression="^-[0-9]+$|^[0-9]+$">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style1">
            Initial Delay</td>
        <td class="style17">
            <asp:TextBox ID="txtInitialDelay" runat="server">1000</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtInitialDelay" 
                ErrorMessage="Please Enter Slideshow Speed" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtInitialDelay" ErrorMessage="Please Enter a valid number" ForeColor="#FF3300" ValidationExpression="^-[0-9]+$|^[0-9]+$">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Animation Duration</td>
        <td class="style17">
            <asp:TextBox ID="txtAnimDuration" runat="server">1000</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtAnimDuration" 
                ErrorMessage="Please Enter Animation Duration" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAnimDuration" ErrorMessage="Please Enter a valid number" ForeColor="#FF3300" ValidationExpression="^-[0-9]+$|^[0-9]+$">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style1">
            Pause On Action</td>
        <td class="style17">
            <asp:DropDownList ID="cboPauseOnAction" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Randomize Slides</td>
        <td class="style17">
            <asp:DropDownList ID="cboRandomize" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style1">
            Pause On Hover</td>
        <td class="style17">
            <asp:DropDownList ID="cboPauseOnHover" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Enable Touch</td>
        <td class="style17">
            <asp:DropDownList ID="cboTouch" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            Keyboard Navigation</td>
        <td class="style17">
            <asp:DropDownList ID="cboKeyboardNav" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Bullets/ Thumbnail Navigation</td>
        <td class="style17">
            <asp:DropDownList ID="cboControlNav" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboControlNav_SelectedIndexChanged">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
                <asp:ListItem>thumbnails</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            Navigation Arrows</td>
        <td class="style17">
            <asp:DropDownList ID="cboDirectionNav" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Carousel Item Width</td>
        <td class="style17">
            <asp:TextBox ID="txtCarItemWidth" runat="server">210</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtAnimDuration" 
                ErrorMessage="Please Enter Animation Duration" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCarItemWidth" ErrorMessage="Please Enter a valid number" ForeColor="#FF3300" ValidationExpression="^-[0-9]+$|^[0-9]+$">*</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style2">
            Carousel Min. Items</td>
        <td class="style17">
            <asp:DropDownList ID="cboCarMinItems" runat="server">
                <asp:ListItem Selected="True">0</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            Carousel Max Items</td>
        <td class="style17">
            <asp:DropDownList ID="cboCarMaxItems" runat="server">
                <asp:ListItem Selected="True">0</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            Carousel Items to Move</td>
        <td class="style17">
            <asp:DropDownList ID="cboCarItemMove" runat="server">
                <asp:ListItem Selected="True">0</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="tdRight">
            &nbsp;</td>
        <td class="style17">
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
        <td colspan="3">
            <strong><span class="style1">Upload and Insert Image Image</span></strong></td>
    </tr>
    <tr>
        <td>
            Image To Upload</td>
        <td colspan="2">
            Image Link</td>
    </tr>
    <tr>
        <td>
            <br />
            <asp:FileUpload ID="uploadImages" runat="server" />
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtImageLink" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1" colspan="3">
            <strong>Image Text</strong></td>
    </tr>
    <tr>
        <td colspan="3">
            

 <dnn:texteditor id="txtImageText" runat="server" height="500" width="100%" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnInsert" runat="server" Text="Upload and Insert" 
                onclick="btnInsert_Click" ValidationGroup="Images" />
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
            <asp:GridView ID="gvImages" runat="server" onrowdeleting="gvImages_RowDeleting" 
                Width="800px" EnableModelValidation="True" 
                onrowdatabound="gvImages_RowDataBound" ondatabound="gvImages_DataBound" onrowcreated="gvImages_RowCreated" OnRowEditing="gvImages_RowEditing" 
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
                        <asp:LinkButton ID="gvDelete" runat="server"  Text="Delete" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    
                    <ItemTemplate>

                        <asp:Image ID="Image1"   runat="server" ImageUrl='<%# Eval("imagePath") %>' Width="250" ImageAlign="Middle" />

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