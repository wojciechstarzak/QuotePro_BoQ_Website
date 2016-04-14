<%@ Control language="C#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!--
quotepro.co.za
-->
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="Controls/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="QuoteProStyle" src="~/DesktopModules/SpeedyCustomStyle/ViewSpeedyCustomStyle.ascx" %>


<dnn:QuoteProStyle runat="server" MetaContent="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" MetaName="viewport" ShowOnQuery="False" QueryString="Desktop" QueryValue="1" /> 
<dnn:QuoteProStyle runat="server" AddJS="javascripts/modernizr.foundation.js" PathNameAlias="SkinPath" />
<dnn:QuoteProStyle runat="server" AddCSS="stylesheets/bootstrap.css" PathNameAlias="SkinPath" />
<dnn:QuoteProStyle runat="server" AddCSS="stylesheets/default.css" PathNameAlias="SkinPath" />
<dnn:QuoteProStyle runat="server" AddCSS="stylesheets/customizer.css" PathNameAlias="SkinPath" />
<dnn:QuoteProStyle runat="server" AddCSS="stylesheets/customizer" PathNameAlias="Customizer" />
<dnn:QuoteProStyle runat="server" AddCSS="stylesheets/Skin.css" PathNameAlias="SkinPath" />
<dnn:QuoteProStyle runat="server" AddJS="http://html5shiv.googlecode.com/svn/trunk/html5.js" Condition="lt IE 9" />
<dnn:QuoteProStyle runat="server" AddCSS="stylesheets/ie.css" PathNameAlias="SkinPath" Condition="lte IE 9" />
<dnn:QuoteProStyle runat="server" AddJS="javascripts/selectivizr-min.js" PathNameAlias="SkinPath" Condition="lt IE 9" />

<!-- START HTML FROM HERE --> 

