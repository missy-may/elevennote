class Note
  constructor: ->
    @handleClicks()
    @resizeBootsy()

  handleClicks: ->
    $('#notes > li').click (ev) ->
      ev.preventDefault()
      location.href = $(this).data 'url'

  resizeBootsy: ->
    $(window).resize( ->
      $('.bootsy_text_area').height $(window).height() - 210
    ).trigger 'resize'

$ ->
  new Note()
  