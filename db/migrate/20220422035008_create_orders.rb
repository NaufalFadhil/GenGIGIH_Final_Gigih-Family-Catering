class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.integer :total
      t.timestamp :order_date
      t.string :created_by

      t.timestamps
    end
  end
end
