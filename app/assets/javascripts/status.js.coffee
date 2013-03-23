window.myFnFilter ||= {}
$ ->
  myFnFilter.filters =
    filterChildrenByAttributesValue: (text, attributes...) ->
      @.children().hide()
      @.children(":regex(#{attribute}, #{text})").show() for attribute in attributes
      @.children().show() if text == ""

  $.fn.extend(myFnFilter.filters)
            
  $("#omnisearch").on "keyup", ->
    $(".table tbody").filterChildrenByAttributesValue($(@).val(), "data-status", "data-email", "data-name")

  $("#reload").on "click", (e) ->
    location.reload()