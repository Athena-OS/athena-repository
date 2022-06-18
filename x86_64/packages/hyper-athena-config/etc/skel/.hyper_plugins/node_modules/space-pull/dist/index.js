(function(e, a) { for(var i in a) e[i] = a[i]; }(exports, /******/ (function(modules) { // webpackBootstrap
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
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 1);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports) {

module.exports = require("react");

/***/ }),
/* 1 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.getTermProps = exports.getTermGroupProps = exports.middleware = undefined;

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

exports.reduceUI = reduceUI;
exports.mapTermsState = mapTermsState;
exports.decorateTerm = decorateTerm;

var _react = __webpack_require__(0);

var _react2 = _interopRequireDefault(_react);

var _Spaceship = __webpack_require__(2);

var _Spaceship2 = _interopRequireDefault(_Spaceship);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var detectGitPull = function detectGitPull(data) {
  var patterns = ['^Updating {0,}([a-z0-9A-Z]+\.{2,3}[a-z0-9A-Z]+)|(\[[a-z0-9A-Z]+\.{2,3}[a-z0-9A-Z]+\])$', '^Unpacking objects'];
  var antiPattern = /CONFLICT/;

  return new RegExp('(' + patterns.join(')|(') + ')').test(data) && !antiPattern.test(data);
};

var middleware = exports.middleware = function middleware(store) {
  return function (next) {
    return function (action) {
      if ('SESSION_ADD_DATA' === action.type) {
        var data = action.data;


        if (detectGitPull(data)) {
          store.dispatch({
            type: 'TOGGLE_PULL_ROCKET'
          });
        }

        next(action);
      } else {
        next(action);
      }
    };
  };
};

function reduceUI(state, action) {
  switch (action.type) {
    case 'TOGGLE_PULL_ROCKET':
      {
        if (state.pullRocket === undefined) {
          return state.set('pullRocket', 1);
        } else {
          return state.set('pullRocket', state.pullRocket + 1);
        }
      }
  }
  return state;
}

function mapTermsState(state, map) {
  return Object.assign(map, {
    pullRocket: state.ui.pullRocket
  });
}

var passProps = function passProps(uid, parentProps, props) {
  return Object.assign(props, {
    pullRocket: parentProps.pullRocket
  });
};

exports.getTermGroupProps = passProps;
exports.getTermProps = passProps;
function decorateTerm(Term) {
  return function (_Component) {
    _inherits(_class, _Component);

    function _class(props, context) {
      _classCallCheck(this, _class);

      var _this = _possibleConstructorReturn(this, (_class.__proto__ || Object.getPrototypeOf(_class)).call(this, props, context));

      _this.state = {
        displayPullRocket: false
      };
      return _this;
    }

    _createClass(_class, [{
      key: 'onTerminal',
      value: function onTerminal(term) {
        if (this.props.onTerminal) this.props.onTerminal(term);
        this._div = term.div_;
        this._window = term.document_.defaultView;
      }
    }, {
      key: 'componentWillReceiveProps',
      value: function componentWillReceiveProps(nextProps) {
        if (nextProps.pullRocket > this.props.pullRocket || nextProps.pullRocket === 1 && this.props.pullRocket === undefined) {
          this.setState({ displayPullRocket: true });
        }
      }
    }, {
      key: 'onAnimationEnd',
      value: function onAnimationEnd(event) {
        var _this2 = this;

        setTimeout(function () {
          _this2.setState({
            displayPullRocket: false
          });
        }, 1500);
      }
    }, {
      key: 'render',
      value: function render() {
        return _react2.default.createElement(
          'div',
          { style: { width: '100%', height: '100%', position: 'relative' } },
          _react2.default.createElement(Term, Object.assign({}, this.props, {
            onTerminal: this._onTerminal
          })),
          _react2.default.createElement(_Spaceship2.default, { display: this.state.displayPullRocket, onAnimationEnd: this.onAnimationEnd.bind(this) })
        );
      }
    }]);

    return _class;
  }(_react.Component);
}

/***/ }),
/* 2 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
  value: true
});

var _templateObject = _taggedTemplateLiteral(['\n  from {\n    transform: rotate(90deg) skewX(35deg); }\n  to {\n    transform: rotate(-35deg) skewX(-35deg); } \n'], ['\n  from {\n    transform: rotate(90deg) skewX(35deg); }\n  to {\n    transform: rotate(-35deg) skewX(-35deg); } \n']),
    _templateObject2 = _taggedTemplateLiteral(['\n  from {\n    transform: rotate(-90deg) skewX(-35deg); }\n  to {\n    transform: rotate(35deg) skewX(35deg); }\n'], ['\n  from {\n    transform: rotate(-90deg) skewX(-35deg); }\n  to {\n    transform: rotate(35deg) skewX(35deg); }\n']),
    _templateObject3 = _taggedTemplateLiteral(['\n  0% {\n    left: calc(90% - 50px);\n    top: calc(50% - 50px); }\n  50% {\n    left: calc(90% - 45px);\n    top: calc(50% - 48px); }\n  100% {\n    left: calc(90% - 50px);\n    top: calc(50% - 50px); } \n'], ['\n  0% {\n    left: calc(90% - 50px);\n    top: calc(50% - 50px); }\n  50% {\n    left: calc(90% - 45px);\n    top: calc(50% - 48px); }\n  100% {\n    left: calc(90% - 50px);\n    top: calc(50% - 50px); } \n']),
    _templateObject4 = _taggedTemplateLiteral(['\n  from {\n    top: -260px; \n  }\n  to {\n    top: calc(100% - 180px);\n    display: none; \n  }\n'], ['\n  from {\n    top: -260px; \n  }\n  to {\n    top: calc(100% - 180px);\n    display: none; \n  }\n']),
    _templateObject5 = _taggedTemplateLiteral(['\n  0% {\n    transform-origin: top center;\n    transform: scale(1); }\n  50% {\n    transform-origin: top center;\n    transform: scale(0.8); }\n  100% {\n    transform-origin: top center;\n    transform: scale(1); } \n'], ['\n  0% {\n    transform-origin: top center;\n    transform: scale(1); }\n  50% {\n    transform-origin: top center;\n    transform: scale(0.8); }\n  100% {\n    transform-origin: top center;\n    transform: scale(1); } \n']),
    _templateObject6 = _taggedTemplateLiteral(['\n  0% {\n    transform-origin: top center;\n    transform: scale(1); }\n  100% {\n    transform-origin: top center;\n    transform: scale(0); }\n'], ['\n  0% {\n    transform-origin: top center;\n    transform: scale(1); }\n  100% {\n    transform-origin: top center;\n    transform: scale(0); }\n']),
    _templateObject7 = _taggedTemplateLiteral(['\n  display: ', ';\n  position: absolute;\n  left: calc(90% - 50px);\n  top: calc(50% - 50px);\n  height: 220px;\n  animation-name: ', ', none, ', ';\n  animation-duration: 320ms, 2000s, 2000ms;\n  animation-delay: 0ms, 3000ms;\n  animation-iteration-count: 8, 1,1;\n  animation-timing-function: ease-out;\n  animation-fill-mode: none,none,forwards;\n'], ['\n  display: ', ';\n  position: absolute;\n  left: calc(90% - 50px);\n  top: calc(50% - 50px);\n  height: 220px;\n  animation-name: ', ', none, ', ';\n  animation-duration: 320ms, 2000s, 2000ms;\n  animation-delay: 0ms, 3000ms;\n  animation-iteration-count: 8, 1,1;\n  animation-timing-function: ease-out;\n  animation-fill-mode: none,none,forwards;\n']),
    _templateObject8 = _taggedTemplateLiteral(['\n  display: block;\n  top: 30px;\n  width: 20px;\n  height: 120px;\n  background-color: #a7a9b1;\n  position: absolute;\n  border-left: 3px solid #797d88;\n  border-right: 3px solid #a7a9b1;\n  border-bottom: 3px solid #191919;\n  box-sizing: initial;\n\n  :after{ \n    content: \'\';\n    position: absolute;\n    display: block;\n    left: 10px;\n    width: 10px;\n    height: 100%;\n    background-color: #d6d8e1;\n  }\n'], ['\n  display: block;\n  top: 30px;\n  width: 20px;\n  height: 120px;\n  background-color: #a7a9b1;\n  position: absolute;\n  border-left: 3px solid #797d88;\n  border-right: 3px solid #a7a9b1;\n  border-bottom: 3px solid #191919;\n  box-sizing: initial;\n\n  :after{ \n    content: \'\';\n    position: absolute;\n    display: block;\n    left: 10px;\n    width: 10px;\n    height: 100%;\n    background-color: #d6d8e1;\n  }\n']),
    _templateObject9 = _taggedTemplateLiteral(['\n  top: 0;\n  height: 60px;\n  width: 26px;\n  display: block;\n  border-top-left-radius: 100%;\n  border-top-right-radius: 100%;\n  background-color: #a7a9b1;\n  box-sizing: border-box;\n  border-left: 3px solid #797d88;\n\n  :after{\n    content: \'\';\n    position: absolute;\n    display: block;\n    left: 13px;\n    width: 10px;\n    top: 3px;\n    height: 27px;\n    border-top-right-radius: 100%;\n    background: linear-gradient(180deg, #a7a9b1 20%, #d6d8e1); \n  }\n'], ['\n  top: 0;\n  height: 60px;\n  width: 26px;\n  display: block;\n  border-top-left-radius: 100%;\n  border-top-right-radius: 100%;\n  background-color: #a7a9b1;\n  box-sizing: border-box;\n  border-left: 3px solid #797d88;\n\n  :after{\n    content: \'\';\n    position: absolute;\n    display: block;\n    left: 13px;\n    width: 10px;\n    top: 3px;\n    height: 27px;\n    border-top-right-radius: 100%;\n    background: linear-gradient(180deg, #a7a9b1 20%, #d6d8e1); \n  }\n']),
    _templateObject10 = _taggedTemplateLiteral(['\n  display: block;\n  background-color: blue;\n  width: 10px;\n  height: 15px;\n  position: absolute;\n  top: 20px;\n  background-color: #3a3a3b;\n'], ['\n  display: block;\n  background-color: blue;\n  width: 10px;\n  height: 15px;\n  position: absolute;\n  top: 20px;\n  background-color: #3a3a3b;\n']),
    _templateObject11 = _taggedTemplateLiteral(['\n  border-top-left-radius: 100%;\n  left: -7px;\n'], ['\n  border-top-left-radius: 100%;\n  left: -7px;\n']),
    _templateObject12 = _taggedTemplateLiteral(['\n  border-top-right-radius: 100%;\n  right: -7px;\n'], ['\n  border-top-right-radius: 100%;\n  right: -7px;\n']),
    _templateObject13 = _taggedTemplateLiteral(['\n  width: 100%;\n  height: 10px;\n  bottom: 55px;\n  border-bottom-left-radius: 10px;\n  border-bottom-right-radius: 10px;\n  position: absolute;\n  background-color: #3a3a3b; \n'], ['\n  width: 100%;\n  height: 10px;\n  bottom: 55px;\n  border-bottom-left-radius: 10px;\n  border-bottom-right-radius: 10px;\n  position: absolute;\n  background-color: #3a3a3b; \n']),
    _templateObject14 = _taggedTemplateLiteral(['\n  position: absolute;\n  display: block; \n  bottom: 65px;\n  width: 35px;\n  height: 7px;\n  background-color: #3a3a3b;\n'], ['\n  position: absolute;\n  display: block; \n  bottom: 65px;\n  width: 35px;\n  height: 7px;\n  background-color: #3a3a3b;\n']),
    _templateObject15 = _taggedTemplateLiteral(['\n  right: 23px;\n  transform-origin: right center;\n  animation-name: ', ';\n  animation-duration: 2s;\n  animation-delay: 500ms;\n  animation-fill-mode: forwards;\n  transform: rotate(90deg) skewX(35deg);\n'], ['\n  right: 23px;\n  transform-origin: right center;\n  animation-name: ', ';\n  animation-duration: 2s;\n  animation-delay: 500ms;\n  animation-fill-mode: forwards;\n  transform: rotate(90deg) skewX(35deg);\n']),
    _templateObject16 = _taggedTemplateLiteral(['\n  left: 23px;\n  transform-origin: left center;\n  animation: ', ';\n  animation-duration: 2s;\n  animation-delay: 500ms;\n  animation-fill-mode: forwards;\n  transform: rotate(-90deg) skewX(-35deg);\n'], ['\n  left: 23px;\n  transform-origin: left center;\n  animation: ', ';\n  animation-duration: 2s;\n  animation-delay: 500ms;\n  animation-fill-mode: forwards;\n  transform: rotate(-90deg) skewX(-35deg);\n']),
    _templateObject17 = _taggedTemplateLiteral(['\n  position: absolute;\n  top: 160px;\n  left: -6px;\n  display: block;\n  background-color: #FF3D00;\n  border-radius: 50% 50% 70% 70%;\n  width: 40px;\n  height: 60px;\n  animation-name: ', ', ', ';\n  animation-duration: 200ms, 1000ms;\n  animation-delay: 0ms, 2000ms;\n  animation-iteration-count: infinite, 1;\n  animation-fill-mode: none, forwards; \n'], ['\n  position: absolute;\n  top: 160px;\n  left: -6px;\n  display: block;\n  background-color: #FF3D00;\n  border-radius: 50% 50% 70% 70%;\n  width: 40px;\n  height: 60px;\n  animation-name: ', ', ', ';\n  animation-duration: 200ms, 1000ms;\n  animation-delay: 0ms, 2000ms;\n  animation-iteration-count: infinite, 1;\n  animation-fill-mode: none, forwards; \n']),
    _templateObject18 = _taggedTemplateLiteral(['\n  position: absolute;\n  display: block;\n  left: 5px;\n  border-radius: 50% 50% 90% 90%;\n'], ['\n  position: absolute;\n  display: block;\n  left: 5px;\n  border-radius: 50% 50% 90% 90%;\n']),
    _templateObject19 = _taggedTemplateLiteral(['\n  width: 30px;\n  height: 45px;\n  background-color: #FFD600; \n'], ['\n  width: 30px;\n  height: 45px;\n  background-color: #FFD600; \n']),
    _templateObject20 = _taggedTemplateLiteral(['\n  left: 12px;\n  width: 15px;\n  height: 30px;\n  background-color: #FFFF00;\n'], ['\n  left: 12px;\n  width: 15px;\n  height: 30px;\n  background-color: #FFFF00;\n']);

var _styledComponents = __webpack_require__(3);

var _styledComponents2 = _interopRequireDefault(_styledComponents);

var _react = __webpack_require__(0);

var _react2 = _interopRequireDefault(_react);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _taggedTemplateLiteral(strings, raw) { return Object.freeze(Object.defineProperties(strings, { raw: { value: Object.freeze(raw) } })); }

var openLeftLeg = (0, _styledComponents.keyframes)(_templateObject);

var openRightLeg = (0, _styledComponents.keyframes)(_templateObject2);

var wiggle = (0, _styledComponents.keyframes)(_templateObject3);

var land = (0, _styledComponents.keyframes)(_templateObject4);

var engineTurnedOn = (0, _styledComponents.keyframes)(_templateObject5);

var engineTurnOff = (0, _styledComponents.keyframes)(_templateObject6);

var Rocket = _styledComponents2.default.div(_templateObject7, function (props) {
  return props.display ? 'block' : 'none';
}, wiggle, land);

var RocketSpan = _styledComponents2.default.span(_templateObject8);

var RocketBow = _styledComponents2.default.i(_templateObject9);

var Fin = _styledComponents2.default.i(_templateObject10);

var FinLeft = Fin.extend(_templateObject11);

var FinRight = Fin.extend(_templateObject12);

var RocketEngine = _styledComponents2.default.i(_templateObject13);

var Leg = _styledComponents2.default.i(_templateObject14);

var LegLeft = Leg.extend(_templateObject15, openLeftLeg);

var LegRight = Leg.extend(_templateObject16, openRightLeg);

var Blaze = _styledComponents2.default.i(_templateObject17, engineTurnedOn, engineTurnOff);

var BlazeInner = _styledComponents2.default.i(_templateObject18);

var BlazeInnerMedium = BlazeInner.extend(_templateObject19);

var BlazeInnerExtra = BlazeInner.extend(_templateObject20);

var Spaceship = function Spaceship(_ref) {
  var display = _ref.display,
      onAnimationEnd = _ref.onAnimationEnd;
  return _react2.default.createElement(
    Rocket,
    { display: display, onAnimationEnd: onAnimationEnd.bind(undefined) },
    _react2.default.createElement(RocketSpan, null),
    _react2.default.createElement(RocketBow, null),
    _react2.default.createElement(FinLeft, null),
    _react2.default.createElement(FinRight, null),
    _react2.default.createElement(RocketEngine, null),
    _react2.default.createElement(LegLeft, null),
    _react2.default.createElement(LegRight, null),
    _react2.default.createElement(
      Blaze,
      null,
      _react2.default.createElement(BlazeInnerMedium, null),
      _react2.default.createElement(BlazeInnerExtra, null)
    )
  );
};

exports.default = Spaceship;

/***/ }),
/* 3 */
/***/ (function(module, exports) {

module.exports = require("styled-components");

/***/ })
/******/ ])));