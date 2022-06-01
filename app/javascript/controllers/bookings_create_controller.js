import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button"]

  connect(){
    console.log("Hi!")
  }

  changeButton() {
    this.buttonTarget.innerText = "Booked!"
  }
}
