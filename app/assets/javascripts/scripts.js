$(document).ready(function() {
  $('.navigate').on('click',function(e){
    e.preventDefault();
    $target = $($(this).attr('href'));
    scrollTo($target);
  });

  $('.waypoint-nav').waypoint(function(){
    $('#primary-navigation').toggleClass('fixed');
  },{offset:'100px'});

  $('.waypoint-nav').waypoint(function(){
    $('#toggle-logo').toggleClass('visuallyhidden');
  },{offset:'100px'});

  var $links = $('#links');

    $('#toggle-menu').on('click',function(e){
      e.preventDefault();

      $(this).toggleClass('x');

      $links.toggleClass('show');

    });

  $(document).keyup(function(e) {
    if (e.keyCode == 27) {
      window.document.location = "/login";
    }
  })
});
