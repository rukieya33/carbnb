import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["startDate", "endDate"]
  static values = {
    disabledDates: Array
  }
  connect() {
    // this.disabledDatesValue we will convert string to date objects and add them to a disablesd dates array
    this.disabled = this.disabledDatesValue.map(date_array => ({
      from: date_array[0], to: date_array[1]
    }));

    console.log(this.disabled);

    flatpickr(this.startDate, {
      enableTime: true,
      disable: this.disabled
    });

    flatpickr(this.endDate, {
      enableTime: true,
      disable: this.disabled
    })


  }
}
