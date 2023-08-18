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
      // The 'hiddenContent' class is present in books, meaning it's currently hidden
      if(booksContent.classList.contains('hiddenContent')){
        storesContent.classList.toggle('hiddenContent');
      }
      else {
        booksContent.classList.toggle('hiddenContent');
        storesContent.classList.toggle('hiddenContent');
      }
     
    }
    if (contentType == 'books') {
      // The 'hiddenContent' class is present in books, meaning it's currently hidden
      if(storesContent.classList.contains('hiddenContent')){
        booksContent.classList.toggle('hiddenContent');
      }
      else {
        storesContent.classList.toggle('hiddenContent');
        booksContent.classList.toggle('hiddenContent');
      }
    }

  }

