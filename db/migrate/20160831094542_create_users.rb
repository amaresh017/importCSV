class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user
      t.float :latitude
      t.float :longitude
      t.string :product
      t.string :category
      t.float :price

      t.timestamps
    end
  end
end
