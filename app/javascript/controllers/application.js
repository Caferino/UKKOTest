// app/javascript/packs/application.js
// Since ruby 6.x "packs" doesn't exist anymore

// Import mdb-ui-kit JavaScript
import 'mdb-ui-kit/js/mdb.min.js';

import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
