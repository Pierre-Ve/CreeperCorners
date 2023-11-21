class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :build
  enum status: [ :pending, :confimed, :declined ]
end
