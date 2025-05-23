import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static values = {
    disabledDates: Array
  }
  connect() {
    console.log("connected");


    flatpickr(this.element, {
      // enableTime: true,
      disable: this.disabledDatesValue
    });

    flatpickr(this.element, {
      // enableTime: true,
      disable: this.disabledDatesValue
    })


  }
}
