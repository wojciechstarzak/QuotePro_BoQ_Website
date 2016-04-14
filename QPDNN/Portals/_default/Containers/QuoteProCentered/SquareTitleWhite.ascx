<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="SquareTitleWhite">
	<div class="SquareTitleWhite_Title" CustomSection="edtContainer" CustomTag=".SquareTitleWhite_Title" UserText="Container : SquareWhiteTitle Header" DisabledControls="#BorderColor, .MainStyle">
		<h1 class="Title DarkBlue"><dnn:ICON id="dnnICON" runat="server"/><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="SquareTitleWhite_content" CustomSection="edtContainer" CustomTag="#SquareTitleWhite" UserText="Container : SquareWhiteTitle Body" DisabledControls="#BorderColor, #FontColor, .MainStyle">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>















