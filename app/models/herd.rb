class Herd < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :goat_number, presence: true
  validates :address, presence: true
  validates :about, presence: true
  has_many :bookings,  dependent: :destroy
  belongs_to :user
  has_one_attached :photo
end
