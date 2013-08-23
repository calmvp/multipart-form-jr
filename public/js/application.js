var IndexView = {
  init: function() {
  	$('.sign-up-button').on("click", function(e){
  	  e.preventDefault();
  	  var url = $('.sign-up-button').attr('href')
  	  $.get(url, function(response){
  	  	$('.sign_in_form').append(response)
  	  });
  	});
  }

}

$(document).ready(function() {
  IndexView.init();
});
