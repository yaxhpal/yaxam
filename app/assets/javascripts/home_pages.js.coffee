# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    $placeholder = $('.placeholder')
    $('#summernote').summernote
      width: 702
      height: 400
      codemirror:
        mode: 'text/html'
        htmlMode: true
        lineNumbers: true
        theme: 'yeti'
      callbacks:
        onInit: ->
          $placeholder.show()
          return
        onFocus: ->
          $placeholder.hide()
          return
        onBlur: ->
          $self = $(this)
          setTimeout (->
            if $self.summernote('isEmpty') and !$self.summernote('codeview.isActivated')
              $placeholder.show()
            return
          ), 300
          return

$(document).on 'show.bs.modal', (event) ->
  debugger
  $('#mathcontent').html($('#summernote').summernote('code'))
  MathJax.Hub.Queue(["Typeset",MathJax.Hub, 'mathcontent'])