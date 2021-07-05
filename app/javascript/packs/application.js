// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "bootstrap"

$(document).on('change', '#patient_state', function () {
  const url = $(this).data('change-url') + `?state=${$(this).find('option:selected').val()}`;
  $.ajax({
    url: url,
    success: function() {
      console.log('success');
    },
    error: function() {
      console.log('failed');
    }
  });
});

$(document).on('change', '.product-select', function () {
  ['name', 'category', 'ndc', 'qty', 'price', 'instructions'].forEach(e => {
    $(`#patient_product_attributes_${e}`).val($(this).closest('.row').find(`.product-${e}`).text());
  });
});