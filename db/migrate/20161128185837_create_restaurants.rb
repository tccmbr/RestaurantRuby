class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name, limit: 80
      t.string :type, limit: 30
      t.string :address, limit: 50
      t.string :neighborhood, limit: 30
      t.string :city, limit: 20
      t.string :state, limit: 2

      t.timestamps
    end
  end
end
