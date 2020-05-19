class Herd < ApplicationRecord
  validates :name, presence: true
  validates :goat_number, presence: true
  validates :address, presence: true
  validates :about, presence: true
end
