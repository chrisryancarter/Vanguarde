jQuery(function( $ ) {
  $( "#carousel" ).rcarousel({
    auto: {
      enabled: true,
      interval: 3000,
      direction: "prev"
    },
    width: 514,
    height: 253,
    visible: 1,
    step: 1,
    orientation: "vertical",
  });

  $('#slides2').rcarousel({
    auto: {
      enabled: true,
      interval: 3000,
      direction: "next"
    }
  });
  
  $( "#ui-carousel-next" )
    .add( "#ui-carousel-prev" )
    .hover(
      function() {
        $( this ).css( "opacity", 0.7 );
      },
      function() {
        $( this ).css( "opacity", 1.0 );
      }
    );				
});
