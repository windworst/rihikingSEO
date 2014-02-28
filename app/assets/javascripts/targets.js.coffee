# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

errorMessage =
  empty: 'Can\' be blank'
  maxLength: 'Too long'
rules =
  name:
    identifier: 'target_name'
    rules: [
      { type: 'empty', prompt: errorMessage.empty }
      { type: 'maxLength[255]', prompt: errorMessage.maxLength }
    ]
  url:
    identifier: 'target_url'
    rules: [
      { type: 'empty', prompt: errorMessage.empty }
      { type: 'url', prompt: 'is not url' }
    ]
settings =
  inline: true
  on:     'blur'

# $ ->
#   $targetForm = jQuery('.ui.form')
#   $targetForm.form(rules, settings)
$(window).bind('page:change', -> jQuery('.target-form.ui.form').form(rules, settings))
