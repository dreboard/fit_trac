/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 181);
/******/ })
/************************************************************************/
/******/ ({

/***/ 181:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(182);


/***/ }),

/***/ 182:
/***/ (function(module, exports) {

eval("$(document).ready(function () {\n    (function ($) {\n        \"use strict\"; // Start of use strict\n\n        // Toggle the side navigation\n\n        $(\"#sidebarToggle\").on('click', function (e) {\n            e.preventDefault();\n            $(\"body\").toggleClass(\"sidebar-toggled\");\n            $(\".sidebar\").toggleClass(\"toggled\");\n        });\n\n        // Prevent the content wrapper from scrolling when the fixed side navigation hovered over\n        $('body.fixed-nav .sidebar').on('mousewheel DOMMouseScroll wheel', function (e) {\n            if ($(window).width() > 768) {\n                var e0 = e.originalEvent,\n                    delta = e0.wheelDelta || -e0.detail;\n                this.scrollTop += (delta < 0 ? 1 : -1) * 30;\n                e.preventDefault();\n            }\n        });\n\n        // Scroll to top button appear\n        $(document).on('scroll', function () {\n            var scrollDistance = $(this).scrollTop();\n            if (scrollDistance > 100) {\n                $('.scroll-to-top').fadeIn();\n            } else {\n                $('.scroll-to-top').fadeOut();\n            }\n        });\n\n        // Smooth scrolling using jQuery easing\n        $(document).on('click', 'a.scroll-to-top', function (event) {\n            var $anchor = $(this);\n            $('html, body').stop().animate({\n                scrollTop: $($anchor.attr('href')).offset().top\n            }, 1000, 'easeInOutExpo');\n            event.preventDefault();\n        });\n    })(jQuery); // End of use strict\n\n});//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9yZXNvdXJjZXMvanMvYWRtaW4uanM/OTE1MyJdLCJuYW1lcyI6WyIkIiwiZG9jdW1lbnQiLCJyZWFkeSIsIm9uIiwiZSIsInByZXZlbnREZWZhdWx0IiwidG9nZ2xlQ2xhc3MiLCJ3aW5kb3ciLCJ3aWR0aCIsImUwIiwib3JpZ2luYWxFdmVudCIsImRlbHRhIiwid2hlZWxEZWx0YSIsImRldGFpbCIsInNjcm9sbFRvcCIsInNjcm9sbERpc3RhbmNlIiwiZmFkZUluIiwiZmFkZU91dCIsImV2ZW50IiwiJGFuY2hvciIsInN0b3AiLCJhbmltYXRlIiwiYXR0ciIsIm9mZnNldCIsInRvcCIsImpRdWVyeSJdLCJtYXBwaW5ncyI6IkFBQUFBLEVBQUVDLFFBQUYsRUFBWUMsS0FBWixDQUFrQixZQUFXO0FBQ3pCLEtBQUMsVUFBU0YsQ0FBVCxFQUFZO0FBQ1QscUJBRFMsQ0FDSzs7QUFFZDs7QUFDQUEsVUFBRSxnQkFBRixFQUFvQkcsRUFBcEIsQ0FBdUIsT0FBdkIsRUFBK0IsVUFBU0MsQ0FBVCxFQUFZO0FBQ3ZDQSxjQUFFQyxjQUFGO0FBQ0FMLGNBQUUsTUFBRixFQUFVTSxXQUFWLENBQXNCLGlCQUF0QjtBQUNBTixjQUFFLFVBQUYsRUFBY00sV0FBZCxDQUEwQixTQUExQjtBQUNILFNBSkQ7O0FBTUE7QUFDQU4sVUFBRSx5QkFBRixFQUE2QkcsRUFBN0IsQ0FBZ0MsaUNBQWhDLEVBQW1FLFVBQVNDLENBQVQsRUFBWTtBQUMzRSxnQkFBSUosRUFBRU8sTUFBRixFQUFVQyxLQUFWLEtBQW9CLEdBQXhCLEVBQTZCO0FBQ3pCLG9CQUFJQyxLQUFLTCxFQUFFTSxhQUFYO0FBQUEsb0JBQ0lDLFFBQVFGLEdBQUdHLFVBQUgsSUFBaUIsQ0FBQ0gsR0FBR0ksTUFEakM7QUFFQSxxQkFBS0MsU0FBTCxJQUFrQixDQUFDSCxRQUFRLENBQVIsR0FBWSxDQUFaLEdBQWdCLENBQUMsQ0FBbEIsSUFBdUIsRUFBekM7QUFDQVAsa0JBQUVDLGNBQUY7QUFDSDtBQUNKLFNBUEQ7O0FBU0E7QUFDQUwsVUFBRUMsUUFBRixFQUFZRSxFQUFaLENBQWUsUUFBZixFQUF3QixZQUFXO0FBQy9CLGdCQUFJWSxpQkFBaUJmLEVBQUUsSUFBRixFQUFRYyxTQUFSLEVBQXJCO0FBQ0EsZ0JBQUlDLGlCQUFpQixHQUFyQixFQUEwQjtBQUN0QmYsa0JBQUUsZ0JBQUYsRUFBb0JnQixNQUFwQjtBQUNILGFBRkQsTUFFTztBQUNIaEIsa0JBQUUsZ0JBQUYsRUFBb0JpQixPQUFwQjtBQUNIO0FBQ0osU0FQRDs7QUFTQTtBQUNBakIsVUFBRUMsUUFBRixFQUFZRSxFQUFaLENBQWUsT0FBZixFQUF3QixpQkFBeEIsRUFBMkMsVUFBU2UsS0FBVCxFQUFnQjtBQUN2RCxnQkFBSUMsVUFBVW5CLEVBQUUsSUFBRixDQUFkO0FBQ0FBLGNBQUUsWUFBRixFQUFnQm9CLElBQWhCLEdBQXVCQyxPQUF2QixDQUErQjtBQUMzQlAsMkJBQVlkLEVBQUVtQixRQUFRRyxJQUFSLENBQWEsTUFBYixDQUFGLEVBQXdCQyxNQUF4QixHQUFpQ0M7QUFEbEIsYUFBL0IsRUFFRyxJQUZILEVBRVMsZUFGVDtBQUdBTixrQkFBTWIsY0FBTjtBQUNILFNBTkQ7QUFRSCxLQXZDRCxFQXVDR29CLE1BdkNILEVBRHlCLENBd0NiOztBQUdmLENBM0NEIiwiZmlsZSI6IjE4Mi5qcyIsInNvdXJjZXNDb250ZW50IjpbIiQoZG9jdW1lbnQpLnJlYWR5KGZ1bmN0aW9uKCkge1xyXG4gICAgKGZ1bmN0aW9uKCQpIHtcclxuICAgICAgICBcInVzZSBzdHJpY3RcIjsgLy8gU3RhcnQgb2YgdXNlIHN0cmljdFxyXG5cclxuICAgICAgICAvLyBUb2dnbGUgdGhlIHNpZGUgbmF2aWdhdGlvblxyXG4gICAgICAgICQoXCIjc2lkZWJhclRvZ2dsZVwiKS5vbignY2xpY2snLGZ1bmN0aW9uKGUpIHtcclxuICAgICAgICAgICAgZS5wcmV2ZW50RGVmYXVsdCgpO1xyXG4gICAgICAgICAgICAkKFwiYm9keVwiKS50b2dnbGVDbGFzcyhcInNpZGViYXItdG9nZ2xlZFwiKTtcclxuICAgICAgICAgICAgJChcIi5zaWRlYmFyXCIpLnRvZ2dsZUNsYXNzKFwidG9nZ2xlZFwiKTtcclxuICAgICAgICB9KTtcclxuXHJcbiAgICAgICAgLy8gUHJldmVudCB0aGUgY29udGVudCB3cmFwcGVyIGZyb20gc2Nyb2xsaW5nIHdoZW4gdGhlIGZpeGVkIHNpZGUgbmF2aWdhdGlvbiBob3ZlcmVkIG92ZXJcclxuICAgICAgICAkKCdib2R5LmZpeGVkLW5hdiAuc2lkZWJhcicpLm9uKCdtb3VzZXdoZWVsIERPTU1vdXNlU2Nyb2xsIHdoZWVsJywgZnVuY3Rpb24oZSkge1xyXG4gICAgICAgICAgICBpZiAoJCh3aW5kb3cpLndpZHRoKCkgPiA3NjgpIHtcclxuICAgICAgICAgICAgICAgIHZhciBlMCA9IGUub3JpZ2luYWxFdmVudCxcclxuICAgICAgICAgICAgICAgICAgICBkZWx0YSA9IGUwLndoZWVsRGVsdGEgfHwgLWUwLmRldGFpbDtcclxuICAgICAgICAgICAgICAgIHRoaXMuc2Nyb2xsVG9wICs9IChkZWx0YSA8IDAgPyAxIDogLTEpICogMzA7XHJcbiAgICAgICAgICAgICAgICBlLnByZXZlbnREZWZhdWx0KCk7XHJcbiAgICAgICAgICAgIH1cclxuICAgICAgICB9KTtcclxuXHJcbiAgICAgICAgLy8gU2Nyb2xsIHRvIHRvcCBidXR0b24gYXBwZWFyXHJcbiAgICAgICAgJChkb2N1bWVudCkub24oJ3Njcm9sbCcsZnVuY3Rpb24oKSB7XHJcbiAgICAgICAgICAgIHZhciBzY3JvbGxEaXN0YW5jZSA9ICQodGhpcykuc2Nyb2xsVG9wKCk7XHJcbiAgICAgICAgICAgIGlmIChzY3JvbGxEaXN0YW5jZSA+IDEwMCkge1xyXG4gICAgICAgICAgICAgICAgJCgnLnNjcm9sbC10by10b3AnKS5mYWRlSW4oKTtcclxuICAgICAgICAgICAgfSBlbHNlIHtcclxuICAgICAgICAgICAgICAgICQoJy5zY3JvbGwtdG8tdG9wJykuZmFkZU91dCgpO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfSk7XHJcblxyXG4gICAgICAgIC8vIFNtb290aCBzY3JvbGxpbmcgdXNpbmcgalF1ZXJ5IGVhc2luZ1xyXG4gICAgICAgICQoZG9jdW1lbnQpLm9uKCdjbGljaycsICdhLnNjcm9sbC10by10b3AnLCBmdW5jdGlvbihldmVudCkge1xyXG4gICAgICAgICAgICB2YXIgJGFuY2hvciA9ICQodGhpcyk7XHJcbiAgICAgICAgICAgICQoJ2h0bWwsIGJvZHknKS5zdG9wKCkuYW5pbWF0ZSh7XHJcbiAgICAgICAgICAgICAgICBzY3JvbGxUb3A6ICgkKCRhbmNob3IuYXR0cignaHJlZicpKS5vZmZzZXQoKS50b3ApXHJcbiAgICAgICAgICAgIH0sIDEwMDAsICdlYXNlSW5PdXRFeHBvJyk7XHJcbiAgICAgICAgICAgIGV2ZW50LnByZXZlbnREZWZhdWx0KCk7XHJcbiAgICAgICAgfSk7XHJcblxyXG4gICAgfSkoalF1ZXJ5KTsgLy8gRW5kIG9mIHVzZSBzdHJpY3RcclxuXHJcblxyXG59KTtcblxuXG4vLyBXRUJQQUNLIEZPT1RFUiAvL1xuLy8gLi9yZXNvdXJjZXMvanMvYWRtaW4uanMiXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///182\n");

/***/ })

/******/ });