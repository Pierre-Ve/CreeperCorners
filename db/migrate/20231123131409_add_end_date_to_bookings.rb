class AddEndDateToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :end_date, :date
  end
end
