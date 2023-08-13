// app/assets/javascripts/logout.js
function logout() {

    // Retrieve the CSRF token from the meta tag
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

    // Send a DELETE request to the /logout endpoint
    fetch('/logout', {
      method: 'DELETE',
      headers: {
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      }
    })
    .then(response => {
      if (response.ok) {
        alert('Logged out successfully');
        // Optionally, you can redirect the user after successful logout
        window.location.href = '/';
      } else {
        alert('Logout failed');
      }
    })
    .catch(error => {
      console.error('Logout failed', error);
    });
  }
  
  