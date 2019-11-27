class AddRatingToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :rating, :integer
  end
end
