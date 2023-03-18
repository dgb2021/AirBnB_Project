class AddColumnsToFlat < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :address, :string
    add_column :flats, :description, :text
    add_column :flats, :number_of_guests, :integer
    add_column :flats, :name, :string
  end
end
