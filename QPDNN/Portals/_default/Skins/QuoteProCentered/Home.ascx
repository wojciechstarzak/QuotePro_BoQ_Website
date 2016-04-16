<%@ Control language="C#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!--
SpeedyApplication.com Responsive Mobile Web Framework For DotNetNuke
Copyright (c) 2012 SpeedyApplication.com .
All Rights Reserved.
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
<%@ Register TagPrefix="dnn" TagName="SpeedyStyle" src="~/DesktopModules/SpeedyCustomStyle/ViewSpeedyCustomStyle.ascx" %>

<dnn:SpeedyStyle runat="server" MetaContent="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" MetaName="viewport" ShowOnQuery="False" QueryString="Desktop" QueryValue="1" /> 
<dnn:SpeedyStyle runat="server" AddCSS="stylesheets/bootstrap.css" PathNameAlias="SkinPath" />
<dnn:SpeedyStyle runat="server" AddCSS="stylesheets/default.css" PathNameAlias="SkinPath" />
<dnn:SpeedyStyle runat="server" AddCSS="stylesheets/customizer.css" PathNameAlias="SkinPath" />
<dnn:SpeedyStyle runat="server" AddCSS="stylesheets/customizer" PathNameAlias="Customizer" />
<dnn:SpeedyStyle runat="server" AddCSS="stylesheets/Skin.css" PathNameAlias="SkinPath" />
<dnn:SpeedyStyle runat="server" AddCSS="stylesheets/ie.css" PathNameAlias="SkinPath" Condition="lte IE 9" />


<!-- START HTML FROM HERE --> 

<script>
    $('body').scrollspy({ target: '#navbar-nav' })

    $(document).ready(function () { 
    //setCarouselHeight('#customerCarousel');
    })

    function setCarouselHeight(id) {
        var slideHeight = [];

        $(id).find('.item').each(function () {
            // add all slide heights to an array
            slideHeight.push($(this).height());
        });

        // find the tallest item
        max = Math.max.apply(null, slideHeight);

        // set the slide's height
        $(id + ' .carousel-inner').each(function () {
            $(this).css('height', (max + 10) + 'px');
        });
    }
</script>

