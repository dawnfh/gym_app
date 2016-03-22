
// jquery masonry plugin targets the container with the images

var ready;

ready = $(function(){

  var $container = $('#masonry-container');

  $container.imagesLoaded( function(){
		$container.masonry({   
     itemSelector : '.box'
    });
  });
});

// sliding images on landing page 

$(document).on("page:change", function(){
  $("#masonry-container").click(function(){
    $("").slideToggle("slow");
    });
});

// bs lightbox image gallery

$(document).on("page:change", function() {
  $('.thumbnail').click(function(){
      $('.modal-body').empty();

    var title = $(this).parent('a').attr("title");
    $('.modal-title').html(title);
    $($(this).parents('div').html()).appendTo('.modal-body');
    $('#myModal').modal({show:true});
  });
});





 