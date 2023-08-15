function loadContent(contentType) {
    $.ajax({
      url: '/load_content',
      method: 'GET',
      data: { content_type: contentType },
      success: function(response) {
        $('.container-for-content').html(response);
      }
    });
  }