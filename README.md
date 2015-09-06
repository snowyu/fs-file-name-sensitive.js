## fs-file-name-sensitive [![npm](https://img.shields.io/npm/v/fs-file-name-sensitive.svg)](https://npmjs.org/package/fs-file-name-sensitive)

[![Build Status](https://img.shields.io/travis/snowyu/fs-file-name-sensitive.js/master.svg)](http://travis-ci.org/snowyu/fs-file-name-sensitive.js)
[![Code Climate](https://codeclimate.com/github/snowyu/fs-file-name-sensitive.js/badges/gpa.svg)](https://codeclimate.com/github/snowyu/fs-file-name-sensitive.js)
[![Test Coverage](https://codeclimate.com/github/snowyu/fs-file-name-sensitive.js/badges/coverage.svg)](https://codeclimate.com/github/snowyu/fs-file-name-sensitive.js/coverage)
[![downloads](https://img.shields.io/npm/dm/fs-file-name-sensitive.svg)](https://npmjs.org/package/fs-file-name-sensitive)
[![license](https://img.shields.io/npm/l/fs-file-name-sensitive.svg)](https://npmjs.org/package/fs-file-name-sensitive)


Check file-system(fs) file name is case-sensitive or not.

## Usage

```js
isFileNameSensitive  = require('fs-file-name-sensitive')

console.log(isFileNameSensitive('/path/to/check/'))
```

## API

function isFileNameSensitive(aPath[, aOptions])

* arguments
  * `aPath` *(String)*: the path to check.
  * `aOptions` *(Object)*:
    * `cache` *(Boolean)*: whether cache the result of the `aPath`. defaults to true.
* return *(Boolean)*: whether the file name is sensitive or not in `aPath`.


## TODO


## License

MIT
