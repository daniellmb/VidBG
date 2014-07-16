###
@file

## Responsibilities
- unit test vidbg.coffee

Scaffolded with generator-microjs v0.0.12

@author Daniel Lamb <dlamb.open.source@gmail.com>
###

describe 'vidbg.coffee', ->
  elm = container = sources = stubCreate = sandbox = undefined
  beforeEach ->
    # mock the element to append the video to
    elm = {}

    # mock element container
    container = {}

    # mock video sources
    sources = []

    # create a sandbox
    sandbox = sinon.sandbox.create()

    # stub some methods
    stubCreate = sandbox.stub(document, "createElement")
    elm.appendChild = sinon.stub()

  # stub some methods
  afterEach ->
    # restore the environment as it was before
    sandbox.restore()

  it 'should have a working test harness', ->
    # arrange
    # act
    # assert
    expect(yes).to.not.equal no

  it 'should exist', ->
    # arrange
    # act
    # assert
    expect(typeof vidbg).to.equal 'function'

  describe 'when HTML5 video not supported', ->
    beforeEach ->
      # set document create video element returns
      stubCreate.onCall(0).returns {}

    it 'should do nothing', ->
      # arrange
      # act
      vidbg elm, sources
      # assert
      expect(elm.appendChild.called).to.equal no

  describe 'when HTML5 video is supported', ->
    beforeEach ->
      # stub container methods
      container.setAttribute = sandbox.stub()

      # set document create video element returns
      stubCreate.onCall(0).returns canPlayType: yes
      stubCreate.onCall(1).returns container

      # add mock video sources
      sources.push
        src: 'vid-src'
        type: 'vid-type'

    describe 'video tag', ->
      it 'should set autoplay to true', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        expect(container.innerHTML).to.contain 'autoplay="true"'

      it 'should set loop to loop', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        expect(container.innerHTML).to.contain 'loop="loop"'

      it 'should set muted to muted', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        expect(container.innerHTML).to.contain 'muted="muted"'

      it 'should set volume to 0', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        expect(container.innerHTML).to.contain 'volume="0"'

      it 'should append the video sources', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        expect(container.innerHTML).to.contain '<source src="'

    describe 'source tag(s)', ->
      it 'should set the video source', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        expect(container.innerHTML).to.contain 'src="vid-src"'

      it 'should set the video type', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        expect(container.innerHTML).to.contain 'type="video/vid-type"'

    describe 'video container', ->
      it 'should set the class attribute to vidbg', ->
        # arrange
        # act
        vidbg elm, sources
        # assert
        assert container.setAttribute.calledWith('class', 'vidbg')

      it 'should append the container to the provided element', ->
        # arrange
        # act
        vidbg elm, sources

        # assert
        assert elm.appendChild.calledWith(container)

    describe 'video overlay', ->
      it 'should append an optional overlay element', ->
        # arrange
        # act
        vidbg elm, sources, yes
        # assert
        expect(container.innerHTML).to.contain '<div class="vidbg-overlay"></div>'