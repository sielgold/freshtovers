class AddPhotoToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :photo, :string
  end
end
