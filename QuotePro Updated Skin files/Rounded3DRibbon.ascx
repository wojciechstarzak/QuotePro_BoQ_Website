<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div class="Rounded3dRibbon" CustomSection="edtContainer" CustomTag=".Rounded3dRibbon" UserText="Container : Rounded3dRibbon Body" DisabledControls="#FontColor,.MainStyle">
	<div class="Rectangle_Title" CustomSection="edtContainer" CustomTag=".Rectangle_Title" UserText="Container : Rounded3dRibbon Title Header" DisabledControls="#BorderColor,.MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="Rounded3dRibbonContent">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>















