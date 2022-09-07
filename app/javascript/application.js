// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { initFlatpickr } from "./plugins/flatpickr";

document.addEventListener("turbo:load", initFlatpickr)
// to show calendar when new-trip form is in edit mode or validations are not correct
document.addEventListener("turbo:render", initFlatpickr)
