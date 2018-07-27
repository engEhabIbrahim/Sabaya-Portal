(function($) {
    "use strict";

    jQuery(document).ready(function($) {

        // Header Slide
        $(".header-slider").owlCarousel({
            items: 1,
            loop: true,
            dots: true,
            nav: true,
            navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            autoplay: true,
            autoplayTimeout: 5000,
            animateIn: 'pulse',
            animateOut: 'fadeOut',
            smartSpeed: 250,
            autoHeight:true
        });

        // Product Carousel
        $(".product-carousel").owlCarousel({
            loop: true,
            dots: false,
            nav: true,
            navText: ['<i class="fa fa-long-arrow-alt-left"></i>', '<i class="fa fa-long-arrow-alt-right"></i>'],
            margin: 30,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2,
                },
                1000: {
                    items: 3
                },
                1200: {
                    items: 4
                }
            }
        });

        // testimonial Carousel
        $(".testimonial-carousel").owlCarousel({
            loop: true,
            dots: true,
            margin: 30,
            autoplay: false,
            autoplayTimeout: 3000,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2,
                },
                1200: {
                    items: 3
                }
            }
        });

        // partner-carousel
        $(".partner-carousel").owlCarousel({
            loop: true,
            dots: true,
            nav: false,
            margin: 30,
            autoplay: true,
            autoplayTimeout: 3000,
            responsive: {
                0: {
                    items: 2
                },
                700: {
                    items: 4,
                },
                1000: {
                    items: 6
                }
            }
        });

        // MagnificPopup
        $('a.popup').magnificPopup({ type: 'image' });
        $('.gallery-items > a.popup').magnificPopup({ 
            type: 'image',
            gallery: {
                  enabled: true,
                }

        });
        $('.product-carousel a.mfp-popup').magnificPopup({ type: 'image' });
        // Megnific Popup Video BTN
        $(".watch-video").magnificPopup({ type: 'iframe' });


        /* --------------------------------------
            Scroll UP
        -------------------------------------- */

        $(window).on('scroll', function() {
            if ($(this).scrollTop() > 100) {
                $('.scrollup').fadeIn();
            } else {
                $('.scrollup').fadeOut();
            }
        });

        $('.scrollup').on('click', function() {
            $("html, body").animate({
                scrollTop: 0
            }, 600);
            return false;
        });

        // Search
        var changeClass = function(name) {
            $('#search').removeAttr('class').addClass(name);
        }

        /*------------------------------------
            Search
        --------------------------------------*/

        $('.search__open').on('click', function() {
            $('body').toggleClass('search__box__show__hide');
            return false;
        });

        $('.search__close__btn .search__close__btn_icon').on('click', function() {
            $('body').toggleClass('search__box__show__hide');
            return false;
        });

        
        /*------------------------------------
            Sticky Menu
        --------------------------------------*/

        var windows = $(window);
        var stick = $(".header-sticky");
        windows.on('scroll', function() {
            var scroll = windows.scrollTop();
            if (scroll < 10) {
                stick.removeClass("sticky");
            } else {
                stick.addClass("sticky");
            }
        });

        /* --------------------------------------
            LOAD MORE GALLERY
        -------------------------------------- */

        $(".gallery-load").slice(0, 6).show();
        $("#gallery-load-pro").on('click', function(e) {
            e.preventDefault();
            $("#gallery-ti-port-load").addClass("ti-port-load-show");
            $("#gallery-ti-port-load").animate({
                    display: "block"
                }, 500,
                function() {
                    // Animation complete.
                    $(".gallery-load:hidden").slice(0, 3).slideDown();
                    if ($(".gallery-load:hidden").length === 0) {
                        $("#gallery-load-pro").text("No more");
                    }
                    $("#gallery-ti-port-load").removeClass("ti-port-load-show");
                }
            );

        });

        /*------------------------------------
            jQuery MeanMenu
        --------------------------------------*/
        $('.mobile-menu-active').meanmenu({
            meanScreenWidth: "991",
            meanMenuContainer: '.mobile-menu'
        });

        /* last  2 li child add class */
        $('ul.menu > li').slice(-2).addClass('last-elements');




    });


    jQuery(window).on('load', function() {

        // Sticky Nav
        $(".sticky-nav").sticky({ topSpacing: 0 });

        // // Preloader
        jQuery(".preloader").fadeOut('slow');

    });


}(jQuery));