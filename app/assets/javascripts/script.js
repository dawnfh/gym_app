


// jquery masonry plugin targets the container with the images


$(function(){

  var $container = $('#masonry-container');

  $container.imagesLoaded( function(){
		$container.masonry({                           
      itemSelector : '.box'
    });
  });
});

// sliding images on landing page 

	$(document).ready(function(){
    $("#masonry-container").click(function(){
      $(".box").slideToggle("slow")  
    });
});

 