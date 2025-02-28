class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true

  before_save :capitalize_name

  private

  def capitalize_name
    name.capitalize
  end
end
