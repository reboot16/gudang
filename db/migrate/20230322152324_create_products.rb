class CreateProducts < ActiveRecord::Migration[7.0]
  def up
    create_table :products do |t|
      t.string  :product_name
      t.string  :product_code
      t.string  :description
      t.integer :price
      t.integer :weight
      t.string  :condition

      t.timestamps
    end
  end

  def def down 
    drop_table :products
  end
end
