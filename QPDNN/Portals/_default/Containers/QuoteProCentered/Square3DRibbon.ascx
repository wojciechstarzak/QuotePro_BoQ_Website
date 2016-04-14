<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div class="Square3dRibbon" CustomSection="edtContainer" CustomTag=".Square3dRibbon" UserText="Container : Square3dRibbon Body" DisabledControls="#FontColor,#Transparency,.MainStyle">
	<div class="SquareRectangle_Title" CustomSection="edtContainer" CustomTag=".SquareRectangle_Title" UserText="Container : Square3dRibbon Title" DisabledControls="#BorderColor,.MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="Square3dRibbonContent">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>
















