<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div class="TitleNoBorder">
	<div class="TitleNoBorder_Title" CustomSection="edtContainer" CustomTag=".TitleNoBorder_Title" UserText="Container : Title No Border" DisabledControls=".BgColorGrad, #Gradient, #BackgroundImage, .MainStyle, #BorderColor">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="TitleNoBorder_Content">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>










