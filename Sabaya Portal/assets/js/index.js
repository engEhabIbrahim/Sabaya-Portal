(function ($) {
    $.fn.as = function (o) {
        var defaults = {
            animation_duration: 700,
            animation_interval: 8000,
            touch_draglimit: 80
        };

        // states
        var state = {
            slide_length: 0,
            slide_current: 1,
            slide_next: 0,
            index_current: 1,
            index_next: 0,
            interval: null,
            paused: false,
            resizing: false,
            doTransition: false,
            clickEvent: "click"
        };

        if (Modernizr) {
            Modernizr.csstransitions ? doTransition = true : doTransition = false;
            Modernizr.touch ? clickEvent = "touchstart" : clickEvent = "click";
        }

        var settings = $.extend({}, defaults, o);

        // create namespace
        var slider = {};

        // set reference to slider element
        var el = this;

        // the clones
        var clone_first,
            clone_last;

        // responsive stuff
        var windowWidth = $(window).width(),
            windowHeight = $(window).height(),
            sliderWidth = el.width();

        /* 
         *      Internal functions
         * * */
        // initiate slider
        var init = function () {
            setup();
            //update_proportions();

            start_slider();
            update_proportions();
            i_interact();
        };

        var setup = function () {
            // wrap the slider
            el.wrap('<div class="as-wrap"><div class="as-view"></div></div>');

            // set namespace 
            slider.view = el.parent();
            slider.wrap = slider.view.parent();

            // mark slider list 
            slider.slider = $("> ul", el);
            slider.slider.addClass("as-slider").attr("data-current-slide", state.slide_current).attr("data-current-index", state.index_current);

            state.slide_length = slider.slider.children("li").length;

            // add progress bar
            slider.wrap.append('<div class="as-progress"><div class="as-progress-value"></div></div>');
            slider.progress = slider.wrap.find(".as-progress-value");

            // add marker
            slider.wrap.append('<ol class="as-markers"/>');
            $.each(slider.slider.children("li"), function (key, slide) {
                var slide_num = key + 1,
                    goToSlide = key + 1,
                    marker = $('<li class="as-mark"><a href="#" data-slide="' + slide_num + '"><span>&bull;</span></a></li>');

                goToSlide = key + 2;

                if (slide_num === state.slide_current) marker.addClass("active");

                // bind click
                marker.on(clickEvent, "a", function (e) {
                    e.preventDefault();
                    progress_reset();
                    state.paused = false;
                    if (state.slide_current !== goToSlide) doSlide(false, goToSlide);
                });
                marker.appendTo($(".as-markers", slider.wrap));
            });

            slider.markers = $(".as-markers > li", slider.wrap);

            // We need to clone the first and last slide to get a better slide effect.
            clone_first = $("> li", slider.slider).eq(0).clone();
            clone_last = $("> li", slider.slider).eq(state.slide_length - 1).clone();

            clone_first.attr({
                "data-clone": "last",
                "data-slide": 0
            }).appendTo(slider.slider);
            clone_last.attr({
                "data-clone": "first",
                "data-slide": 0
            }).prependTo(slider.slider);

            slider.item = slider.slider.children("li");
            slider.item.addClass("as-item");

            // update slider length
            state.slide_length = slider.item.length;

            // add navigation
            slider.wrap.append('<div class="as-nav"><a href="#" class="dir-prev" data-dir="prev"><span><span></span></span></a><a href="#" class="dir-next" data-dir="next"><span><span></span></span></a></div>');
            // set namepace for navigation
            slider.nav = slider.wrap.find(".as-nav");
            slider.nav_prev = slider.nav.find(".dir-prev");
            slider.nav_next = slider.nav.find(".dir-next");
        };

        var start_slider = function () {
            slider.slider.addClass("no-transition");
            progress_start();
            // slider is now loaded!
            slider.wrap.show(0, function () {
                slider.wrap.addClass("loaded");
                slider.slider.removeClass("no-transition");
            });
        };

        /*                  RESIZE
			We dont want to spam the resize trigger, 
			this waits unitl the resize is stopped, 
			wait 200 ms and then trigger what to do 
		*/
        var resizeTimer = 0;
        var resizeWindow = function () {
            var windowWidthNew = $(window).width(),
                windowHeightNew = $(window).height(),
                sliderWidthNew = el.width();

            if (windowWidth !== windowWidthNew || windowHeight !== windowHeightNew) {
                // set new dimentions
                windowWidth = windowWidthNew;
                windowHeight = windowHeightNew;
                sliderWidth = sliderWidthNew;

                if (resizeTimer) {
                    clearTimeout(resizeTimer);
                }
                resizeTimer = setTimeout(resizeStop, 50);
                resizeStart();
            }
        };
        var resizeStart = function () {
            state.paused = true;
            state.resizing = true;
            if (state.resizing) {
                slider.progress.stop();
                slider.slider.addClass("no-transition");
            }
        };
        var resizeStop = function () {
            update_proportions();
            if (state.resizing) {
                state.resizing = false;
                state.paused = false;

                progress_reset();
                //doSlide(false, state.slide_current)
                slider.slider.removeClass("no-transition");
            }

        };
        /*          // RESIZE           */

        var progress_reset = function () {
            slider.progress.stop().css("width", "0%");
            progress_stop();
        };
        var progress_stop = function () {
            if (!state.paused) {
                clearInterval(state.interval);
                progress_start();
            } else {
                setTimeout(function () {
                    if (!state.paused) {
                        clearInterval(state.interval);
                        progress_start();
                    }
                }, settings.animation_duration);
            }
        };
        var progress_start = function () {
            slider.progress.animate({
                "width": "100%"
            }, settings.animation_interval);

            state.interval = setInterval(function () {
                doSlide("next", false);
            }, settings.animation_interval);
        };

        var update_proportions = function () {

            sliderWidth = slider.wrap.width();

            // set slider width
            slider.slider.css({
                "width": sliderWidth * (state.slide_length),
                "left": -sliderWidth * state.slide_current
            });
            // set slide width
            $(".as-item").css({
                "width": sliderWidth
            });
        };

        var i_interact = function () {

            // Bind resize 
            $(window).bind("resize", resizeWindow);

            // Hover wrap
            slider.wrap
                .on("mouseenter", function () {
                    if (!state.paused) {
                        state.paused = true;
                        slider.wrap.addClass("hovering");
                        clearInterval(state.interval);
                        slider.progress.stop();
                    }
                })
                .on("mouseleave", function () {
                    if (state.paused) {
                        progress_reset();
                        slider.wrap.removeClass("hovering");
                        state.paused = false;
                    }
                });

            // Hover markers
            slider.markers.parent()
                .on("mouseenter", function () {
                    slider.wrap.addClass("hovering-marker");
                })
                .on("mouseleave", function () {
                    slider.wrap.removeClass("hovering-marker");
                });

            // Clicks
            slider.nav_prev.on(clickEvent, function (e) {
                e.preventDefault();
                slider.progress.stop();
                state.paused = false;
                doSlide("prev", false);
            });

            slider.nav_next.on(clickEvent, function (e) {
                e.preventDefault();
                slider.progress.stop();
                state.paused = false;
                doSlide("next", false);
            });

            $(".as-stop", slider.wrap).on(clickEvent, function (e) {
                e.preventDefault();
                slider.progress.stop();
                clearInterval(state.interval);
            });

            initTouch();

            // bind pause and stop btn
            $(document).keydown(function (e) {
                // bind space key
                if (e.keyCode === 32) {
                    if (slider.wrap.hasClass("stopped")) {
                        slider.wrap.removeClass("stopped");
                        progress_reset();
                    } else {
                        slider.wrap.addClass("stopped");
                        clearInterval(state.interval);
                        slider.progress.stop();
                    }
                    return false;
                }
            });

        };

        /* Event handlers for touch
         * * */

        // INIT
        var initTouch = function () {
            // initiate object to contain all touch values
            slider.touch = {
                start: { x: 0, y: 0 },
                end: { x: 0, y: 0 }
            }
            slider.view.bind("touchstart", onTouchStart);
        };

        // TOUCH START
        var onTouchStart = function (e) {
            console.log("%cf: onTouchStart()", "color:#888; font-style:italic;");
            if (!state.paused) {
                state.paused = true;

                // record orginal pos when touch start
                slider.touch.originalPos = el.position();
                var orig = e.originalEvent;

                // record x, y coordinates when start touch
                slider.touch.start.x = orig.changedTouches[0].pageX;
                slider.touch.start.y = orig.changedTouches[0].pageY;

                // bind "touchmove" on viewport
                slider.view.bind("touchmove", onTouchMove);

                // bind "touchend" on viewport
                slider.view.bind("touchend", onTouchEnd);
            }
        };

        // TOUCH MOVE
        var onTouchMove = function (e) {
            var orig = e.originalEvent;

            // if scrolling on y axis, do not prevent default
            var xMovement = Math.abs(orig.changedTouches[0].pageX - slider.touch.start.x);
            var yMovement = Math.abs(orig.changedTouches[0].pageY - slider.touch.start.y);

            // x axis swipe
            if ((xMovement * 3) > yMovement) {
                e.preventDefault();
                console.log("Swipe horizontal");
            }
            
            var value = 0;
            var change = orig.changedTouches[0].pageX - slider.touch.start.x;

            console.log("Value: " + value + "\n" + "Change: " + change);

            value = slider.touch.originalPos.left + change;

        };

        // TOUCH END
        var onTouchEnd = function (e) {
            console.log("%cf: onTouchEnd()", "color:#888; font-style:italic;");

            slider.view.unbind("touchmove", onTouchMove);

            state.paused = false;

            var orig = e.originalEvent;
            var value = 0;

            // record end x, y pos
            slider.touch.end.x = orig.changedTouches[0].pageX;
            slider.touch.end.y = orig.changedTouches[0].pageY;

            var distanceX = 0,
                distanceY = 0;

            distanceX = slider.touch.end.x - slider.touch.start.x;
            distanceY = slider.touch.end.y - slider.touch.start.y;

            value = slider.touch.originalPos.left;

            // check distance
            if (Math.abs(distanceX) >= settings.touch_draglimit) {
                distanceX < 0 ? doSlide("next", false) : doSlide("prev", false);
            }

            slider.view.unbind("touchend", onTouchEnd);
        };


        var doSlide = function (dir, pos) {
            if (!state.paused) {
                state.paused = true;

                if (pos) {
                    state.slide_next = pos;
                    state.index_next = pos - 1;
                } else {
                    slide_next(dir);
                }

                // update marker position
                var marker_index = state.index_next - 1;

                if (marker_index === state.slide_length - 2) {
                    marker_index = 0;
                } else if (marker_index === -1) {
                    marker_index = state.slide_length - 3;
                }

                slider.markers.removeClass("active").eq(marker_index).addClass("active");

                // is modern browser?
                if (doTransition) {
                    slider.slider.css({
                        "left": -state.index_next * sliderWidth
                    });
                    setTimeout(function () {
                        slide_move();
                    }, settings.animation_duration * 1.5);

                    slider.slider.removeClass("no-transition");
                } else {
                    slider.slider.stop(false, false).animate({
                        "left": -state.index_next * sliderWidth
                    }, settings.animation_duration, function () {
                        slide_move();
                    });
                }
            }

            state.paused = false;
        };

        var slide_move = function () {
            state.slide_current = state.slide_next;
            state.index_current = state.index_next;

            // check if last or first clone
            if (slider.item.eq(state.index_current).attr("data-clone") === "last") {
                slider.slider.addClass("no-transition");
                slider.slider.css({
                    "left": -sliderWidth
                });
                state.slide_current = 2;
                state.index_current = 1;

            } else if (slider.item.eq(state.index_current).attr("data-clone") === "first") {
                slider.slider.addClass("no-transition");
                slider.slider.css({
                    "left": -sliderWidth * (state.slide_length - 2)
                });
                state.slide_current = state.slide_length - 1;
                state.index_current = state.slide_length - 2;
            }

            progress_reset();
            state.paused = false;
            slider.slider.attr("data-current-slide", state.slide_current).attr("data-current-index", state.index_current);
        };

        var slide_next = function (dir) {
            if (dir === "next") {
                if (slider.item.eq(state.index_current).next().length) {
                    state.index_next = state.index_current + 1;
                    state.slide_next = state.slide_current + 1;
                } else {
                    state.index_next = 0;
                    state.slide_next = 1;
                }
            } else {
                if (slider.item.eq(state.index_current).prev().length) {
                    state.index_next = state.index_current - 1;
                    state.slide_next = state.slide_current - 1;
                } else {
                    state.index_next = state.slide_length - 1;
                    state.slide_next = state.slide_length;
                }
            }
        };

        init();
    };
})(jQuery);

$(".my-slider").as();