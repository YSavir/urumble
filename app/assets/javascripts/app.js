$(function() {
  console.log('ready');
$('.overlay').hide();
$('.add-buttons').hide();
  $('#add').on('click', function(e){
    e.preventDefault();
    console.log('click');
    $('.overlay').show();
    $('.add-buttons').show();
  })
});




