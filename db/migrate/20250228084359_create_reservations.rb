class CreateReservations < ActiveRecord::Migration[8.0]
  def change
    create_table :reservations do |t|
      t.string :guest_name
      t.decimal :party_size
      t.boolean :cancelled

      t.timestamps
    end
  end
end
