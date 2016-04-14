<%@ Control Language="vb" AutoEventWireup="true" CodeBehind="Settings.ascx.vb" Inherits="Tushar.Modules.Thumbnail.Settings" %>



<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/labelcontrol.ascx" %>

<h2 id="dnnSitePanel-BasicSettings" class="dnnFormSectionHead"><a href="" class="dnnSectionExpanded"><%=LocalizeString("BasicSettings")%></a></h2>
<fieldset>
    <div class="dnnFormItem">
        <asp:Label ID="lblName" runat="server" Text="Panel Name" />
        <asp:TextBox ID="txtName" runat="server" />
    </div>
</fieldset>
