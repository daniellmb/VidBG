# VidBG
[![Build Status][build-image]][build-url]
[![Code GPA][gpa-image]][gpa-url]
[![Test Coverage][coverage-image]][coverage-url]
[![Dependency Status][depstat-image]][depstat-url]
[![Bower Version][bower-image]][bower-url]
[![NPM version][npm-image]][npm-url]
[![IRC Channel][irc-image]][irc-url]
[![Gitter][gitter-image]][gitter-url]
[![GitTip][tip-image]][tip-url]

## About

VidBG is a 0.3kb micro-library for embedding video backgrounds into web pages.

This repository was scaffolded with [generator-microjs](https://github.com/daniellmb/generator-microjs).

## Examples

### [Live Demo](http://daniellmb.github.io/AQUA/)

### JavaScript

```JavaScript
vidbg(document.body, [
  {
      src: 'path/to/webm-video.webm',
      type: 'webm'
  }, {
      src: 'path/to/mp4-video.mp4',
      type: 'mp4'
  }, {
      src: 'path/to/ogv-video.ogv',
      type: 'ogg'
  }
], true);
```

### CoffeeScript

```CoffeeScript
vidbg document.body, [
  {
    src: 'path/to/webm-video.webm'
    type: 'webm'
  }
  {
    src: 'path/to/mp4-video.mp4'
    type: 'mp4'
  }
  {
    src: 'path/to/ogv-video.ogv'
    type: 'ogg'
  }
], yes
```

## Install Choices
- `bower install vidbg`
- [download the zip](https://github.com/daniellmb/vidbg/archive/master.zip)

## Tasks

All tasks can be run by simply running `gulp` or with the `npm test` command, or individually:

  * `gulp lint` will lint source code for syntax errors and anti-patterns.
  * `gulp gpa` will analyze source code against complexity thresholds.
  * `gulp test` will run the mocha unit tests against the source code.
  * `gulp test-coffee` will run the mocha unit tests against the CoffeeScript source code.
  * `gulp test-min` will run the mocha unit tests against the minified code.

## License

(The MIT License)

Copyright (c) 2014 Daniel Lamb dlamb.open.source@gmail.com

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



[build-url]: https://travis-ci.org/daniellmb/VidBG
[build-image]: http://img.shields.io/travis/daniellmb/VidBG.png

[gpa-url]: https://codeclimate.com/github/daniellmb/VidBG
[gpa-image]: https://codeclimate.com/github/daniellmb/VidBG.png

[coverage-url]: https://codeclimate.com/github/daniellmb/VidBG/code?sort=covered_percent&sort_direction=desc
[coverage-image]: https://codeclimate.com/github/daniellmb/VidBG/coverage.png

[depstat-url]: https://david-dm.org/daniellmb/vidbg
[depstat-image]: https://david-dm.org/daniellmb/vidbg/dev-status.png?theme=shields.io

[issues-url]: https://github.com/daniellmb/vidbg/issues
[issues-image]: http://img.shields.io/github/issues/daniellmb/vidbg.png

[bower-url]: http://bower.io/search/?q=vidbg
[bower-image]: https://badge.fury.io/bo/vidbg.png

[downloads-url]: https://www.npmjs.org/package/vidbg
[downloads-image]: http://img.shields.io/npm/dm/vidbg.png

[npm-url]: https://www.npmjs.org/package/vidbg
[npm-image]: https://badge.fury.io/js/vidbg.png

[irc-url]: http://webchat.freenode.net/?channels=vidbg
[irc-image]: http://img.shields.io/badge/irc-%23vidbg-brightgreen.png

[gitter-url]: https://gitter.im/daniellmb/VidBG
[gitter-image]: http://img.shields.io/badge/gitter-daniellmb/vidbg-brightgreen.png

[tip-url]: https://www.gittip.com/daniellmb
[tip-image]: http://img.shields.io/gittip/daniellmb.png
