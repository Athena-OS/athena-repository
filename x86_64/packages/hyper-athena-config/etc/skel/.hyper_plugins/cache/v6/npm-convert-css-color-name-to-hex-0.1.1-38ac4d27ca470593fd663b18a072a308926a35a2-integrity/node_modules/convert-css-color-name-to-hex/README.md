# convert-css-color-name-to-hex
[![NPM version](https://badge.fury.io/js/convert-css-color-name-to-hex.svg)](https://badge.fury.io/js/convert-css-color-name-to-hex) [![Build Status](https://travis-ci.org/dustinspecker/convert-css-color-name-to-hex.svg)](https://travis-ci.org/dustinspecker/convert-css-color-name-to-hex) [![Coverage Status](https://img.shields.io/coveralls/dustinspecker/convert-css-color-name-to-hex.svg)](https://coveralls.io/r/dustinspecker/convert-css-color-name-to-hex?branch=master)

[![Code Climate](https://codeclimate.com/github/dustinspecker/convert-css-color-name-to-hex/badges/gpa.svg)](https://codeclimate.com/github/dustinspecker/convert-css-color-name-to-hex) [![Dependencies](https://david-dm.org/dustinspecker/convert-css-color-name-to-hex.svg)](https://david-dm.org/dustinspecker/convert-css-color-name-to-hex/#info=dependencies&view=table) [![DevDependencies](https://david-dm.org/dustinspecker/convert-css-color-name-to-hex/dev-status.svg)](https://david-dm.org/dustinspecker/convert-css-color-name-to-hex/#info=devDependencies&view=table)

> Convert CSS color names to hex

## Install
```
npm install --save convert-css-color-name-to-hex
```

## Usage
### ES2015
```javascript
import convertCssColorNameToHex from 'convert-css-color-name-to-hex';

convertCssColorNameToHex('batman');
// => 'batman'

convertCssColorNameToHex('aliceblue');
// => '#f0f8ff'
```

### ES5
```javascript
var convertCssColorNameToHex = require('convert-css-color-name-to-hex');

convertCssColorNameToHex('batman');
// => 'batman'

convertCssColorNameToHex('aliceblue');
// => '#f0f8ff'
```

## LICENSE
MIT © [Dustin Specker](https://github.com/dustinspecker)