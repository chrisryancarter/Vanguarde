jQuery(function( $ ) {
  $( "#carousel1" ).rcarousel({
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

  $( "#carousel2" ).rcarousel({
    auto: {
      enabled: true,
      interval: 3000,
      direction: "prev"
    },
      width: 1058,
      height: 794,
      visible: 1,
      step: 1,
      orientation: "vertical",
 
  });
  		
});
