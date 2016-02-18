

function myFunction() {
    alert("I am an alert box!");
}

//  to toggle images; appear to scroll


// jquery plugin targets the container with our images
// $('#masonry-container').imagesLoaded( function() {
// $('#masonry-container').masonry({
// itemSelector: '.box',
// columnWidth: 100,
// isAnimated: !Modernizr.csstransitions,
// isRTL: true
// });
// });

$(function(){
 
    var $container = $('#masonry-container');
  
    $container.imagesLoaded( function(){
  		$container.masonry({                           
        itemSelector : '.box'
      });
    });
  
  });
	
	$(document).ready(function(){
  $(".box").click(function(){
    $(".box").slideToggle();
  });
});

