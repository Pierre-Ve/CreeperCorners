class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :build, null: false, foreign_key: true
      t.date :start_date
      t.string :status

      t.timestamps
    end
  end
end
