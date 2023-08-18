function loadContent(contentType) {
    $.ajax({
      url: '/load_content_vanilla',
      method: 'GET',
      data: { content_type: contentType },
      success: function(response) {
        $('.container-for-content').html(response);
      }
    });
  }

  function toggleContent() {
    const storesContent = document.getElementById('container-for-content');
    storesContent.classList.toggle('hiddenContent');
  }

