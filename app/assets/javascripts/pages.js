$(function(){
  // Set starting slide to 1
  var startSlide = 1;
  // Get slide number if it exists
  if (window.location.hash) {
    startSlide = window.location.hash.replace('#','');
  }
  // Initialize Slides
  $('#slides').slides({
    preload: true,
    preloadImage: 'images/slider/loading.gif',
    generatePagination: false,
    play: 5000,
    pause: 100,
    hoverPause: true,
  });

  $('#slides2').slides({
    preload: true,
    preloadImage: 'images/slider/loading.gif',
    generatePagination: true,
    play: 5000,
    pause: 100,
    hoverPause: true,
  });

});
