# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$.fn.extend({
    setUpSlideshow: ->
        this.slick({
            arrows: false,
            dots: $(this).data("show-dots") ? false,
            autoplay: true,
            autoplaySpeed: $(this).data("autoplay-speed"),
            focusOnSelect: true,
            fade: true
        })
})


prepareEmail = (element) ->
    user = "ckg.hello"
    domain = "gmail.com"
    element.href = "mailto:" + user + "@" + domain   


runTwemoji = ->
    twemoji.parse(document.body) if $(".twemoji").length > 0


$(document).on "turbolinks:load", ->
    runTwemoji()
    $(".slideshow-container").setUpSlideshow()
    $("#email").click (e) -> prepareEmail(this)
