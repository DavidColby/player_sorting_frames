import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "form" ]

  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      // This needs a polyfill for Safari and IE11 support. Alternatively, use Rails/ujs:
      // Rails.fire(this.formTarget, 'submit')
      this.formTarget.requestSubmit()
    }, 200)
  }
}
