// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function() {
  $.ajax(function (data) {
    console.log(data);
  });

  $('#edit_ways_79').on('ajax:success', function(e, data, status, xhr) {
    $('.stopover-options').append(xhr.responseText);
    console.log('#stopover-options');
    $(this)[0].reset();
  });

  $('#ways_update').on('ajax:error', function(e, xhr, status, error) {
    alert(xhr.responseText);
  });
});