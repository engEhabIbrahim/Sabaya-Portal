
'use strict';

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _toConsumableArray(arr) { if (Array.isArray(arr)) { for (var i = 0, arr2 = Array(arr.length); i < arr.length; i++) { arr2[i] = arr[i]; } return arr2; } else { return Array.from(arr); } }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

// - Noel Delgado | @pixelia_me

var nodes = [].slice.call(document.querySelectorAll('.portfolio figure'), 0);
var directions = { 0: 'top', 1: 'right', 2: 'bottom', 3: 'left' };
var classNames = ['in', 'out'].map(function (p) {
    return Object.values(directions).map(function (d) {
        return p + '-' + d;
    });
}).reduce(function (a, b) {
    return a.concat(b);
});

var getDirectionKey = function getDirectionKey(ev, node) {
    var _node$getBoundingClie = node.getBoundingClientRect(),
        width = _node$getBoundingClie.width,
        height = _node$getBoundingClie.height,
        top = _node$getBoundingClie.top,
        left = _node$getBoundingClie.left;

    var l = ev.pageX - (left + window.pageXOffset);
    var t = ev.pageY - (top + window.pageYOffset);
    var x = l - width / 2 * (width > height ? height / width : 1);
    var y = t - height / 2 * (height > width ? width / height : 1);
    return Math.round(Math.atan2(y, x) / 1.57079633 + 5) % 4;
};

var Item = function () {
    function Item(element) {
        var _this = this;

        _classCallCheck(this, Item);

        this.element = element;
        this.element.addEventListener('mouseover', function (ev) {
            return _this.update(ev, 'in');
        });
        this.element.addEventListener('mouseout', function (ev) {
            return _this.update(ev, 'out');
        });
    }

    _createClass(Item, [{
        key: 'update',
        value: function update(ev, prefix) {
            var _element$classList;

            (_element$classList = this.element.classList).remove.apply(_element$classList, _toConsumableArray(classNames));
            this.element.classList.add(prefix + '-' + directions[getDirectionKey(ev, this.element)]);
        }
    }]);

    return Item;
}();

nodes.forEach(function (node) {
    return new Item(node);
});



$(function () {

    var $container = $('#services'),
        $articles = $container.children('div'),
        timeout;

    $articles.on('mouseenter', function (event) {

        var $article = $(this);
        clearTimeout(timeout);
        timeout = setTimeout(function () {

            if ($article.hasClass('active')) return false;
            $articles.not($article.removeClass('blur').addClass('active'))
                .removeClass('active')
                .addClass('blur');
        }, 65);

    });

    $container.on('mouseleave', function (event) {
        clearTimeout(timeout);
        $articles.removeClass('active blur');

    });

});

