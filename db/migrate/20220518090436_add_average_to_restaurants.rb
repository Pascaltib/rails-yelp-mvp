class AddAverageToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :average, :integer
  end
end
