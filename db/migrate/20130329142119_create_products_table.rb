class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :name
      t.text    :description
      t.text    :image
      t.decimal :cost
      t.float   :latitude
      t.float   :longitude
      t.string  :address
      t.integer :user_id
      t.timestamps
    end
  end
end
