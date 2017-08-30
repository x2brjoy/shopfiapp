class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.string :email
      t.string :name
      t.integer :shopify_order_id, limit: 8
      t.datetime :order_date
      t.float :total
      t.integer :line_item_count, limit: 8

      t.timestamps
    end
  end
end
