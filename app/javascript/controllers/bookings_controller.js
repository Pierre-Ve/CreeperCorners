import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookings"
export default class extends Controller {
  static targets = ["days", "priceTag", "prixTotal"]
  connect() {

  }
  getDates(event){
    const dates = event.currentTarget.value
    const startDay = new Date (dates.split(' to ')[0])
    const endDay = new Date (dates.split(' to ')[1])
    const dayNumber = Math.floor((endDay - startDay)/1000/60/60/24)
    this.prixTotalTarget.innerText = parseInt(this.priceTagTarget.attributes.price.value) * dayNumber
    this.daysTarget.innerText = dayNumber
  }

}
