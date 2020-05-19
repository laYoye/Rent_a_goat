class Booking < ApplicationRecord
  validates :booking_date, :confirmation, presence: true
  belongs_to :herd
  belongs_to :user
end
