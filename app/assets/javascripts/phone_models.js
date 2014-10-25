$(function() {
  $('#new_phone_model').on('ajax:error', function(xhr, status, error) {
    alert(status.responseJSON)
  });

  $('#new_phone_model').on('ajax:success', function(xhr, status, error) {
    alert("New phone model created")
  });
});

//  console.log($('#new_phone_model'));