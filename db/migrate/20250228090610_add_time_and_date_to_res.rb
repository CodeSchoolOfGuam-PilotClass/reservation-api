class AddTimeAndDateToRes < ActiveRecord::Migration[8.0]
  def change
    add_column :reservations, :time, :integer
    add_column :reservations, :date, :string
  end
end
