<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="BevelTitle" class="Bevel_Shadow">
	<div class="BevelTitle_Title BevelTitle_shadow" CustomSection="edtContainer" CustomTag=".BevelTitle_Title" UserText="Container : BevelTitle Header" DisabledControls="#BorderColor, .MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="BevelTitle_content" CustomSection="edtContainer" CustomTag=".BevelTitle_content" UserText="Container : BevelTitle Body" DisabledControls="#BorderColor, #FontColor, .MainStyle">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>















