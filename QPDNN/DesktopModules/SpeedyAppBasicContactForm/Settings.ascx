<%@ Control Language="C#" AutoEventWireup="false" Inherits="SpeedyApp.Modules.SpeedyAppBasicContact.Settings" Codebehind="Settings.ascx.cs" %>

<style type="text/css">
    #SpeedyContactFormTable
{
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 12px;
	margin-left:auto;
	margin-right:auto;
	width: 100%;
	text-align: left;
	border-collapse: collapse;
}
#SpeedyContactFormTable th
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
#SpeedyContactFormTable td
{
	padding: 8px;
	background: #e8edff; 
	border-bottom: 1px solid #fff;
	color: #669;
	border-top: 1px solid transparent;
	
}
#SpeedyContactFormTable tr:hover td
{
	background: #d0dafd;
	color: #339;
}

.tdRight{text-align:right;}

</style>


<table id="SpeedyContactFormTable" class="nice" border="0" width="100%">
<tr>
<td width="50%">
<p><label>Title (Title of the Contact Form)</label><asp:TextBox ID="txtTitle" runat="server" Width="250px">Contact Us</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtTitle" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>Source E-mail (Same as the e-mail account setup in Dotnetnuke)</label><asp:TextBox ID="txtSourceEmail" runat="server" 
        Width="250px">info@speedyapplication.com</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtSourceEmail" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>Destination E-mail (Where you want to receive the message)</label><asp:TextBox ID="txtDestEmail" runat="server" 
        Width="250px">sales@speedyapplication.com</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtDestEmail" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>CC (A second destination address)</label><asp:TextBox ID="txtCC" runat="server" Width="250px"></asp:TextBox>
    </p>
<p><label>Success Message (If e-mail was sent successfully)</label><asp:TextBox ID="txtSuccessMessage" runat="server" 
        Width="250px">Thank you for your message. We will get back to you soon.</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtSuccessMessage" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
   <p><label>Title Color</label><br /><asp:TextBox ID="txtTitleColor" 
        runat="server">#ffffff</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtTitleColor" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
     <p><label>Text Color</label><br /><asp:TextBox ID="txtTextColor" 
        runat="server">#ffffff</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ControlToValidate="txtTextColor" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>

</td>
<td width="50%">
<p><label>Name Label</label><br /><asp:TextBox ID="txtNameLabel" runat="server">Name</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtNameLabel" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>E-mail Label</label><br /><asp:TextBox ID="txtEmailLabel" runat="server">E-mail</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtEmailLabel" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>Subject Label</label><br /><asp:TextBox ID="txtSubjectLabel" runat="server">Subject</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="txtSubjectLabel" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>Message Label</label><br /><asp:TextBox ID="txtMessageLabel" runat="server">Message</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtMessageLabel" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>Send Button Label</label><br /><asp:TextBox ID="txtSendButtonLabel" 
        runat="server">Send</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="txtSendButtonLabel" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>Send Button Color</label><br /><asp:TextBox ID="txtSendButtonColor" 
        runat="server">#000000</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="txtSendButtonColor" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
<p><label>Send Button Text Color</label><br /><asp:TextBox ID="txtSendButtonTextColor" 
        runat="server">#ffffff</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="txtSendButtonTextColor" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>

</td>
</tr>

</table>
<p>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtSourceEmail" Display="Dynamic" 
        
        ErrorMessage="*Please Enter a Valid E-mail Address For &quot;Source E-mail&quot;" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</p>
<p>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtDestEmail" Display="Dynamic" 
        
        ErrorMessage="*Please Enter a Valid E-mail Address Fro &quot;Destination E-mail&quot;" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</p>
<p>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtCC" Display="Dynamic" 
        ErrorMessage="*Please Enter a Valid E-mail Address For &quot;CC&quot;" 
        ForeColor="#FF3300" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtSendButtonColor" Display="Dynamic" 
        ErrorMessage="*Please Enter a Valid Hexadecimal Color" 
        ForeColor="#FF3300" 
        ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$"></asp:RegularExpressionValidator>

   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="txtSendButtonTextColor" Display="Dynamic" 
        ErrorMessage="*Please Enter a Valid Hexadecimal Color" 
        ForeColor="#FF3300" 
        ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$"></asp:RegularExpressionValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
        ControlToValidate="txtTitleColor" Display="Dynamic" 
        ErrorMessage="*Please Enter a Valid Hexadecimal Color" 
        ForeColor="#FF3300" 
        ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$"></asp:RegularExpressionValidator>

     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
        ControlToValidate="txtTextColor" Display="Dynamic" 
        ErrorMessage="*Please Enter a Valid Hexadecimal Color" 
        ForeColor="#FF3300" 
        ValidationExpression="^\#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$"></asp:RegularExpressionValidator>

</p>

