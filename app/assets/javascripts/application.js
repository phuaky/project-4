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
// = require jquery
// = require jquery_ujs
// = require turbolinks
// = require semantic-ui
// = require_tree .

$(document).on('turbolinks:load', function () {
  $('.ui.dropdown')
    .dropdown();

  $('.addToCart').click(function () {
    $('#cartModal'+this.getAttribute('value')).modal({inverted: true}).modal('show');
  });

if(typeof content !=="undefined") {
  $('.ui.search')
    .search({
      source: content
    });
}

  $('.ui.modal')
    .modal({
      allowMultiple: false
    });

if ($("#log-in").length ) {
  $('.ui.modal.login').modal('attach events', '#log-in');
  $('#sign-up-modal').modal('attach events', '#sign-up');
}

  $('.ui.menu a.item')
    .on('click', function () {
      $(this)
        .addClass('active')
        .siblings()
        .removeClass('active');
    });

  $('.menu .item')
    .tab();

  var $form = $('#payment-form');
  $form.submit(function (event) {
    // Disable the submit button to prevent repeated clicks:
    $form.find('.submit').prop('disabled', true);

    // Request a token from Stripe:
    Stripe.card.createToken($form, stripeResponseHandler);

    // Prevent the form from being submitted:
    return false;
  });

  var wrapper = $('#addFishForm'); // Fields wrapper
  var add_button = $('#addFish'); // Add button ID
  var fishForm = $('#fishFormTemplate');

  add_button.click(function (e) { // on add input button click

    e.preventDefault();

    $(wrapper).prepend(fishForm[0].innerHTML); // add input box
    $('.ui.dropdown')
      .dropdown();
  });

  $(wrapper).on('click', '.remove_field', function (e) { // user click on remove text
    e.preventDefault(); $(this).parent('div').remove();
  });

  $('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade')
    ;
  })
;
  // setInterval(function() {
  //   $.ajax({
  //     method: "GET",
  //     url: "/messages",
  //     // data: {message: message},
  //     success: function(data) {
  //       // console.log(data);
  //       $('#messages-board').prepend('hello')
  //     },
  //     error: function(error) {
  //       console.log("Error:", error)
  //     }
  //   });
  //
  // }, 2000); //5 seconds

}); // END of Document Ready

function stripeResponseHandler (status, response) {
  // Grab the form:
  var $form = $('#payment-form');

  if (response.error) { // Problem!

    // Show the errors on the form:
    $form.find('.payment-errors').text(response.error.message);
    $form.find('.submit').prop('disabled', false); // Re-enable submission

  } else { // Token was created!

    // Get the token ID:
    var token = response.id;

    // Insert the token ID into the form so it gets submitted to the server:
    $form.append($('<input type="hidden" name="stripeToken">').val(token));

    // Submit the form:
    $form.get(0).submit();
  }
}
