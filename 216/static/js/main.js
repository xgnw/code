(function ($) {
    "use strict";

    function websites_init() {
        var websites_grid = $('.websites-grid'), websites_filter = $('.websites-filters');
        if (websites_grid) {
            websites_grid.shuffle({speed: 450, itemSelector: 'figure'});
            websites_filter.on("click", ".filter", function (e) {
                websites_grid.shuffle('update');
                e.preventDefault();
                $('.websites-filters .filter').parent().removeClass('active');
                $(this).parent().addClass('active');
                websites_grid.shuffle('shuffle', $(this).attr('data-group'));
            });
        }
    }

    function mobileMenuHide() {
        var windowWidth = $(window).width(), siteHeader = $('#site_header');
        if (windowWidth < 1025) {
            siteHeader.addClass('mobile-menu-hide');
            $('.menu-toggle').removeClass('open');
            setTimeout(function () {
                siteHeader.addClass('animate');
            }, 500);
        } else {
            siteHeader.removeClass('animate');
        }
    }

    function customScroll() {
        var windowWidth = $(window).width();
        if (windowWidth > 1024) {
            $('.animated-section, .single-page-content').each(function () {
                $(this).perfectScrollbar();
            });
        } else {
            $('.animated-section, .single-page-content').each(function () {
                $(this).perfectScrollbar('destroy');
            });
        }
    }

    $(function () {
        $('#contact_form').validator();
        $('#contact_form').on('submit', function (e) {
            if (!e.isDefaultPrevented()) {
                var url = "contact_form/contact_form.php";
                $.ajax({
                    type: "POST", url: url, data: $(this).serialize(), success: function (data) {
                        var messageAlert = 'alert-' + data.type;
                        var messageText = data.message;
                        var alertBox = '<div class="alert ' + messageAlert + ' alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' + messageText + '</div>';
                        if (messageAlert && messageText) {
                            $('#contact_form').find('.messages').html(alertBox);
                            $('#contact_form')[0].reset();
                        }
                    }
                });
                return false;
            }
        });
    });
    $(window).on('load', function () {
        $(".preloader").fadeOut(800, "linear");
        var ptPage = $('.animated-sections');
        if (ptPage[0]) {
            PageTransitions.init({menu: 'ul.main-menu',});
        }
    }).on('resize', function () {
        mobileMenuHide();
        $('.animated-section').each(function () {
            $(this).perfectScrollbar('update');
        });
        customScroll();
    });
    $(document).on('ready', function () {
        var movementStrength = 23;
        var height = movementStrength / $(document).height();
        var width = movementStrength / $(document).width();
        $("body").on('mousemove', function (e) {
            var pageX = e.pageX - ($(document).width() / 2), pageY = e.pageY - ($(document).height() / 2),
                newvalueX = width * pageX * -1, newvalueY = height * pageY * -1, elements = $('.lm-animated-bg');
            elements.addClass('transition');
            elements.css({"background-position": "calc( 50% + " + newvalueX + "px ) calc( 50% + " + newvalueY + "px )",});
            setTimeout(function () {
                elements.removeClass('transition');
            }, 300);
        })
        $('.menu-toggle').on("click", function () {
            $('#site_header').addClass('animate');
            $('#site_header').toggleClass('mobile-menu-hide');
            $('.menu-toggle').toggleClass('open');
        });
        $('.main-menu').on("click", "a", function (e) {
            mobileMenuHide();
        });
        $('.sidebar-toggle').on("click", function () {
            $('#blog-sidebar').toggleClass('open');
        });
        var $websites_container = $(".websites-grid");
        $websites_container.imagesLoaded(function () {
            websites_init(this);
        });
        var $container = $(".blog-masonry");
        $container.imagesLoaded(function () {
            $container.masonry();
        });
        customScroll();
        $('.text-rotation').owlCarousel({
            loop: true,
            dots: false,
            nav: false,
            margin: 0,
            items: 1,
            autoplay: true,
            autoplayTimeout: 3800,
            animateOut: 'animated-section-scaleDown',
            animateIn: 'animated-section-scaleUp'
        });
        $(".testimonials.owl-carousel").owlCarousel({
            nav: true,
            items: 3,
            loop: false,
            navText: false,
            autoHeight: true,
            margin: 25,
            responsive: {0: {items: 1,}, 480: {items: 1,}, 768: {items: 2,}, 1200: {items: 2,}}
        });
        $(".clients.owl-carousel").imagesLoaded().owlCarousel({
            nav: true,
            items: 2,
            loop: false,
            navText: false,
            margin: 10,
            autoHeight: true,
            responsive: {0: {items: 2,}, 768: {items: 4,}, 1200: {items: 5,}}
        });
    });
})(jQuery);