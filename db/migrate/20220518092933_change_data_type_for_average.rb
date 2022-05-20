class ChangeDataTypeForAverage < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :average, :float
  end
end
