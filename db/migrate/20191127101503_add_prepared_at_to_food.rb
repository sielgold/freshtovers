class AddPreparedAtToFood < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :freshness
    add_column :foods, :prepared_at, :datetime
  end
end
