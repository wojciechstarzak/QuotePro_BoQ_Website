<%@ Control Language="C#" Inherits="SpeedyApp.Modules.SpeedyAppResponsiveTabs.ViewSpeedyAppResponsiveTabs"
            AutoEventWireup="true" CodeBehind="ViewSpeedyAppResponsiveTabs.ascx.cs" %>

<script src="<%=ControlPath %>js/responsiveTabs.min.js"></script>
<asp:Literal ID="tabsHtml" runat="server"></asp:Literal>


<script>
    $(document).ready(function () {
        RESPONSIVEUI.responsiveTabs();
    })
</script>

