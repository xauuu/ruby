import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
require('jquery')
import "bootstrap"
import "@fortawesome/fontawesome-free/js/all";
document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
});
import '../stylesheets/application';
require('admin-lte');
Rails.start()
Turbolinks.start()
ActiveStorage.start()