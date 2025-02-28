class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true

  has_many :reservations

  before_save :capitalize_name

  private

  def capitalize_name
    name.capitalize
  end
end
