jQuery(document).ready(function ($) {
    var initialWidth = 0;
	var windowWidth = 0;
	var subMenu;
	
    //On Hover Over
    function megaHoverOver() {
        $(this).addClass('mmItemHover').find(".megaborder").stop().slideDown('fast'); //Find sub and fade it in
		windowWidth = $(window).width();
		subMenu = $(this).find(".megaborder");
        setDimensions($(this));

    }

    //On Hover Out
    function megaHoverOut() {
        $(this).removeClass('mmItemHover').find(".megaborder").stop().slideUp('fast', function () { //Fade to 0 opactiy
            $(this).hide();  //after fading, hide it
        });
    }

    //Set dimensions of the dropdown
    function setDimensions(obj) {
        maxWidth = 0;
        maxHeight = 0;
        numColumns = 0;
        maxColumns =2; // set to desired number of colummns
        //Calculate widest category
        obj.find("li.category").each(function () { //for each ul...
            numColumns++;
            if (initialWidth == 0)
                initialWidth = $(this).width() + 30;
            

            maxWidth = (initialWidth > maxWidth) ? initialWidth : maxWidth; //Check current category width against largest width
        });
        maxWidth = (numColumns > maxColumns) ? (maxWidth * maxColumns) : (maxWidth * numColumns);

        //Calculate tallest category
        obj.find("li.category").each(function () { //for each ul...					
            maxHeight = ($(this).height() > maxHeight) ? $(this).height() : maxHeight; //Check current category height against largest height
        });

        obj.find(".megaborder").css({ 'width': maxWidth - 20  }); //Set Width
		
		var rightPos = subMenu.offset().left + subMenu.width();
		console.log(rightPos + " " + windowWidth);
		if(rightPos > windowWidth)
		{
			$(subMenu).css("margin-left",-rightPos + windowWidth - 20 );
		}
		
        obj.find("li.category").each(function () {
            var thisPosition = $(this).index() + 1; // node position of category
            if (thisPosition % 3 == 0) {
                $(this).addClass("mmRightColumn");
            }
        }); //.css({ 'height': maxHeight });
    }

    //Set custom configurations
    var config = {
        sensitivity: 2, // number = sensitivity threshold (must be 1 or higher)
        interval: 100, // number = milliseconds for onMouseOver polling interval
        over: megaHoverOver, // function = onMouseOver callback (REQUIRED)
        timeout: 0, // number = milliseconds delay before onMouseOut
        out: megaHoverOut // function = onMouseOut callback (REQUIRED)
    };

    //Trigger Hover intent with custom configurations
    $("ul.dnnmega li.mmHasChild").hoverIntent(config);

    //Trigger Touch Start event
    var firstTouch = true;
    var prevMenu;
    $("ul.dnnmega li.mmHasChild").bind("touchstart",
			function () {
			    prevMenu.hide();
			    if (firstTouch) {
			        firstTouch = false;
			        setDimensions($(this));

			        prevMenu = $(this);
			        $(this).find(".megaborder").stop().show(); //Find sub and fade it in
			        return false;
			    }
			}
		);
});