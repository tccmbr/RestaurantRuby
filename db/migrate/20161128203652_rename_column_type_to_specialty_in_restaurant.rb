class RenameColumnTypeToSpecialtyInRestaurant < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :type, :specialty
  end
end
