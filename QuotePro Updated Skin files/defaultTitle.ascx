<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div class="DefaultTitle" CustomSection="edtContainer" CustomTag=".DefaultTitle" UserText="Container : Default Title" DisabledControls="#BackgroundImage, #BorderColor, .BgColorGrad, #Gradient, .GradPadd, .MainStyle">
    <h1 class="Title DarkBlue"><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
</div>
<div id="ContentPane" runat="server"></div>










