
$(function () {
  // Sorting and pagination links.

  $('#gymplaces th a, #gymplaces .pagination a').live('click',
    function () {
      $.getScript(this.href);
      return false;
    }
  );
  
  // Search form.

  $('#gyplaces_search').submit(function () {
    $.get(this.action, $(this).serialize(), null, 'script');
    return false;
  });
});