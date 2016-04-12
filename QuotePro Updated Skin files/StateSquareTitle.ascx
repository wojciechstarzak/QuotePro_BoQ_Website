<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="SquareTitle" class="StateSquareDiv">
	<div class="StateSquare_Title" CustomSection="edtContainer" CustomTag=".StateSquare_Title" UserText="Container : StateSquareTitle Header" DisabledControls="#BorderColor, .MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="StateSquareTitle_content" CustomSection="edtContainer" CustomTag=".StateSquareTitle_content" UserText="Container : StateSquareTitle Body" DisabledControls="#FontColor, .MainStyle">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>














