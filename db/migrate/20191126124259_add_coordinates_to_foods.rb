class AddCoordinatesToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :latitude, :float
    add_column :foods, :longitude, :float
  end
end
