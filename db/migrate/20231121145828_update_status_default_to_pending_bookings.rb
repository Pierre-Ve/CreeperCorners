class UpdateStatusDefaultToPendingBookings < ActiveRecord::Migration[7.1]
  def change
    change_column_default :bookings, :status, from: nil, to: 0
  end
end
