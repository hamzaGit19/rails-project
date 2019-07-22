# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#  $(document).ready(function(){ 
#     $('#characterLeft').text('140 characters left');
#     $('#message').keydown(function () {
#         var max = 140;
#         var len = $(this).val().length;
#         if (len >= max) {
#             $('#characterLeft').text('You have reached the limit');
#             $('#characterLeft').addClass('red');
#             $('#btnSubmit').addClass('disabled');            
#         } 
#         else {
#             var ch = max - len;
#             $('#characterLeft').text(ch + ' characters left');
#             $('#btnSubmit').removeClass('disabled');
#             $('#characterLeft').removeClass('red');            
#         }
#     });    
# }); 


addComment =
    
    # console.log("Hello I'm working.")
    userComment = document.getElementById("userComment").value;
	document.getElementById("ui-state-default").innerHTML = userComment;
