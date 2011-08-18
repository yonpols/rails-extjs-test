# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
remove_fields = (link) ->
  $(link).prev().val 1
  $(link).parent().hide()

add_fields = (link, association) ->
  new_id = new Date().getTime();
  regexp = new RegExp("new_" + association, "g")
  html = $('div#new_'+association).html()
  $(link).before '<div class="'+$('div#new_'+association).attr('class')+'">'+html.replace(regexp, new_id)+'</div>'
  $('div.contact a.remove_fields').click ->
    remove_fields this
    false

jQuery ->
  $('div.contact a.remove_fields').click ->
    remove_fields this
    false

  $('a.add_contact').click ->
    add_fields this, 'contacts'
    false

  $('div#new_contacts').hide()
