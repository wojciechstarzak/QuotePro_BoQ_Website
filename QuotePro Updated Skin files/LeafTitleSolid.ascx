<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="LeafTitleSolid">
	<div class="LeafTitleSolid_Title" CustomSection="edtContainer" CustomTag=".LeafTitleSolid_Title" UserText="Container : LeafSolidTitle Header" DisabledControls=".MainStyle">
		<h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	</div>
    <div class="LeafTitleSolid_content" CustomSection="edtContainer" CustomTag=".LeafTitleSolid_content" UserText="Container : LeafSolidTitle Body" DisabledControls="#BorderColor, #FontColor, .MainStyle">
		<div id="ContentPane" runat="server"></div>
	</div>
</div>














