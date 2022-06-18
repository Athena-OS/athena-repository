'use strict';

var _cssColorNames = require('css-color-names');

var _cssColorNames2 = _interopRequireDefault(_cssColorNames);

var _isCssColorName = require('is-css-color-name');

var _isCssColorName2 = _interopRequireDefault(_isCssColorName);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/**
 * Convert a CSS color name to hex
 * @param {String} name - name to convert to hex
 * @throws {TypeError} - when name is not a string
 * @return {String} - hex if valid CSS color name or name if not valid CSS color name
 */
module.exports = function (name) {
  if (typeof name !== 'string') {
    throw new TypeError('Expected a string');
  }

  return (0, _isCssColorName2.default)(name) ? _cssColorNames2.default[name.toLowerCase()] : name;
};