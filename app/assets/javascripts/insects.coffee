randomAnimation = () ->
  animations = [
    "swing"
    "bounce"
    "pulse"
    "rubberBand"
    "shake"
    "tada"
    "wobble"
    "jello"
  ]
  index = Math.floor(Math.random() * animations.length)
  animations[index]

$ ->
  animation = ""
  $(".insect-img").hover ->
    animation = randomAnimation()
    $(@).addClass animation
  ,->
    $(@).removeClass animation

  $(".main-title").hover ->
    animation = randomAnimation()
    $(@).addClass animation
  ,->
    $(@).removeClass animation

  radioanimation = "animated infinite swing"

  $("#sex-boxes").click ->
    $(@).find("input.sex-btn + .sex-image").removeClass radioanimation
    $(@).find("input.sex-btn:checked + .sex-image").addClass radioanimation