<!-- container -->
<div id="container" CustomSection="edtPage" CustomTag="#container" UserText="Main Container" DisabledControls="#FontColor, #BorderColor, #Transparency, .MainStyle">
    <div id="MainWrapper" CustomSection="edtPage" CustomTag="#MainWrapper" UserText="Main Wrapper" DisabledControls="#BackgroundImage, #Transparency, #FontColor, #BorderColor, .BgColorGrad" WidthTag="#MainWrapper">
        <div id="HeaderTop" CustomSection="edtPage" CustomTag="#HeaderTop" UserText="Header Top" DisabledControls="#BorderColor,#BackgroundImage,#Transparency" WidthTag="#HeaderTop"> 
            <div class="row-fluid">
                <div id="SpeedyCustomizer" class="span12 Customizer spmodule" runat="server"> </div>
            </div>
            <div class="row-fluid">
                <div id="TopLeft" class="span5 TopLeft hide-on-phones spmodule" runat="server"></div>   
                <div id="Login" class="span5 LogIn hide-on-phones spmodule"> <div id="spLogin"> <dnn:LOGIN id="dnnLogin" runat="server" LegacyMode="false"/> <dnn:USER id="dnnUser" runat="server" LegacyMode="false"/> </div> </div> 
                <div id="Language" class="span2 mbLanguage mobile-centered spmodule"> <dnn:LANGUAGE runat="server" ID="dnnLANGUAGE" ShowMenu="False" ShowLinks="True" /> </div>                                                                                            
            </div> <!-- close 2Columns row-fluid  -->
        </div> <!-- close HeaderTop  --> 

        <div class="FixedHeader">
        <div id="Header" CustomSection="edtPage" CustomTag="#Header" UserText="Page Header" DisabledControls="#BackgroundImage, #FontColor" WidthTag="#Header">    
            <div class="row-fluid">
                <div id="Logo" class="span3 spmodule Logo mobile_centered"> <dnn:LOGO id="dnnLogo" runat="server"/></div> <!-- close logo  -->
                <div class="span9">
                    <div class="row-fluid">
                        <div id="TopNavPane" class="span9 SocialPane spmodule" runat="server"></div>
                        <div id="Search" class="span3 SearchDiv spmodule"> <div id="SearchBg"> <dnn:SEARCH ID="SEARCH1" runat="server" UseDropDownList="true" EnableTheming="true" Submit="Search" /> </div> </div>
                    </div>
                    <div class="row-fluid" id="MenuDiv">
                        <div id="Mainmenu" class="span10 Menu spmodule"> 
                            <div id="Mmenu" class="QuoteProDropDown"> <dnn:MENU ID="MENU1" MenuStyle="Superfish" runat="server" /> </div>
                        </div> 
                        <div id="SocialPane" class="span2 SocialPane spmodule" runat="server"></div> 
                    </div>
                </div>       
            </div><!-- close row-fluid  -->        
        </div> <!-- close Header  -->
        </div> <!-- close FixedHeader  -->
        
        <div id="SliderBg" CustomSection="edtPage" CustomTag="#SliderBg" UserText="Main Slider" DisabledControls="#FontColor" WidthTag="#SliderBg">
            <div class="row-fluid">
                <div id="SliderPane" class="span12 slider spmodule" runat="server"> </div>
            </div>
        </div> <!-- close SliderBg  -->

        <div class="CusRow">
            <div id="BoxAPane" class="CusDiv4 LeftC spmodule" runat="server"></div>
            <div id="BoxBPane" class="CusDiv4 LeftC spmodule" runat="server"></div>
            <div id="BoxCPane" class="CusDiv4 LeftC spmodule" runat="server"></div>
        </div> <!-- close 3Columns row-fluid  -->

        <div id="MpageBody" CustomSection="edtPage" CustomTag="#MpageBody" UserText="Main Page Body" DisabledControls="#FontColor, #BorderColor" WidthTag="#MpageBody">           
                <div class="row-fluid">
                    <div id="ContentPane" class="span12 spmodule" runat="server"></div>
                </div>

                <div class="row-fluid">
                    <div id="HalfA" class="span6 LeftC spmodule" runat="server"></div>
                    <div id="HalfB" class="span6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row-fluid  -->

                <div class="row-fluid">
                   <div id="SidebarA" class="span4 LeftC spmodule" runat="server"></div>   
                   <div id="PromoA" class="span8 LeftC spmodule" runat="server"></div>  
                </div><!-- close 2Columns -->

                <div class="row-fluid">
                    <div id="LeftSidePane" class="span4 LeftC spmodule" runat="server"></div>   
                    <div id="MainRightSide" class="span8">
                        <div class="row-fluid">
                            <div id="RightSideFullA" class="span12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row-fluid RSFull  --> 
                        <div class="row-fluid">
                            <div id="RightSideHalfA" class="span6 LeftC spmodule" runat="server"></div>   
                            <div id="RightSideHalfB" class="span6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close RS2Columns --> 
                        <div class="row-fluid">
                            <div id="RightSideFullB" class="span12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row-fluid RSFull  --> 
                        <div class="row-fluid">
                            <div id="RightSideHalfC" class="span6 LeftC spmodule" runat="server"></div>   
                            <div id="RightSideHalfD" class="span6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close RS2Columns -->
                    </div>  
                </div><!-- close Left Full Layout -->

                <div class="row-fluid">
                    <div id="FeatureA" class="span4 LeftC spmodule" runat="server"></div>
                    <div id="FeatureB" class="span4 LeftC spmodule" runat="server"></div>
                    <div id="FeatureC" class="span4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 3Columns row-fluid  -->

                <div class="row-fluid">
                    <div id="ShowcaseA" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="ShowcaseB" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="ShowcaseC" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="ShowcaseD" class="span3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 4Columns row-fluid  -->

                <div class="row-fluid">
                    <div id="LeftSide1Pane" class="span3 LeftC spmodule" runat="server"></div>  
                    <div id="MainCenter" class="span6">
                        <div class="row-fluid">
                            <div id="BothFullA" class="span12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row-fluid BSFull  --> 
                        <div class="row-fluid">
                            <div id="BothHalfA" class="span6 LeftC spmodule" runat="server"></div>   
                            <div id="BothHalfB" class="span6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close BS2Columns --> 
                        <div class="row-fluid">
                            <div id="BothFullB" class="span12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row-fluid BSFull  --> 
                        <div class="row-fluid">
                            <div id="BothHalfC" class="span6 LeftC spmodule" runat="server"></div>   
                            <div id="BothHalfD" class="span6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close BS2Columns -->
                    </div>
                    <div id="RightSide1Pane" class="span3 LeftC spmodule" runat="server"></div>  
                </div><!-- close Both Full Layout -->

                <div class="row-fluid">
                    <div id="FullA" class="span12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row-fluid  -->
               
                <div class="row-fluid">
                    <div id="HalfC" class="span6 LeftC spmodule" runat="server"></div>
                    <div id="HalfD" class="span6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row-fluid  -->

                <div class="row-fluid">
                    <div id="PromoB" class="span8 LeftC spmodule" runat="server"></div>
                    <div id="SidebarB" class="span4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row-fluid  --> 
                
                <div class="row-fluid">
                    <div id="FullB" class="span12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row-fluid  -->

                <div class="row-fluid">  
                    <div id="MainLeftSide" class="span8">
                        <div class="row-fluid">
                            <div id="LeftSideFullA" class="span12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row-fluid LSFull  --> 
                        <div class="row-fluid">
                            <div id="LeftSideHalfA" class="span6 LeftC spmodule" runat="server"></div>   
                            <div id="LeftSideHalfB" class="span6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close LS2Columns --> 
                        <div class="row-fluid">
                            <div id="LeftSideFullB" class="span12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row-fluid LSFull  --> 
                        <div class="row-fluid">
                            <div id="LeftSideHalfC" class="span6 LeftC spmodule" runat="server"></div>   
                            <div id="LeftSideHalfD" class="span6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close LS2Columns -->
                    </div>
                    <div id="RightSidePane" class="span4 LeftC spmodule" runat="server"></div>  
                </div> <!-- close Right Full Layout -->
                
                <div class="row-fluid">
                    <div id="FullC" class="span12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row-fluid  -->

                <div class="row-fluid">
                    <div id="ArticleA" class="span4 LeftC spmodule" runat="server"></div>
                    <div id="ArticleB" class="span4 LeftC spmodule" runat="server"></div>
                    <div id="ArticleC" class="span4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 3Columns row-fluid  -->    
                
                <div class="row-fluid">
                    <div id="OfferA" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="OfferB" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="OfferC" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="OfferD" class="span3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 4Columns row-fluid  -->

                <div class="row-fluid">
                    <div id="FullD" class="span12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row-fluid  -->

            </div> <!-- close MPageBody -->
            

            <div id="MainFooter" CustomSection="edtPage" CustomTag="#MainFooter" UserText="Footer" DisabledControls="#FontColor" WidthTag="#MainFooter">
                <div class="row-fluid">
                    <div id="FooterA" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="FooterB" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="FooterC" class="span3 LeftC spmodule" runat="server"></div>
                    <div id="FooterD" class="span3 LeftC spmodule" runat="server"></div>
                </div> <!-- close FooterMain  -->
            
                <div class="row-fluid">
                    <div class="FooterCopyRight">                    
                    <div class="span7">
                        <div class="row-fluid">
                            <div id="FooterNav" class="span12 FooterNav spmodule" runat="server"> </div>
                        </div>  
                        <div class="row-fluid">
                            <div id="Copyright" class="span12 Copyright spmodule"> <dnn:COPYRIGHT ID="COPYRIGHT1" runat="server" /></div>
                        </div>                     
                    </div>
                    <div id="EcommercePane" class="span5 spmodule" runat="server"> </div>
                    </div>
                </div> <!-- close row-fluid --> 
            </div> <!-- close MainFooter --> 
                    
    </div> <!-- Close MainWrapper -->
