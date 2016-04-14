<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="LeafTitle">
	<div class="LeafIcon_Title" CustomSection="edtContainer" CustomTag=".LeafIcon_Title" UserText="Container : LeafIcon Title Header" DisabledControls="#BorderColor, .MainStyle">
		<h1 class="Title DarkBlue"><dnn:ICON id="dnnICON" runat="server"/><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="LeafTitle_content" CustomSection="edtContainer" CustomTag=".LeafTitle_content" UserText="Container : LeafTitle Body" DisabledControls="#BorderColor, #FontColor, .MainStyle">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>















