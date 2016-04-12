<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.UI.Skins.Controls.Search" CodeFile="Search.ascx.cs" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" %>
<span id="ClassicSearch" runat="server" visible="true">
  <asp:RadioButton ID="WebRadioButton" runat="server" CssClass="SkinObject" GroupName="Search" />
  <asp:RadioButton ID="SiteRadioButton" runat="server" CssClass="SkinObject" GroupName="Search" />
  <asp:TextBox ID="txtSearch" runat="server" CssClass="NormalTextBox" Columns="20" MaxLength="255" EnableViewState="False"></asp:TextBox>&nbsp;
  <asp:LinkButton ID="cmdSearch" runat="server" CausesValidation="False" CssClass="SkinObject"></asp:LinkButton>
</span>

<div id="DropDownSearch" class="SpeedySearchContainer" runat="server"  visible="false">

  <table id="SearchTable" class="RoundedContainer">
  <tr>
  <td id="SpeedySearchIcon">
  <div id="SearchIcon" class="SearchIcon">
    <dnn:DnnImage ID="downArrow" runat="server" IconKey="Action" />
  </div>
  </td>
  <td id="SpeedSearchTextBox" align="center">
  <asp:TextBox ID="txtSearchNew" runat="server" CssClass="SpeedySearchBox searchInput" MaxLength="255" EnableViewState="False"></asp:TextBox>&nbsp;
  
   
  <ul id="SearchChoices">
    <li id="SearchIconSite"><%=SiteText%></li>
    <li id="SearchIconWeb"><%=WebText%></li>
  </ul>
  </td>
  
  <td id="SearchButton" align="center">
  <asp:LinkButton ID="cmdSearchNew" runat="server" CausesValidation="False" CssClass="desktopSearch"></asp:LinkButton>
  </td>
  </tr>
 </table>
 
</div>