</div><!-- container -->
<!--END HTML HERE -->  
 

<!----------Back to Top Code - MUST COPY------------>
<div id="backtotop" style="display:none;"> <!-- Back to Top Button -->
   <a href="#">
      <img src="<%= SkinPath %>images/back_to_top_btn.png" border="0" alt="Back to TOP" />
   </a>
</div> 
<!-------------------------------------------------->

<div CustomSection="edtPage" CustomTag=".btn-inverse, .LearnMore a, .LearnMore2 a, .BdAreaTopCustom" UserText="Button/ReadMore Color" DisabledControls=".MainStyle"> </div> 
<div CustomSection="edtPage" CustomTag="#SearchTable #SpeedSearchTextBox > input" UserText="Search" DisabledControls="#BackgroundImage, #BorderColor, #Gradient, .GradPadd, .MainStyle"> </div> 
<div CustomSection="edtPage" CustomTag=".TitleColor, .WelcomeText a, .HomeList2 li a" UserText="Text Title Color" DisabledControls="#BackgroundImage, #BorderColor,.BgColorGrad, #Gradient, .GradPadd, .MainStyle"> </div> 

<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .nav > li:not(.current) > a" UserText="Main Menu"  MenuType='Main' DisabledControls="#BackgroundImage,#BorderColor, .BgColorGrad, .MainStyle"></div> 
<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .nav > li.current > a"  UserText="Main Menu Selected" MenuType='Main' DisabledControls="#BackgroundImage, .MainStyle, #BorderColor"></div>
<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .nav > li > a" MenuHover=".QuoteProDropDown .nav > li > a" MenuType='Main' UserText="Main Menu HighLight" DisabledControls="#BackgroundImage, #BorderColor,.MainStyle"></div>
<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .nav ul li a,.QuoteProDropDown .nav .current ul li a" MenuType='Sub' UserText="Main Sub Menu" DisabledControls="#BackgroundImage, .MainStyle"></div>
<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .nav ul li a" MenuHover=".QuoteProDropDown .nav ul li a" MenuType='Sub' UserText="Sub Menu HighLight" DisabledControls="#BackgroundImage,.MainStyle"></div>

<div CustomSection="edtMenu" CustomTag=".toggleMenu, a.toggleMenu" UserText="Mobile Menu Button" DisabledControls=".MainStyle"></div> 
<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .MobileMenu > li:not(.current) > a" UserText="Mobile Menu" DisabledControls="#BorderColor,#Gradient,.GradPadd,.MainStyle"></div> 
<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .MobileMenu > li.current > a" UserText="Mobile Menu Selected" DisabledControls="#BorderColor,#Gradient,.GradPadd,.MainStyle"></div>
<div CustomSection="edtMenu" CustomTag=".QuoteProDropDown .MobileMenu ul li a, .QuoteProDropDown .MobileMenu .current ul li a" UserText="Mobile Sub Menu" DisabledControls="#BackgroundImage,#Gradient,.GradPadd,#BorderColor,.MainStyle"> </div>

<script type="text/javascript" src="<%= SkinPath %>javascripts/script.js" ></script>
<script type="text/javascript" src="<%= SkinPath %>javascripts/jquery.backgroundpos.min.js" ></script>

































