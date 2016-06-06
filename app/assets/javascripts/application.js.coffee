//= require jquery
//= require jquery_ujs
//= require foundation

$ ->
  $(document).foundation()
  
ready = ->
  if $(".notice_message").length or $(".alert_message").length
    $(".flashing_messages").stop().fadeIn(200)
    setTimeout ->
      $(".flashing_messages").fadeOut 700 , ->
        $(this).empty()
    , 3000

$(document).ready(ready)
$(document).on "ajaxComplete" , ready
