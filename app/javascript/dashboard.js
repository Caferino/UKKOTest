function loadContent(contentType) {
    $.ajax({
      url: '/load_content',
      method: 'GET',
      data: { content_type: contentType },
      success: function(response) {
        // $('.container-for-content').html(response);
        console.log("Successful Load.")
      }
    });
  }

  function load_content(contentType) {
    const storesContent = document.getElementById('container-for-stores');
    const booksContent = document.getElementById('container-for-books');

    if (contentType == 'stores') {
      booksContent.classList.add('hiddenContent'); // Hide the other content
      storesContent.classList.toggle('hiddenContent');
    } else if (contentType == 'books') {
      storesContent.classList.add('hiddenContent'); // Hide the other content
      booksContent.classList.toggle('hiddenContent');
    }

  }

