###
@file

## Responsibilities
- configure karma for mocha testing

Scaffolded with generator-microjs v0.0.12

@author Daniel Lamb <dlamb.open.source@gmail.com>
###

module.exports = (config) ->
  config.set
    ###
    Path used to resolve file paths
    ###
    basePath: '../'

    ###
    Test results reporter to use:
    dots, progress, nyan, story, coverage etc.
    ###
    reporters: ['dots']

    ###
    Test pre-processors
    ###
    preprocessors:
      'vidbg.coffee': ['coffee']
      'test/spec/*.spec.coffee': ['coffee']

    ###
    Locally installed browsers
    Chrome, ChromeCanary, PhantomJS, Firefox, Opera, IE, Safari, iOS etc.
    ###
    browsers: ['PhantomJS']

    ###
    Enable / disable watching file and executing tests whenever any file changes
    ###
    autoWatch: false

    ###
    Continuous Integration mode: if true, it capture browsers, run tests and exit
    ###
    singleRun: true

    ###
    Report slow running tests, time in ms
    ###
    reportSlowerThan: 250

    ###
    If browser does not capture in given timeout [ms], kill it
    Increasing timeout in case connection in Travis CI is slow
    ###
    captureTimeout: 100000

    ###
    Logging Level:
    DISABLE, ERROR, WARN, INFO, DEBUG
    ###
    logLevel: 'INFO'

    ###
    Test framework to use:
    jasmine, mocha, qunit etc.
    ###
    frameworks: ['mocha', 'chai', 'sinon']