<%@ Control Language="C#" Inherits="SpeedyApp.Modules.SpeedyNivoSlider.ViewSpeedyNivoSlider"
    AutoEventWireup="true" CodeBehind="ViewSpeedyNivoSlider.ascx.cs" %>
<asp:GridView ID="GridView1" runat="server"></asp:GridView>
<link rel="stylesheet" href="<%= ControlPath %>css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= ControlPath %>themes/default/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= ControlPath %>themes/light/light.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= ControlPath %>themes/dark/dark.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= ControlPath %>themes/bar/bar.css" type="text/css" media="screen" />

<script type="text/javascript" src="<%= ControlPath %>js/jquery.nivo.slider.pack.js"></script>

<asp:Literal ID="sliderHtml" runat="server"></asp:Literal>
<asp:Literal ID="sliderJS" runat="server"></asp:Literal>