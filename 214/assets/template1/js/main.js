
/*----------------------------
  Guru - Portfolio Template 
  Author : BootEx
  Copyright 2017
----------------------------*/
(function ($) {
    "use strict";

    //======= PRELOADER ========//
    $(window).on('load',function () {
        $('#status').fadeOut(); 
        $('#preloader').delay(550).fadeOut('slow');
        $('body').delay(550).css({
            'overflow': 'visible'
        });
    });

    //======= SITE NAVBAR ========//
    var navMenu = $('.nav-menu')
    	navMenu.onePageNav();
    $(window).on('scroll resize',function(e) {
    	var introH = $('.intro-section').height() - 90;
    	if ($(this).scrollTop() > introH) {
    		$('nav').fadeIn(400);
    		navMenu.onePageNav();
    	}else{
    		$('nav').fadeOut(200);
    	}
    	e.preventDefault();
    });

    //======= RESPONSIVE MENU ========//
    $('.mobile-bar').on('click', function(e) {
    	$(this).toggleClass('active');
    	$('.nav-menu').toggleClass('active');
    	e.preventDefault();
    });


	//======= SMOOTH SCROLL ========//
    $('.nav-menu li a,.down').on('click', function(e){
		var anchor = $(this);
		if( anchor == 'undefined' || anchor == null || anchor.attr('href') == '#' ) 
			{ return; }
		if ( anchor.attr('href').indexOf('#') === 0 )
		{
			if( $(anchor.attr('href')).length )
			{
				$('html, body').stop().animate( { scrollTop: $(anchor.attr('href')).offset().top - 70 }, 750);					
			}
			e.preventDefault();
		}
	});


    //======= PROGRESS BAR  ========//
	$('.progress-bar-style').each(function() {
		var progress = $(this).data("progress");
		var prog_width = progress+'%';
		if (progress <= 100) {
			$(this).append('<div class="bar-inner" style="width:'+prog_width+'"><span>'+prog_width+'</span></div>');
		}else{
			$(this).append('<div class="bar-inner" style="width:100%"><span>'+prog_width+'</span></div>');
		}
	});


	//======= ISOTOP FILTERING JS  ========//
    $(window).on('load', function() { 
	    var grid_container = $('.portfolio_container'),
	    	grid_item = $('.grid-item');
	    	

	     grid_container.imagesLoaded(function () {
	        grid_container.isotope({
	            itemSelector: '.grid-item',
	       		layoutMode: 'masonry'
	        });
	    });

	    $('.portfolio-filter li').on('click', function (e) {
			$('.portfolio-filter li.active').removeClass('active');
		    $(this).addClass('active');
		    var selector = $(this).attr('data-filter');
		    grid_container.isotope({
		        filter: selector
		    });
		    return false;
		    e.preventDefault();
		});
	});


	//======= MAGNIDIC POPUP JS  ========//
	$('.work-zoom').magnificPopup({
		type:'inline'
    });
    $('.link').magnificPopup({
        type:'image',
        gallery:{enabled:true},
        zoom:{enabled: true, duration: 300}
    });

// vu //
      window.onload = function(){
    var vu = document.getElementsByClassName('vu')
    for(var i = 0;i<vu.length;i++) {
        var son = vu[i];
        setson(son);
    }
    function setson(son) {
        setTimeout(function(){
            addClass(son,'nu');
            setTimeout(function(){
                removeClass(son,'vu');
            },1000)
        },500)
    }
    
    function addClass(element,name) {
        if(!element.className.match(new RegExp('(^|\\s)'+name+'(\\s|$)'))) {
            element.className += ' ' + name;
        }
    }
    function removeClass(element,name) {
        if(element.className.match(new RegExp('(^|\\s)'+name+'(\\s|$)'))) {
            element.className = element.className.replace(new RegExp('(^|\\s)'+name+'(\\s|$)'),' ');
        }
    }
};

// //
document.onkeydown = function(){

    if(window.event && window.event.keyCode == 123) {
        alert("NMSL？");
        window.event.cancelBubble = true;
        window.event.returnValue = false;
    }
    if(window.event && window.event.keyCode == 13) {
        window.event.keyCode = 505;
    }
    if(window.event && window.event.keyCode == 8) {
        alert(str+"\n请使用Del键进行字符的删除操作！");
        window.event.returnValue=false;
    }

}

    window.oncontextmenu=function(){return false;} 




window.onkeydown = window.onkeyup = window.onkeypress = function (event) {undefined

if (event.keyCode == 123) {undefined

event.preventDefault(); // 阻止默认事件行为

window.event.returnValue = false;

}

}

function ctrl_key() {undefined



if (event.keyCode == 17) {undefined

window.alert("nmsl！");

return false;

}

}

    document.body.onselectstart = function() {
    self.event.returnValue=false
};

    document.body.oncontextmenu = function() {
    self.event.returnValue=false
};

document.onkeydown = function(){
    if (event.ctrlKey && window.event.keyCode==85){
    return false;
    }
    }
    
    document.onkeydown = function(){
	//禁止ctrl+s
    if (event.ctrlKey && window.event.keyCode==83){
    return false;
    }
    }

	//======= Testinonial CAROUSEL  ========//
     $(".testinonial-carousel").owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        autoplay: true,
        margin:5,
        autoplayTimeout: 3000,
        slideSpeed: 1000,
        responsive:{
			0:{items:2,},
			480:{items:3,},
			750:{items:4,},
			950:{items:5,},
			1170:{items:6,},
		}
    });

  
	//======= Contact Form ========//
	$('#contact-form').on('submit', function(e) {
		var form = $(this);
		var formdata = $(this).serialize();
		var chack = $('#form-chack');

		function reset_form(){
		 	$("#name").val('');
			$("#email").val('');
			$("#massage").val('');
		} 

		$.ajax({
			url:  $(form).attr('action'),
			type: 'POST',
			data: formdata,
			success : function(text){
	            if (text == "success"){
	            	$('#form-chack').fadeIn(400);
	            	reset_form();
	                chack.text("Your message has been sent :)"); // Message Send Text
	                chack.removeClass('error');
					chack.addClass('send');
					$('#form-chack').fadeOut(8000);

	            } else {
	            	$('#form-chack').fadeIn(400);
	            	reset_form();
	                chack.text("Oops! something wrong."); // Message Error Text
					chack.removeClass('send');
					chack.addClass('error');
					$('#form-chack').fadeOut(8000);
	            }
	        }
		});
		e.preventDefault();
	});



	
	
	
})(jQuery);
			