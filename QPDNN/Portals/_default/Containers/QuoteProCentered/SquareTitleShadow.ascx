<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="SquareTitleShadow">
	<div class="SquareTitleShadow_Title" CustomSection="edtContainer" CustomTag=".SquareTitleShadow_Title" UserText="Container : SquareTitleShadow Header" DisabledControls="#BorderColor, .MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="SquareTitleShadow_content" CustomSection="edtContainer" CustomTag=".SquareTitleShadow_content" UserText="Container : SquareTitleShadow Body" DisabledControls="#BorderColor, #FontColor, .MainStyle">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>
















