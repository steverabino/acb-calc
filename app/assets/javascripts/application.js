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
//= require bootstrap-sprockets
//= require cocoon

jQuery(function ($) {
  $('#addNewMed').click(function() {
    $('#medicines').append($('#new_med_form').html());
  });

  $('#resetMeds').click(function() {
    remove_all_meds();
    add_new_med(3);
  });

  $(document).on('change', 'select', function() {
    var fields = ['score', 'medicine', 'brands'];
    for(var i=0; i<fields.length; i++){
      $(this.closest(".row").getElementsByClassName(fields[i])[0]).text(this.selectedOptions[0].attributes[fields[i]].value);
      if(fields[i] == "score") {
        number = convert_to_text(this.selectedOptions[0].attributes[fields[i]].value)
        $(this.closest(".row").getElementsByClassName(fields[i])[0]).removeClass('number--zero').removeClass('number--one').removeClass('number--two').removeClass('number--three').addClass('number--' + number);
      }
    }
    refresh_all_scores();
  });

  $(document).on('click', '.add_fields', function() {
    document.getElementById('no_fields').style.display = 'none';
  });

  $(document).on('click', '.remove_fields', function() {
    if (document.getElementsByClassName('input-group').length <= 1) {
      document.getElementById('no_fields').style.display = 'block';
    }
  });
});

(function() {
  this.removeChoice = function(element) {
    event.preventDefault();
    element.closest(".row").remove();
    refresh_all_scores();
  };
}).call(this);

function remove_all_meds() {
  document.getElementById('medicines').innerHTML = "";
  refresh_all_scores();
}

function convert_to_text(number) {
  if(number < 4) {
    var number_list = {0: "zero", 1: "one", 2: "two", 3: "three"};
    return number_list[number];
  }
  else {
    return "three"
  }
}

function add_new_med(count) {
  var count = typeof count === 'undefined' ? 1 : count;
  var foo = new Array(count);
  for(var i=0; i<foo.length; i++){
    document.getElementById('medicines').append(document.getElementById('new_med_form').children[0].cloneNode(true));
  }
}

function refresh_all_scores() {
  var total = 0;
  $('.score').each(function(index, value) {
    total = total + parseInt(value.textContent);
  })
  number = convert_to_text(total);
  $('#total').text(total).removeClass('number--zero').removeClass('number--one').removeClass('number--two').removeClass('number--three').addClass('number--' + number);
  if (parseInt(document.getElementById('total').innerText) >= 3) {
    document.getElementById('high-risk-warning').style.display = 'table-cell';
    document.getElementById('high-risk-info').style.display = 'block';
  } else {
    document.getElementById('high-risk-warning').style.display = 'none';
    document.getElementById('high-risk-info').style.display = 'none';
  }
}
