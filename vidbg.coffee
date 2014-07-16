###*
  @file vidbg is a 0.3kb micro-library for embedding video backgrounds into web pages.
  Scaffolded with generator-microjs v0.0.12
  @author Daniel Lamb <dlamb.open.source@gmail.com>
###
vidbg = (element, sources, overlay) ->
  container = item = undefined
  html = []
  index = sources.length

  # check if the device supports HTML5 video
  return unless document.createElement('video').canPlayType

  # start video tag
  html.push '<video autoplay="true" loop="loop" muted="muted" volume="0">'

  # order matters in some browsers
  sources.reverse()

  # build video tag source(s) html
  while index--
    item = sources[index]
    html.push '<source src="', item.src, '" type="video/', item.type, '" />'

  # end video tag
  html.push '</video>'

  # append optional overlay element
  html.push '<div class="vidbg-overlay"></div>' if overlay

  # create video DOM element
  container = document.createElement('div')
  container.setAttribute 'class', 'vidbg'

  # set the container HTML
  container.innerHTML = html.join('')

  # append container to the provided element
  element.appendChild container