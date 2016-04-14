<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div class="SquareRibbonCenterTitle" CustomSection="edtContainer" CustomTag=".SquareRibbonCenterTitle" UserText="Container : SquareRibbonCenterTitle Body" DisabledControls="#FontColor,#Transparency,.MainStyle">
	<div class="SquareRibbonCenter_Title" CustomSection="edtContainer" CustomTag=".SquareRibbonCenter_Title" UserText="Container : SquareRibbonCenter Title" DisabledControls="#BorderColor,.MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="SquareRibbonCenterTitleContent">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>
















