import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()


export default class extends Controller {
   static values = {
    bookingDates: String
   }
  connect() {
    console.log(this.bookingDatesValue)
    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d",
      disable: JSON.parse(this.bookingDatesValue)
    })
  }
}