<!-- container -->
<div id="MainWrapper" CustomSection="edtPage" CustomTag="#MainWrapper" UserText="Main Wrapper" DisabledControls="#BackgroundImage, #Transparency, #FontColor, #BorderColor, .BgColorGrad" WidthTag="#MainWrapper">
     <header id="Header" CustomSection="edtPage" CustomTag="#Header" UserText="Page Header" DisabledControls="#BackgroundImage, #FontColor" WidthTag="#Header">  
         <div class="row">
             <div class="col-md-2 col-md-offset-1 col-xs-12">
                   <a class="navbar-brand" href="#">
                            <img alt="QuotePro Logo" class="img-responsive" src="<%= SkinPath %>images/logo.png" />
                   </a>
             </div>
             <div class="col-md-4 col-md-offset-1">
                         <nav role="navigation" class="navbar navbar-default">
                             <div class="row">
                             <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                              </button>
                             </div>
                         <div id="navbarCollapse" class="collapse navbar-collapse">
                                <ul class="nav navbar-nav" id="navbar-nav">
                                  <li class="active"><a href="#About">About</a></li>
                                  <li><a href="#Features">Features</a></li> 
                                  <li><a href="#Pricing">Pricing</a></li> 
                                  <li><a href="#Support">Support</a></li> 
                                  <li><a href="#Contact">Contact</a></li> 
                                </ul>
                          </div>
                    </nav>
                </div>
             <div id="TopRightnavPane" class="col-md-2 spmodule col-md-offset-1" runat="server">
             </div>
         </div>
    </header><!-- close Header  -->
    <div id="container" CustomSection="edtPage" CustomTag="#container" UserText="Main Container" DisabledControls="#FontColor, #BorderColor, #Transparency, .MainStyle" class="container-fluid">

        <div id="HeaderTop" CustomSection="edtPage" CustomTag="#HeaderTop" UserText="Header Top" DisabledControls="#BorderColor,#BackgroundImage,#Transparency" WidthTag="#HeaderTop"> 
            <div class="row">
                <div id="SpeedyCustomizer" class="col-md-12 Customizer spmodule" runat="server"> </div>
            </div>
        </div> <!-- close HeaderTop  --> 
        
            <div id="AboveImageBg" CustomSection="edtPage" CustomTag="#AboveImageBg" UserText="Above Image" DisabledControls="#FontColor" WidthTag="#AboveImageBg">
                <div class="row">
                    <div id="AboveImage" class="col-md-12 spmodule" runat="server"> </div>
                </div>
            </div> <!-- close AboveSliderBg  -->
        
            <div id="ImageBg" CustomSection="edtPage" CustomTag="#ImageBg" UserText="Main Image Section" DisabledControls="#FontColor" WidthTag="#ImageBg">
                <div class="row">
                    <div id="MainImagePane" class="col-md-12 spmodule" runat="server"> </div>
                </div>
                <div class="row">
                        <div id="HalfSliderA" class="col-md-6 LeftC spmodule" runat="server"></div>
                        <div id="HalfSliderB" class="col-md-6 LeftC spmodule" runat="server"></div>
                    </div> <!-- close 2Columns row  -->
                
                <div class="row">
                    <div id="WholeWidth" class="col-md-12 spmodule" runat="server"> </div>
                </div>
                
            </div> <!-- close ImageBg  -->

            <div class="row">
                <div id="BoxAPane" class="col-md-4 LeftC spmodule" runat="server"></div>
                <div id="BoxBPane" class="col-md-4 LeftC spmodule" runat="server"></div>
                <div id="BoxCPane" class="col-md-4 LeftC spmodule" runat="server"></div>
            </div> <!-- close 3Columns row  -->
        
            <div class="row">
                <div id="BoxDPane" class="col-md-3 LeftC spmodule" runat="server"></div>
                <div id="BoxEPane" class="col-md-6 LeftC spmodule" runat="server"></div>
                <div id="BoxFPane" class="col-md-3 LeftC spmodule" runat="server"></div>
            </div> <!-- close 3Columns row  -->

            <div id="GreyBodyTop" class="GreyBodyTop" CustomSection="edtPage" CustomTag="#GreyBodyTop" UserText="Grey Body Top" DisabledControls="#FontColor, #BorderColor" WidthTag="#GreyBodyTop">           
                <div class="row">
                    <div id="GreyContentPane" class="col-md-12 spmodule" runat="server"></div>
                </div>

                <div class="row">
                    <div id="GreyHalfA" class="col-md-6 LeftC spmodule" runat="server"></div>
                    <div id="GreyHalfB" class="col-md-6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row  -->

                <div class="row">
                    <div id="GreyFeatureA" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="GreyFeatureB" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="GreyFeatureC" class="col-md-4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 3Columns row  -->

                <div class="row">
                    <div id="GreyShowcaseA" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyShowcaseB" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyShowcaseC" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyShowcaseD" class="col-md-3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 4Columns row  -->
            </div> <!-- close GreyBodyTop -->

            <div id="SliderBg" class="SliderBg" CustomSection="edtPage" CustomTag="#SliderBg" UserText="Main Slider" DisabledControls="#FontColor" WidthTag="#SliderBg">
            <div class="row">
                <div id="SliderPane" class="col-md-12 slider spmodule" runat="server"> </div>
            </div>
            <div class="row">
                    <div id="SliderHalfA" class="col-md-6 LeftC spmodule" runat="server"></div>
                    <div id="SliderHalfB" class="col-md-6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row  -->
                
            <div class="row">
                <div id="WholeSlider" class="col-md-12 slider spmodule" runat="server"> </div>
            </div>
                
            </div> <!-- close SliderBg  -->
                
        
            <div id="MpageBody" CustomSection="edtPage" CustomTag="#MpageBody" UserText="Main Page Body" DisabledControls="#FontColor, #BorderColor" WidthTag="#MpageBody">           
                <!-- features rows -->
                <div class="row">
                    <div id="ContentPane" class="col-md-12 spmodule" runat="server"></div>
                </div>
                <div class="row">
                    <div id="CenteredDivA" class="col-md-6 col-md-offset-3 spmodule" runat="server"></div>
                </div>
                <div class="row">
                    <div id="CenteredDivB" class="col-md-8 col-md-offset-2 spmodule" runat="server"></div>
                </div>
            <!--END features rows -->


                <div class="row">
                    <div id="HalfA" class="col-md-6 LeftC spmodule" runat="server"></div>
                    <div id="HalfB" class="col-md-6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row  -->

                <div class="row">
                   <div id="SidebarA" class="col-md-4 LeftC spmodule" runat="server"></div>   
                   <div id="PromoA" class="col-md-8 LeftC spmodule" runat="server"></div>  
                </div><!-- close 2Columns -->

                <div class="row">
                    <div id="LeftSidePane" class="col-md-4 LeftC spmodule" runat="server"></div>   
                    <div id="MainRightSide" class="col-md-8">
                        <div class="row">
                            <div id="RightSideFullA" class="col-md-12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row RSFull  --> 
                        <div class="row">
                            <div id="RightSideHalfA" class="col-md-6 LeftC spmodule" runat="server"></div>   
                            <div id="RightSideHalfB" class="col-md-6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close RS2Columns --> 
                        <div class="row">
                            <div id="RightSideFullB" class="col-md-12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row RSFull  --> 
                        <div class="row">
                            <div id="RightSideHalfC" class="col-md-6 LeftC spmodule" runat="server"></div>   
                            <div id="RightSideHalfD" class="col-md-6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close RS2Columns -->
                    </div>  
                </div><!-- close Left Full Layout -->


                <!-- steps rows -->
                <div class="row">
                    <div id="FeatureA" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="FeatureB" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="FeatureC" class="col-md-4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 3Columns row  -->

                <div class="row">
                    <div id="ShowcaseA" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="ShowcaseB" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="ShowcaseC" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="ShowcaseD" class="col-md-3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 4Columns row  -->

                <!-- steps rows -->
                    <div class="row">
                    <div id="LeftSide1Pane" class="col-md-3 LeftC spmodule" runat="server"></div>  
                    <div id="MainCenter" class="col-md-6">
                        <div class="row">
                            <div id="BothFullA" class="col-md-12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row BSFull  --> 
                        <div class="row">
                            <div id="BothHalfA" class="col-md-6 LeftC spmodule" runat="server"></div>   
                            <div id="BothHalfB" class="col-md-6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close BS2Columns --> 
                        <div class="row">
                            <div id="BothFullB" class="col-md-12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row BSFull  --> 
                        <div class="row">
                            <div id="BothHalfC" class="col-md-6 LeftC spmodule" runat="server"></div>   
                            <div id="BothHalfD" class="col-md-6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close BS2Columns -->
                    </div>
                    <div id="RightSide1Pane" class="col-md-3 LeftC spmodule" runat="server"></div>  
                </div><!-- close Both Full Layout -->

                <div class="row">
                    <div id="FullA" class="col-md-12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row  -->
               
                <div class="row">
                    <div id="HalfC" class="col-md-6 LeftC spmodule" runat="server"></div>
                    <div id="HalfD" class="col-md-6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row  -->

                <div class="row">
                    <div id="PromoB" class="col-md-8 LeftC spmodule" runat="server"></div>
                    <div id="SidebarB" class="col-md-4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row  --> 
                
                <div class="row">
                    <div id="FullB" class="col-md-12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row  -->

                <div class="row">  
                    <div id="MainLeftSide" class="col-md-8">
                        <div class="row">
                            <div id="LeftSideFullA" class="col-md-12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row LSFull  --> 
                        <div class="row">
                            <div id="LeftSideHalfA" class="col-md-6 LeftC spmodule" runat="server"></div>   
                            <div id="LeftSideHalfB" class="col-md-6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close LS2Columns --> 
                        <div class="row">
                            <div id="LeftSideFullB" class="col-md-12 LeftC spmodule" runat="server"></div>
                        </div><!-- close row LSFull  --> 
                        <div class="row">
                            <div id="LeftSideHalfC" class="col-md-6 LeftC spmodule" runat="server"></div>   
                            <div id="LeftSideHalfD" class="col-md-6 LeftC spmodule" runat="server"></div>  
                        </div><!-- close LS2Columns -->
                    </div>
                    <div id="RightSidePane" class="col-md-4 LeftC spmodule" runat="server"></div>  
                </div> <!-- close Right Full Layout -->
                
                <div class="row">
                    <div id="FullC" class="col-md-12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row  -->

                <div class="row">
                    <div id="ArticleA" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="ArticleB" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="ArticleC" class="col-md-4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 3Columns row  -->    
                
                <div class="row">
                    <div id="OfferA" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="OfferB" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="OfferC" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="OfferD" class="col-md-3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 4Columns row  -->

                <div class="row">
                    <div id="FullD" class="col-md-12 LeftC spmodule" runat="server"></div>
                </div> <!-- close 1Columns row  -->

            </div> <!-- close MPageBody -->

            <div id="GreyBodyBottom" CustomSection="edtPage" CustomTag="#GreyBodyBottom" UserText="Grey Body Bottom" DisabledControls="#FontColor, #BorderColor" WidthTag="#GreyBodyBottom">           
                <div class="row">
                    <div id="GreyBottomContentPane" class="col-md-12 spmodule" runat="server"></div>
                </div>

                <div class="row">
                    <div id="GreyBottomHalfA" class="col-md-6 LeftC spmodule" runat="server"></div>
                    <div id="GreyBottomHalfB" class="col-md-6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row  -->

                <div class="row">
                    <div id="GreyBottomFeatureA" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="GreyBottomFeatureB" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="GreyBottomFeatureC" class="col-md-4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 3Columns row  -->

                <div class="row">
                    <div id="GreyBottomShowcaseA" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyBottomShowcaseB" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyBottomShowcaseC" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyBottomShowcaseD" class="col-md-3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 4Columns row  -->

                <div class="row">
                    <div id="GreyColumnA" class="col-md-2 col-md-offset-1 LeftC spmodule" runat="server"></div>
                    <div id="GreyColumnB" class="col-md-2 LeftC spmodule" runat="server"></div>
                    <div id="GreyColumnC" class="col-md-2 LeftC spmodule" runat="server"></div>
                    <div id="GreyColumnD" class="col-md-2 LeftC spmodule" runat="server"></div>
                    <div id="GreyColumnE" class="col-md-2 LeftC spmodule" runat="server"></div>
                </div> <!-- close 5Columns row  -->

                <div class="row">
                    <div id="GreyColumnF" class="col-md-2 col-md-offset-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyColumnG" class="col-md-2 LeftC spmodule" runat="server"></div>
                    <div id="GreyColumnH" class="col-md-2 LeftC spmodule" runat="server"></div>
                </div> <!-- close 5Columns row  -->

            </div> <!-- close GreyBodyBottom -->          

            <div class="row" id="centeredWhite">
                <div id="CenteredonWhiteA" class="col-md-6 col-md-offset-3 spmodule" runat="server"></div>
            </div>
            <div class="row">
                <div id="CenteredonWhiteB" class="col-md-8 col-md-offset-2 spmodule" runat="server"></div>
            </div>
            <div class="row">
                <div id="CenteredonWhiteC" class="col-md-4 col-md-offset-4 spmodule" runat="server"></div>
            </div>

            <div id="GreyVersionShowcase" class="GreyVersionShowcase" CustomSection="edtPage" CustomTag="#GreyVersionShowcase" UserText="Grey Version Showcase" DisabledControls="#FontColor, #BorderColor" WidthTag="#GreyVersionShowcase">           
                <div class="row">
                    <div id="GreyVersionShowcase1" class="col-md-12 spmodule" runat="server"></div>
                </div>
                <div class="row">
                    <div id="GreyVersionShowcase15" class="col-md-8 col-md-offset-2 spmodule" runat="server"></div>
                </div>
                <div class="row">
                    <div id="GreyVersionShowcase16" class="col-md-10 col-md-offset-1 spmodule" runat="server"></div>
                </div>

                <div class="row">
                    <div id="GreyVersionShowcase2" class="col-md-6 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase3" class="col-md-6 LeftC spmodule" runat="server"></div>
                </div> <!-- close 2Columns row  -->

                <div class="row">
                    <div id="GreyVersionShowcase4" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase5" class="col-md-4 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase6" class="col-md-4 LeftC spmodule" runat="server"></div>
                </div> <!-- close 3Columns row  -->

                <div class="row">
                    <div id="GreyVersionShowcase7" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase8" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase9" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase10" class="col-md-3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 4Columns row  -->

                <div class="row">
                    <div id="GreyVersionShowcase12" class="col-md-3 col-md-offset-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase13" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="GreyVersionShowcase14" class="col-md-3 LeftC spmodule" runat="server"></div>
                </div> <!-- close 5Columns row  -->

            </div> <!-- close GreyBodyBottom -->    


    </div> <!-- container -->

                <div class="container" id="MainFooter" CustomSection="edtPage" CustomTag="#MainFooter" UserText="Footer" DisabledControls="#FontColor" WidthTag="#MainFooter">
                <div class="row">
                    <div id="FooterA" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="FooterB" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="FooterC" class="col-md-3 LeftC spmodule" runat="server"></div>
                    <div id="FooterD" class="col-md-3 LeftC spmodule" runat="server"></div>
                </div> <!-- close FooterMain  -->
                 <div class="row">
                    <div id="FooterA1" class="col-md-2 col-md-offset-1 LeftC spmodule" runat="server"></div>
                    <div id="FooterB1" class="col-md-2 LeftC spmodule" runat="server"></div>
                    <div id="FooterC1" class="col-md-2 LeftC spmodule" runat="server"></div>
                    <div id="FooterD1" class="col-md-2 LeftC spmodule" runat="server"></div>
                    <div id="FooterE1" class="col-md-2 LeftC spmodule" runat="server"></div>
                </div> <!-- close FooterMain  -->

                <div class="row">
                    <div id="FooterE" class="col-md-10 col-md-offset-1 LeftC spmodule" runat="server"></div>
                </div> <!-- close FooterMain  -->
                    <div class="row">
                <div id="FooterE2" class="col-md-8 col-md-offset-2 LeftC spmodule" runat="server"></div>
                </div> <!-- close FooterMain  -->
            
                <div class="row">
                    <div class="FooterCopyRight">                    
                    <div class="col-md-7">
                        <div class="row">
                            <div id="FooterNav" class="col-md-12 FooterNav spmodule" runat="server"> </div>
                        </div>  
                        <div class="row">
                            <div id="Copyright" class="col-md-12 Copyright spmodule"> <dnn:COPYRIGHT ID="COPYRIGHT1" runat="server" /></div>
                        </div>                     
                    </div>
                    <div id="EcommercePane" class="col-md-5 spmodule" runat="server"> </div>
                    </div>
                </div> <!-- close row --> 
            </div> <!-- close MainFooter --> 
                    

