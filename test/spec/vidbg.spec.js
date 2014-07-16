/**
 * @file
 *
 * ### Responsibilities
 * - unit test vidbg.js
 *
 * Scaffolded with generator-microjs v0.0.12
 *
 * @author Daniel Lamb <dlamb.open.source@gmail.com>
 */
'use strict';

/*global vidbg*/
describe('vidbg.js', function () {
  var elm, container, sources, stubCreate, sandbox;

  beforeEach(function () {
    // mock the element to append the video to
    elm = {};

    // mock element container
    container = {};

    // mock video sources
    sources = [];

    // create a sandbox
    sandbox = sinon.sandbox.create();

    // stub some methods
    stubCreate = sandbox.stub(document, 'createElement');
    elm.appendChild = sinon.stub();
  });

  afterEach(function () {
    // restore the environment as it was before
    sandbox.restore();
  });

  it('should have a working test harness', function () {
    // arrange
    // act
    // assert
    expect(true).to.not.equal(false);
  });

  it('should exist', function () {
    // arrange
    // act
    // assert
    expect(typeof vidbg).to.equal('function');
  });

  describe('when HTML5 video not supported', function () {
    beforeEach(function () {
      // set document create video element returns
      stubCreate.onCall(0).returns({});
    });

    it('should do nothing', function () {
      // arrange
      // act
      vidbg(elm, sources);
      // assert
      expect(elm.appendChild.called).to.equal(false);
    });
  });

  describe('when HTML5 video is supported', function () {
    beforeEach(function () {
      // stub container methods
      container.setAttribute = sandbox.stub();

      // set document create video element returns
      stubCreate.onCall(0).returns({ canPlayType: true });
      stubCreate.onCall(1).returns(container);

      // add mock video sources
      sources.push({src: 'vid-src', type: 'vid-type'});
    });

    describe('video tag', function () {

      it('should set autoplay to true', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        expect(container.innerHTML).to.contain('autoplay="true"');
      });

      it('should set loop to loop', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        expect(container.innerHTML).to.contain('loop="loop"');
      });

      it('should set muted to muted', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        expect(container.innerHTML).to.contain('muted="muted"');
      });

      it('should set volume to 0', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        expect(container.innerHTML).to.contain('volume="0"');
      });

      it('should append the video sources', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        expect(container.innerHTML).to.contain('<source src="');
      });

    });

    describe('source tag(s)', function () {

      it('should set the video source', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        expect(container.innerHTML).to.contain('src="vid-src"');
      });

      it('should set the video type', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        expect(container.innerHTML).to.contain('type="video/vid-type"');
      });

    });

    describe('video container', function () {
      it('should set the class attribute to vidbg', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        assert(container.setAttribute.calledWith('class', 'vidbg'));
      });

      it('should append the container to the provided element', function () {
        // arrange
        // act
        vidbg(elm, sources);
        // assert
        assert(elm.appendChild.calledWith(container));
      });

    });

    describe('video overlay', function () {
      it('should append an optional overlay element', function () {
        // arrange
        // act
        vidbg(elm, sources, true);
        // assert
        expect(container.innerHTML).to.contain('<div class="vidbg-overlay"></div>');
      });

    });
  });
});