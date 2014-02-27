# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
errorMessage =
  empty: 'Can\' be blank'

rules =
  name:
    identifier: 'target_name'
    rules: [
      type:   'empty'
      prompt: errorMessage.empty
    ]
settings =
  inline: true
  on:     'blur'

$ -> jQuery('.ui.form').form(rules, settings)

