// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

jQuery(function ($) {
  $('#addNewMed').click(function() {
    $('#medicines').append($('#new_med_form').html());
  });

  $(document).on('change', 'select', function() {
    $(this.parentElement).children("p").text(this.selectedOptions[0].attributes['score'].value);
  });

  $(document).on('change', 'select', function() {
    var total = 0;
    $('.score').each( function(index, value) {
      total = total + parseInt(value.textContent);
    })
    $('.total').text(total);
  });

});

(function() {
  this.removeChoice = function(element) {
    event.preventDefault();
    element.closest(".medicine-line").remove();
    var total = 0;
    $('.score').each( function(index, value) {
      total = total + parseInt(value.textContent);
    })
    $('.total').text(total);
  };

}).call(this);