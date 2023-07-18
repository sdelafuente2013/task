import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    this.element.style.transform = "translate(-50%, 0)";
    this.fadeOut()
  }

  fadeOut() {
    setTimeout(() => {
      this.element.style.transform = "translate(-50%, 100vh)";
      this.element.style.opacity = 0
    }, 2000)
  }
}
