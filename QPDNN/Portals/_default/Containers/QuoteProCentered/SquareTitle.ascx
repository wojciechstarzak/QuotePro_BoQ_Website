<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="SquareTitle">
	<div class="SquareTitle_Title" CustomSection="edtContainer" CustomTag=".SquareTitle_Title" UserText="Container : SquareTitle Header" DisabledControls="#BorderColor, .MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="SquareTitle_content" CustomSection="edtContainer" CustomTag=".SquareTitle_content" UserText="Container : SquareTitle Body" DisabledControls="#BorderColor, #FontColor, .MainStyle">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>















