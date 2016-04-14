
var ww = jQuery(window).width();

jQuery(document).ready(function() {
	jQuery(".nav li a").each(function() {
		if (jQuery(this).next().length > 0) {
			jQuery(this).addClass("parent");
		};
	})
	
	jQuery(".toggleMenu").click(function(e) {
		e.preventDefault();
		jQuery(this).toggleClass("active");
		jQuery(".nav").toggle();
	});
	
	//Search box text code
	jQuery('.SpeedySearchBox').val('Search...');
	
	jQuery('.SpeedySearchBox').click(function(event) {
		if(jQuery(this).val() == 'Search...')
			jQuery(this).val('');	
		event.stopPropagation();	
	});
	
	jQuery(document).click(function() {
   		 jQuery('.SpeedySearchBox').val('Search...');
	});	

	/***********End Search Box Text Code************/
	
	/**Back to Top Button ****/
	$(window).scroll(function() {
   			 if (jQuery(this).scrollTop() > 300) {				 
      			  jQuery('#backtotop').stop(true, true).fadeIn();
    		 } else {
        	 jQuery('#backtotop').stop(true, true).fadeOut();
  		     }
		});
		jQuery('#backtotop a').click(function(){
			jQuery('html, body').animate({scrollTop:0}, 'slow'); 
			return false; 
		}); 
    /*****End Back to Top Button ******/

    /***** Fixed Header ******/
		$(window).bind('scroll', function () {
		    if (jQuery(this).scrollTop() > 50) {
		        jQuery('.FixedHeader').addClass('fixed');
		    }
		    else {
		        jQuery('.FixedHeader').removeClass('fixed');
		    }
		});
    /*****End Back to Fixed Header ******/

    /** Social ****/
		jQuery('.Facebook,.Linkedin,.Twitter,.Rss,.pinterest').hover(function () {
		    jQuery(this).animate({ backgroundPosition: '0 -22' }, 200, 'linear');
		},
        function () {
            jQuery(this).animate({ backgroundPosition: '0 0' }, 200, 'linear')
        });
    /*****End Social ******/

    /***** Tabs ******/
		
	jQuery("#tabs").tabs();				
	jQuery(".accordion").accordion();
	adjustMenu();
})



//jQuery(window).bind('resize orientationchange', function() {
//	ww = jQuery(window).width();
//	adjustMenu();
//	jQuery('.nav').superfish();
//});



var adjustMenu = function() {
	if (ww < 768) {
		jQuery(".nav").addClass("MobileMenu");
		jQuery(".toggleMenu").css("display", "inline-block");
		
		if (!jQuery(".toggleMenu").hasClass("active")) {
			jQuery(".nav").hide();
		} else {
			jQuery(".nav").show();
		}
		jQuery(".nav li").unbind('mouseenter mouseleave');
		jQuery(".nav li a.parent").unbind('click').bind('click', function(e) {
			// must be attached to anchor element to prevent bubbling
			if ($(this).hasClass("clicked"))
			     window.location.href = $(this).attr('href');
			e.preventDefault();
			jQuery(this).parent("li").toggleClass("hover");
			jQuery(this).toggleClass("clicked");
		});
		
		
	} 
	else if (ww >= 768) {
		jQuery(".nav").removeClass("MobileMenu");
		jQuery(".toggleMenu").css("display", "none");
		
		jQuery(".nav").show();
		jQuery(".nav li").removeClass("hover");
		jQuery(".nav li a").unbind('click');
		/*jQuery(".nav li").unbind('mouseenter mouseleave').bind('mouseenter mouseleave', function() {
		 	// must be attached to li so that mouseleave is not triggered when hover over submenu
		 	jQuery(this).toggleClass('hover');
		});*/
	}
}