</div><!-- Close MainWrapper -->
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

<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .nav > li:not(.current) > a" UserText="Main Menu"  MenuType="Main" DisabledControls="#BackgroundImage,#BorderColor, .BgColorGrad, .MainStyle"></div> 
<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .nav > li.current > a"  UserText="Main Menu Selected" MenuType="Main" DisabledControls="#BackgroundImage, .MainStyle, #BorderColor"></div>
<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .nav > li > a" MenuHover=".SpeedyDropDown .nav > li > a" MenuType="Main" UserText="Main Menu HighLight" DisabledControls="#BackgroundImage, #BorderColor,.MainStyle"></div>
<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .nav ul li a,.SpeedyDropDown .nav .current ul li a" MenuType="Sub" UserText="Main Sub Menu" DisabledControls="#BackgroundImage, .MainStyle"></div>
<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .nav ul li a" MenuHover=".SpeedyDropDown .nav ul li a" MenuType="Sub" UserText="Sub Menu HighLight" DisabledControls="#BackgroundImage,.MainStyle"></div>

<div CustomSection="edtMenu" CustomTag=".toggleMenu, a.toggleMenu" UserText="Mobile Menu Button" DisabledControls=".MainStyle"></div> 
<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .MobileMenu > li:not(.current) > a" UserText="Mobile Menu" DisabledControls="#BorderColor,#Gradient,.GradPadd,.MainStyle"></div> 
<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .MobileMenu > li.current > a" UserText="Mobile Menu Selected" DisabledControls="#BorderColor,#Gradient,.GradPadd,.MainStyle"></div>
<div CustomSection="edtMenu" CustomTag=".SpeedyDropDown .MobileMenu ul li a, .SpeedyDropDown .MobileMenu .current ul li a" UserText="Mobile Sub Menu" DisabledControls="#BackgroundImage,#Gradient,.GradPadd,#BorderColor,.MainStyle"> </div>

<script type="text/javascript" src="<%= SkinPath %>javascripts/script.js" ></script>
<script type="text/javascript" src="<%= SkinPath %>javascripts/jquery.backgroundpos.min.js" ></script>
<dnn:SpeedyStyle runat="server" AddJS="javascripts/selectivizr-min.js" PathNameAlias="SkinPath" Condition="lt IE 9" />
<dnn:SpeedyStyle runat="server" AddJS="javascripts/modernizr.foundation.js" PathNameAlias="SkinPath" />
<dnn:SpeedyStyle runat="server" AddJS="javascripts/bootstrap.js" PathNameAlias="SkinPath" />
<dnn:SpeedyStyle runat="server" AddJS="http://html5shiv.googlecode.com/svn/trunk/html5.js" Condition="lt IE 9" />






























