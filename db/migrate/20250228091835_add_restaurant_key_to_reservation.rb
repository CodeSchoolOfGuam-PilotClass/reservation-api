class AddRestaurantKeyToReservation < ActiveRecord::Migration[8.0]
  def change
    add_column :reservations, :restaurant_id, :integer
  end
end
