<%@ Control Language="C#" Inherits="SpeedyApp.Modules.SpeedyAppMobileFramework.ViewSpeedyAppMobileFramework"
    AutoEventWireup="true" CodeBehind="ViewSpeedyAppMobileFramework.ascx.cs" %>



<script src="<%=ControlPath %>scripts/json2.js"  type="text/javascript"></script>
<script type="text/javascript">
    function pageLoad(){
       
        var hidJson = jQuery('#<%= hidJson.ClientID %>');
        var lstModules = jQuery('#<%= lstModules.ClientID %>');
        var chkHideOnPhones = jQuery('#<%= chkHideOnPhones.ClientID %>');
        var chkHideOnTablets = jQuery('#<%= chkHideOnTablets.ClientID %>');
        var chkHideOnDesktops = jQuery('#<%= chkHideOnDesktops.ClientID %>');
        var lblNotification = jQuery('#<%= lblNotification.ClientID %>');

       
        //Serialize Json from lblJson
        var strJson = hidJson.val();
        strJson.replace("&quot;", "\"");
        
        var elem = jQuery.parseJSON(strJson);


        //Listbox change event
        lstModules.change(function (e) {
            PopulateControls(lstModules.val());
        });

        chkHideOnPhones.change(function (e) {
            var elemID = FindElementByID(lstModules.val());
            elem[elemID].hideOnPhones = chkHideOnPhones.is(':checked');
            lblNotification.text("");
            ApplyHideOn('hide-on-phones', lstModules.val(), chkHideOnPhones.is(':checked'));
        });

        chkHideOnTablets.change(function (e) {
            var elemID = FindElementByID(lstModules.val());
            elem[elemID].hideOnTablets = chkHideOnTablets.is(':checked');
            lblNotification.text("");
            ApplyHideOn('hide-on-tablets', lstModules.val(), chkHideOnTablets.is(':checked'));
        });

        chkHideOnDesktops.change(function (e) {
            
            var elemID = FindElementByID(lstModules.val());
            elem[elemID].hideOnDesktops = chkHideOnDesktops.is(':checked');
            lblNotification.text("");
            ApplyHideOn('hide-on-desktops', lstModules.val(), chkHideOnDesktops.is(':checked'));
        });


        function ApplyHideOn(css, divID, hide) {

            if (jQuery('div#' + divID).length > 0) {
                if (hide == true && jQuery('div#' + divID).hasClass(css) == false)
                    jQuery('div#' + divID).addClass(css);
                else if (hide == false && jQuery('div#' + divID).hasClass(css) == true)
                    jQuery('div#' + divID).removeClass(css);


            }
            else {

                if (hide == true && jQuery('div#dnn_' + divID).hasClass(css) == false)
                    jQuery('div#dnn_' + divID).addClass(css);
                else if (hide == false && jQuery('div#dnn_' + divID).hasClass(css) == true)
                    jQuery('div#dnn_' + divID).removeClass(css);

            }

            hidJson.val(JSON.stringify(elem));
        }

       

        function PopulateControls(divID) {
            var elemNum = FindElementByID(divID);

            if (elem[elemNum].hideOnPhones == true)
                chkHideOnPhones.attr('checked', 'checked');
            else
                chkHideOnPhones.removeAttr('checked');

            if (elem[elemNum].hideOnTablets == true)
                chkHideOnTablets.attr('checked', 'checked');
            else
                chkHideOnTablets.removeAttr('checked');

            if (elem[elemNum].hideOnDesktops == true)
                chkHideOnDesktops.attr('checked', 'checked');
            else
                chkHideOnDesktops.removeAttr('checked');

        }



        function FindElementByID(elementID) {
            var i = 0;

            while (i < 100) {
                if (elem[i].divID == elementID)
                    return i;
                i++;
            }
            return -1;
        }
    }  


</script>


<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
       
       <input id="hidJson" type="hidden" runat="server"/>

       <h4 align="center">SpeedyApp Mobile Framework Control Panel</h3>
       <h6 align="center">Visible to Administrators Only</h6>
       <p align="center"><asp:Label ID="lblSkinPath" runat="server" Text="Label" 
               Font-Size="Smaller" Font-Bold="True" ForeColor="#3333FF"></asp:Label></p>
               
    <table id="FrameworkControl" width="400px">
        <tr>
            
            <td id="tdList"  rowspan="5">
                <asp:ListBox ID="lstModules" runat="server" Height="200px" Width="179px" 
                    onselectedindexchanged="lstModules_SelectedIndexChanged"></asp:ListBox>
            </td>
            <td >
                <asp:Label ID="Label2" runat="server" Text="Hide On Phones"></asp:Label>
                <asp:CheckBox ID="chkHideOnPhones" runat="server" 
                    oncheckedchanged="chkHideOnPhones_CheckedChanged" TextAlign="Left" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="Hide On Tablets"></asp:Label>
                <asp:CheckBox ID="chkHideOnTablets" runat="server" 
                    oncheckedchanged="chkHideOnTablets_CheckedChanged" TextAlign="Left" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Text="Hide On Desktop"></asp:Label>
                <asp:CheckBox ID="chkHideOnDesktops" runat="server" 
                    oncheckedchanged="chkHideOnDesktops_CheckedChanged" TextAlign="Left" />
            </td>
        </tr>
        
        <tr>
            
            <td>
                
                &nbsp;</td>
          
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" 
                    Text="Save Settings" ValidationGroup="SpeedyAppMobileFramework" />
            </td>
        </tr>
    </table>
           
    <asp:Panel ID="pnlSkinColor" runat="server">
<p align="center">
       <label>Skin Color: </label> <asp:DropDownList ID="cboSkinColor" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboSkinColor_SelectedIndexChanged"></asp:DropDownList></p>
</asp:Panel>
    
    <p align="center"><asp:Label ID="lblNotification" runat="server" ForeColor="#0033CC"></asp:Label></p>

    <p align="center"><asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label></p>

    </ContentTemplate>
    
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
        </Triggers>
    
     </asp:UpdatePanel>
    