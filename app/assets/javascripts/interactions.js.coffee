$ ->

  #In-page nav
  $('ul.sidenav li').click ->
    $(this).toggleClass('selected');
    $('ul.sidenav li').not(this).removeClass('selected');

  #Hamburger menu
  $("#hamburger").click ->
    $("body").toggleClass("menu-present")
    $("#hamburger-menu").toggleClass("visible")

  #Sticky elements
  $("#side_body").stick_in_parent offset_top: 60

  $("header#subhead").stick_in_parent offset_top: -60

  #Hide and show
  $(".archive-block").not(':eq(0)').slideUp()

  $(".archive-trigger").click ->
    $(this).next().slideToggle()

  #language switching
  $('body').addClass('arabic') if window.location.href.indexOf("/ar/") > -1

  #navigation nodes
  nodes = $('body nav.menu ul li')
  nodenames = ['mena', 'care', 'services', 'partnerships', 'knowledge', 'team']

  #quick hack for now
  $(nodes).each (i) ->
    $(this).attr "id", "page" + (i + 1)



  