$ ->
  $(".insect-img").hover ->
    $(@).addClass "swing"
  ,->
    $(@).removeClass "swing"
