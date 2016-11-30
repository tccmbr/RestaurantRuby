class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :message, limit: 50
      t.string :author, limit: 20
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
