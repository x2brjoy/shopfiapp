class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.string :order_id
      t.integer :order_id, limit: 8
      t.integer :variant_id, limit: 8
      t.string :title
      t.integer :quantity
      t.float :price
      t.string :sku
      t.string :name

      t.timestamps
    end
    add_index :line_items, :order_id
    add_index :line_items, :variant_id
  end
end
