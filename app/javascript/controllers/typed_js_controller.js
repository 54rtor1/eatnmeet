import { Controller } from "@hotwired/stimulus"

import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["wherever you are"],
      typeSpeed: 120,
      loop: true
    });
  }
}
