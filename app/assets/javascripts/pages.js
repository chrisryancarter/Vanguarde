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

function generatePages() {
          var _total, i, _link;
          
          _total = $( "#carousel" ).rcarousel( "getTotalPages" );
          
          for ( i = 0; i < _total; i++ ) {
            _link = $( "<a href='#'></a>" );
            
            $(_link)
              .bind("click", {page: i},
                function( event ) {
                  $( "#carousel" ).rcarousel( "goToPage", event.data.page );
                  event.preventDefault();
                }
              )
              .addClass( "bullet off" )
              .appendTo( "#pages" );
          }
          
          // mark first page as active
          $( "a:eq(0)", "#pages" )
            .removeClass( "off" )
            .addClass( "on" )
            .css( "background-image", "url(http://gentle-plains-2470.herokuapp.com/assets/work/page-on.png)" );

        }

        function pageLoaded( event, data ) {
          $( "a.on", "#pages" )
            .removeClass( "on" )
            .css( "background-image", "url(http://gentle-plains-2470.herokuapp.com/assets/work/page-off.png)" );

          $( "a", "#pages" )
            .eq( data.page )
            .addClass( "on" )
            .css( "background-image", "url(http://gentle-plains-2470.herokuapp.com/assets/work/page-on.png)" );
        }       

        $( "#carousel" ).rcarousel({
          auto: {enabled: true},
          start: generatePages,
          visible: 1,
          step: 1,
          width: 1058,
          height: 794,
          pageLoaded: pageLoaded
        });
        
        $( ".bullet" )
          .hover(
            function() {
              $( this ).css( "opacity", 0.7 );
            },
            function() {
              $( this ).css( "opacity", 1.0 );
            }
          );          
  		
});
