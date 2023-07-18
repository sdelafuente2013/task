import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    this.fadeOut()
  }

  fadeOut() {
    setTimeout(() => {
      this.element.style.opacity = 0
    }, 2000)
  }
}
