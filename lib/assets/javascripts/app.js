//= require twitter/typeahead

jQuery(function ($) {
  $('#addNewMed').click(function() {
    destroy_typeahead($('.js-meds-autocomplete'));
    add_new_med(1)
    instantiate_typeahead($('.js-meds-autocomplete'));
  });

  $('#resetMeds').click(function() {
    destroy_typeahead($('.js-meds-autocomplete'));
    remove_all_meds();
    add_new_med(3);
    instantiate_typeahead($('.js-meds-autocomplete'));
  });

  $(document).on(['typeahead:initialized',
    'typeahead:initialized:err',
    'typeahead:selected',
    'typeahead:autocompleted',
    'typeahead:cursorchanged',
    'typeahead:opened',
    'typeahead:closed',
    '.meds-textbox'].join(' '), function(x) {
      var inputField = $(x.target);
      var searchTerm = inputField.val();
      var result = medsTypeahead.all().filter(function(obj) {
        return obj.name == searchTerm;
      });
      // If it is not found, create an empty result
      if (result.length == 0) {
        result[0] = { score: 0, medicine: "", brands: "" }
      };
      var fields = ['score', 'medicine', 'brands'];
      for(var i=0; i<fields.length; i++){

        inputField.closest(".row").find("." + fields[i])[0].textContent = result[0][fields[i]];

        if(fields[i] == "score") {
          var number = convert_to_text(result[0][fields[i]]);
          var numberElement = $(inputField.closest(".row").find("." + fields[i])[0]);
          numberElement.removeClass('number--zero').removeClass('number--one').removeClass('number--two').removeClass('number--three').addClass('number--' + number);
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

  // instantiate the typeahead UI on load
  instantiate_typeahead($('.js-meds-autocomplete'))
});

var medsTypeahead = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  prefetch: {
    url: "/welcome/autocomplete",
    cache: true,
    ttl: 86400000
  }
});

function instantiate_typeahead(textboxes) {
  textboxes.typeahead(null, {
    displayKey: 'name',
    source: medsTypeahead.ttAdapter()
  });
}

function destroy_typeahead(textboxes) {
  textboxes.typeahead('destroy');
}

(function() {
  this.removeChoice = function(element) {
    event.preventDefault ? event.preventDefault() : (event.returnValue = false);
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
    var numberList = {0: "zero", 1: "one", 2: "two", 3: "three"};
    return numberList[number];
  }
  else {
    return "three"
  }
}

function add_new_med(count) {
  count = typeof count === 'undefined' ? 1 : count;
  var foo = new Array(count);
  for(var i=0; i<foo.length; i++){
    var medsElement = document.getElementById('medicines');
    medsElement.appendChild(document.getElementById('new_med_form').children[0].cloneNode(true));
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
};
