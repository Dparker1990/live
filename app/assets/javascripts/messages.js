$(document).ready(function(){
  var source = new EventSource('/messages/notify');
  source.addEventListener('messages', function(e){
    $('#messages').prepend($('<p/>').text(e.data));
  });
});
