<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %> 
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<!--Temporary stylesheet attachment-->
<link href="skin.css" rel="stylesheet" type="text/css" />
<dnn:CONTROLPANEL runat="server" id="cp"  IsDockable="False" />

<div id="logobar"><div id="dnn_dnnLogo_imgLogo"><a href="#"> <img src="../PSDTutorial/images/logo.png"/></a></div> 
	<div id="loginlinks">
    	<dnn:LOGIN id="dnnLogin" runat="server"/> | <dnn:USER id="dnnUser" runat="server"/> 
    </div>
</div>
<div id="navbar"> <dnn:MENU MenuStyle="Superfish" runat="server" /></div>
<div id="header"> <div id="HeaderPane" runat="server"></div> </div>
<div id="content"> <div id="ContentPane" runat="server"></div> </div>
<div id="infobar"> infobar </div>
<div id="lowerpanes"> lowerpanes </div>
<div id="footer"> footer </div>














