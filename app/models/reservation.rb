class Reservation < ApplicationRecord
  validates :guest_name, presence: true
  validates :party_size, presence: true

  belongs_to :restaurant
end
