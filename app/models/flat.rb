class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :city, :address, :rooms, :number_of_guests, :price_per_night, presence: true
  
  validates :price_per_night, numericality: { only_integer: true}
  validates :number_of_guests, numericality: { only_integer: true}
  validates :rooms, numericality: { only_integer: true}
end
